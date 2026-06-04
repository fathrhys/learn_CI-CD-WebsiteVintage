# WebsiteVintage Deployment

Project ini dibuat untuk 1 server Ubuntu, tanpa Docker.

## Arsitektur

- Frontend: Vue 3 + Vite, dibuild jadi static files.
- Backend: PHP native, dijalankan lewat PHP-FPM.
- Database: MySQL/MariaDB.
- Web server: Nginx.
- Deployment: GitHub Actions dengan self-hosted runner di server Ubuntu yang sama.

## Komponen yang saling terhubung

- Frontend membaca URL API dari `Frontend/.env` atau fallback `VITE_API_URL`.
- Backend membaca kredensial MySQL dari `Backend/.env`.
- Backend menyimpan data user, produk, cart, likes, dan order ke MySQL.
- Upload foto profil disimpan di `Backend/uploads/users/`.

## File penting

- [Frontend/src/api.js](Frontend/src/api.js)
- [Backend/db.php](Backend/db.php)
- [Backend/logout.php](Backend/logout.php)
- [Backend/checkout.php](Backend/checkout.php)
- [.github/workflows/deploy.yml](.github/workflows/deploy.yml)
- [nginx/vintage.conf.example](nginx/vintage.conf.example)

## Setup Ubuntu

1. Install paket dasar.

```bash
sudo apt update
sudo apt install -y nginx mysql-server php-fpm php-mysql php-cli php-curl php-mbstring php-xml php-zip rsync unzip
```

2. Buat user database dan import schema.

```bash
mysql -u root -p
CREATE DATABASE vintage CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'vintage_user'@'localhost' IDENTIFIED BY 'change_me';
GRANT ALL PRIVILEGES ON vintage.* TO 'vintage_user'@'localhost';
FLUSH PRIVILEGES;
exit

mysql -u vintage_user -p vintage < /path/to/vintage.sql
```

3. Copy backend `.env`.

```bash
cp Backend/.env.example Backend/.env
```

4. Isi `Backend/.env` sesuai kredensial server.

5. Set frontend API URL.

- Jika frontend dan backend satu domain, pakai `/api`.
- Jika beda domain, pakai URL penuh seperti `https://api.domain.com`.

6. Build frontend.

```bash
cd Frontend
npm ci
npm run build
```

7. Deploy hasil build ke Nginx document root, misalnya `/var/www/vintage/public`.

8. Pastikan folder upload bisa ditulis.

```bash
sudo mkdir -p /var/www/vintage/backend/uploads/users
sudo chown -R www-data:www-data /var/www/vintage/backend/uploads
```

## Nginx

Gunakan file contoh di [nginx/vintage.conf.example](nginx/vintage.conf.example).

Struktur yang disarankan:

- `https://domain.com/` untuk frontend SPA.
- `https://domain.com/api/` untuk backend PHP.

## Self-hosted runner

Runner harus dipasang di Ubuntu server yang sama. Workflow deploy akan:

- checkout repo
- install dependency frontend
- build frontend
- sync backend ke `/var/www/vintage/backend`
- sync frontend build ke `/var/www/vintage/public`

Pastikan user runner punya akses tulis ke folder deploy.

## Checklist production

- `Backend/logout.php` memakai kolom `islogin` yang sesuai schema.
- `Backend/checkout.php` tidak lagi mengunci localhost.
- `Frontend/src/api.js` default ke `/api` untuk satu domain deployment.
- `.env` production tidak ikut ke Git.

import { ref } from 'vue'
import { BASE_URL } from '@/api'

const cartCount = ref(0)

export function useCart() {
  const fetchCartCount = async () => {
    try {
      const user = JSON.parse(localStorage.getItem('user') || '{}')
      if (!user.id) {
        cartCount.value = 0
        return
      }
      
      const response = await fetch(`${BASE_URL}/get_cart.php?user_id=${user.id}`)
      const data = await response.json()
      
      if (data.success) {
        cartCount.value = data.data ? data.data.length : 0
      } else {
        cartCount.value = 0
      }
    } catch (error) {
      console.error('Error fetching cart count:', error)
      cartCount.value = 0
    }
  }

  const incrementCartCount = () => {
    cartCount.value++
  }

  const decrementCartCount = () => {
    if (cartCount.value > 0) {
      cartCount.value--
    }
  }

  return {
    cartCount,
    fetchCartCount,
    incrementCartCount,
    decrementCartCount
  }
}

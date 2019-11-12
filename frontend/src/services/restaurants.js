import { http } from './config'

export default {
  listar: () => {
    return http.get('restaurants')
  },
  listarById: (id) => {
    return http.get(`restaurants/${id}`)
  }
}

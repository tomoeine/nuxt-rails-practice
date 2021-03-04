export class AuthorRepository {
  constructor($axios) {
    this.axios = $axios
  }

  index() {
    return this.axios.get('/authors');
  }

  create(params) {
    return this.axios.post('/authors', params)
  }
}

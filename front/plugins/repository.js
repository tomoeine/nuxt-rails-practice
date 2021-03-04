import { AuthorRepository } from '@/repositories/authorRepository.js'

export default function ({ $axios }, inject) {
  const author = new AuthorRepository($axios)
  const repositories = {
    author
  }
  inject('repositories', repositories)
}

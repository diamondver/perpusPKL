import axios from 'axios';

const apiClient = axios.create({
    baseURL: 'http://localhost:8000/api/',
    withCredentials: false,
    headers: {
        Accept: 'application/json',
        'Content-Type': 'application/json'
    },
});

export default {
    getBook() {
        return apiClient.get('book');
    },
    getGenre() {
        return apiClient.get('genre');
    },
    postBook(data) {
        return apiClient.post('book', data);
    },
    getStudent() {
        return apiClient.get('siswa');
    },
    postGenre(data) {
        return apiClient.post('genre', data);
    },
    getThreeData() {
        return apiClient.get('threeData');
    },
    putBook(id, data) {
        return apiClient.put('book/' + id, data);
    },
    deleteBook(id) {
        return apiClient.delete('book/' + id);
    }
}
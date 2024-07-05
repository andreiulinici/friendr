import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

export interface User {
  firstName: string;
  lastName: string;
  username: string;
  id: number;
}
export interface Post {
  author: string;
  title: string;
  description: string;
}
export interface UpdatePostLikes {
  username: string;
}

@Injectable({
  providedIn: 'root',
})
export class AppService {
  user!: User;
  readonly api = `${document.location.protocol}//${document.location.hostname}:3000/api`; // http://localhost:3000

  constructor(private http: HttpClient) {}

  getUserByUsername(username: string): Observable<any> {
    console.log(this.api);
    return this.http.get(`${this.api}/users/${username}`);
  }
  getPosts(): Observable<any> {
    return this.http.get(`${this.api}/posts`);
  }

  createUser(userBody: User): Observable<any> {
    return this.http.post(`${this.api}/users/`, userBody);
  }

  createPost(postBody: Post): Observable<any> {
    return this.http.post(`${this.api}/posts/`, postBody);
  }

  updatePostLikes(
    updatePostLikesBody: UpdatePostLikes,
    postId: string
  ): Observable<any> {
    return this.http.patch(
      `${this.api}/posts/${postId}/likes`,
      updatePostLikesBody
    );
  }
}

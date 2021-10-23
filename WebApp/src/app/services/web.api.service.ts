import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs/internal/Observable';
import { environment } from '../../environments/environment';
import { delay, timeout } from 'rxjs/operators';

@Injectable({
  providedIn: 'root',
})
export class WebApiCallService {
  constructor(private http: HttpClient) { }

  getBaseUrl() {
    return environment.baseApiURL;
  }

  get(
    route: string,
    additionalHeaders?: { key: string; value: string }[]
  ): Observable<any> {
    let headers = new HttpHeaders().set(
      'Content-Type',
      'application/json; charset=utf-8'
    );

    if (additionalHeaders && additionalHeaders.length) {
      additionalHeaders.forEach((header) => {
        headers = headers.set(header.key, header.value);
      });
    }

    const httpOptions = {
      headers: headers,
    };
    return this.http.get(environment.baseApiURL + `/` + route, httpOptions);
  }

  post(route: string, data: any): Observable<any> {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json; charset=utf-8',
      }),
    };
    return this.http.post(
      environment.baseApiURL + `/` + route,
      data,
      httpOptions
    );
  }

  postFormData(route: string, data: any): Observable<any> {

    return this.http
      .post<any>(
        environment.baseApiURL + `/` + route,
        data
      );
  }

  put(route: string, data: any): Observable<any> {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json; charset=utf-8',
      }),
    };
    return this.http.put(
      environment.baseApiURL + `/` + route,
      data,
      httpOptions
    );
  }

  delete(route: string): Observable<any> {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json; charset=utf-8',
      }),
    };
    return this.http.delete(environment.baseApiURL + '/' + route, httpOptions);
  }

  patch(route: string, data: any): Observable<any> {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json; charset=utf-8',
      }),
    };
    return this.http.patch(
      environment.baseApiURL + '/' + route,
      data,
      httpOptions
    );
  }
}

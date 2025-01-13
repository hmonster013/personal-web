import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { URI } from '../_utils/URI';

@Injectable({
  providedIn: 'root'
})
export class ExperiencesService {

  constructor(private http: HttpClient) { }

  list(formData: any) {
    return this.http.post(`${environment.apiUrl}/${URI.V1}/${URI.EXPERIENCES}/${URI.LIST}`, formData);
  }

  getById(id: string) {
    return this.http.get(`${environment.apiUrl}/${URI.V1}/${URI.EXPERIENCES}/${id}`);
  }

  create(formValue: any, file: any) {
    let formData = new FormData();

    formData.append("requestJsonData", JSON.stringify(formValue));
    formData.append("file", file);
    
    return this.http.post(`${environment.apiUrl}/${URI.V1}/${URI.EXPERIENCES}`, formData);
  }

  update(formValue: any, file: any) {
    let formData = new FormData();

    formData.append("requestJsonData", JSON.stringify(formValue));
    formData.append("file", file);
    
    return this.http.put(`${environment.apiUrl}/${URI.V1}/${URI.EXPERIENCES}`, formData);
  }

  delete(id: string) {
    return this.http.delete(`${environment.apiUrl}/${URI.V1}/${URI.EXPERIENCES}/${id}`);
  }
}

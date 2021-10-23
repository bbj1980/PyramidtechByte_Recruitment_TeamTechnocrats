import { HomeComponent } from './Home/Home.component';
import { CVUploadComponent } from './CV-Upload/CV-Upload.component';
import { JDUploadComponent } from './JD-Upload/JD-Upload.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [

  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'home',
    component: HomeComponent
  },
  {
    path: 'jd-upload',
    component: JDUploadComponent
  },

  {
    path: 'cv-upload',
    component: CVUploadComponent
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

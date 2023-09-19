import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {LandingComponent} from './landing/landing.component'
import {DonorDashComponent} from './donor-dash/donor-dash.component'
import {LoginComponent} from './login/login.component'
import {NGODashComponent} from './ngodash/ngodash.component'
import {SignupComponent} from './signup/signup.component'
import {NgonavComponent} from './ngonav/ngonav.component'
const routes: Routes = [
  { path: 'langing', component: LandingComponent },
  { path: 'login', component: LoginComponent },
  { path: 'signup', component: SignupComponent },
  { path: 'ngo', component: NgonavComponent },
  { path: 'donor', component: DonorDashComponent },
  { path: '', redirectTo: '/langing', pathMatch: 'full' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
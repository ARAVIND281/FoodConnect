import { Component } from '@angular/core';
import { Auth, signInWithEmailAndPassword, fetchSignInMethodsForEmail, getAuth, onAuthStateChanged } from '@angular/fire/auth';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {

  constructor(private auth: Auth,
    public router: Router,
    ) {
  }
}

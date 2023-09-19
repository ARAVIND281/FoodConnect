import { Component } from '@angular/core';
import { Auth, signInWithEmailAndPassword, fetchSignInMethodsForEmail, getAuth, onAuthStateChanged } from '@angular/fire/auth';
import { Router } from '@angular/router';

@Component({
  selector: 'app-landing',
  templateUrl: './landing.component.html',
  styleUrls: ['./landing.component.css']
})
export class LandingComponent {

  constructor(private auth: Auth,
    public router: Router,
    ) {
    this.checkUser()
  }

  checkUser() {
    /* console.log(this.auth.currentUser); */
    if (this.auth.currentUser) {
      console.log(this.auth.currentUser);
      /* this.router.navigate(['Dashboard']); */
    }
    const auth = getAuth();
    /* console.log(auth); */

    onAuthStateChanged(auth, (user) => {
      if (user) {
        const uid = user.uid;
        console.log(uid);
        /* this.router.navigate(['Dashboard']); */
      }
    });



  }
  gotoSignIn(){
    this.router.navigate(['login']);
  }

  gotoSignUp(){
    this.router.navigate(['signup']);
  }
}

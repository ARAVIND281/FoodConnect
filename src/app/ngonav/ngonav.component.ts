import { Component,OnInit } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
import { filter } from 'rxjs/operators';

@Component({
  selector: 'app-ngonav',
  templateUrl: './ngonav.component.html',
  styleUrls: ['./ngonav.component.scss']
})
export class NgonavComponent {
  public path: string | undefined;

  constructor(private router: Router) { }

  public ngOnInit() {
      this.path = this.router.url;

      this.router.events.pipe(
          filter(e => e instanceof NavigationEnd)
      )
  }

}
/* .subscribe(args => {
  this.path = args['url']}); */
import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NGODashComponent } from './ngodash.component';

describe('NGODashComponent', () => {
  let component: NGODashComponent;
  let fixture: ComponentFixture<NGODashComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [NGODashComponent]
    });
    fixture = TestBed.createComponent(NGODashComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

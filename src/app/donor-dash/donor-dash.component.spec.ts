import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DonorDashComponent } from './donor-dash.component';

describe('DonorDashComponent', () => {
  let component: DonorDashComponent;
  let fixture: ComponentFixture<DonorDashComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [DonorDashComponent]
    });
    fixture = TestBed.createComponent(DonorDashComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

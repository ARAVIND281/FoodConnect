import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { IgxBottomNavModule } from 'igniteui-angular';
import { NGODashComponent } from '../ngodash/ngodash.component';
import { TabbarRoutingModule } from './tabbar.routing.module';

@NgModule({
    exports: [
        IgxBottomNavModule
    ],
    imports: [
        TabbarRoutingModule,
        CommonModule,
        
    ]
})
export class TabbarSample3Module { }
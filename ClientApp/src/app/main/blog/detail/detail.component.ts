import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-blog-detail',
  templateUrl: './detail.component.html',
  styleUrls: ['./detail.component.css'],
})
export class DetailComponent implements OnInit {
  item: any;

  constructor(private route: ActivatedRoute) {}

  ngOnInit(): void {
    const itemObject = localStorage.getItem('item');
    console.log(itemObject);
    if (itemObject) {
      this.item = JSON.parse(itemObject);
    }
  }
}

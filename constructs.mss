/* Line type constructs and similar elements */
#constructs_line {
  [type='hedge'][zoom>=15] {
    line-color: @hedge;
    [zoom=15]  { line-width: 1; }
    [zoom=16]  { line-width: 2; }
    [zoom>=17] { line-width: 2.5; }
  }
  [type='wall'][zoom>=15] {
    line-width: 1;
    line-color: darken(@building, 10%);
    [zoom>=15] { line-width: 1.5; }
  }
  [type='fence'][zoom>=15] {
    line-width: 0.75;
    line-color: darken(@building, 10%);
    [zoom>=15] { line-width: 1; }
  }
  [type='minor_line'][zoom>=14] {
    line-width: 1;
    line-color: darken(@building, 10%);
    line-opacity: 0.7;
  }
  [type='major_line'][zoom>=13] {
    line-width: 1;
    line-color: darken(@building, 10%);
    line-opacity: 0.7;
  }
}

#cliffs[zoom>=14] {
  line-pattern-file: url("images/natural_cliff.png");
}

/* Point type physical elements, both constructs and natural */
#constructs_point {
  [type='power_pole'][zoom>=14] {
    marker-allow-overlap: true;
    marker-file: url('images/power_pole.png');
  }
  [type='aerialway_pylon'][zoom>=13] {
    marker-allow-overlap: true;
    marker-file: url('images/aerialway_pylon.png');
  }
  [type='aerialway_station'][zoom>=13] {
    marker-allow-overlap: true;
    marker-file: url('images/aerialway_station.png');
  }
  [type='power_tower'][zoom>=13] {
    marker-allow-overlap: true;
    marker-file: url('images/power_tower.png');
  }
  [type='barrier_gate'][zoom>=15] {
    marker-allow-overlap: true;
    marker-file: url('images/barrier_gate.png');
    [access='private'],[access='no'] { marker-file: url('images/barrier_gate_noaccess.png'); }
  }
  [type='natural_peak'][zoom>=14] {
    marker-allow-overlap: true;
    marker-file: url('images/natural_peak.png');
  }
  [type='leisure_firepit'][zoom>=13] {
    marker-allow-overlap: true;
    marker-file: url('images/leisure_firepit.svg');
    marker-fill: @parking-label; //#0091da;
    [access='private'],[access='no'] { marker-fill: @forbidden; } //#ff003d
    marker-width: 12.0; marker-height: 12.0;
    [zoom>=14] { marker-width: 13.0;  marker-height: 13.0;}
    [zoom>=15] { marker-width: 14.0;  marker-height: 14.0;}
    [zoom>=16] { marker-width: 15.0;  marker-height: 15.0;}
  }
  [type='amenity_shelter'][zoom>=10],
  [type='amenity_shelter_firepit'][zoom>=10],
  [type='tourism_wilderness_hut'][zoom>=10],
  [type='military_bunker'][zoom>=10] {
    [type='amenity_shelter'] { marker-file: url('images/amenity_shelter.svg'); }
    [type='amenity_shelter_firepit'] { marker-file: url('images/amenity_shelter_firepit.svg'); }
    [type='tourism_wilderness_hut'] { marker-file: url('images/tourism_wilderness_hut.svg'); }
    [type='military_bunker'][zoom>=10] { marker-file: url('images/military_bunker.svg'); }
    marker-allow-overlap: true;
    marker-width: 13.0;
    marker-height: 13.0;
    marker-fill: @parking-label; //#0091da
    [access='private'],[access='no'] { marker-fill: @forbidden; } //#ff003d
    [zoom>=14] { marker-width: 15.0;  marker-height: 15.0;}
    [zoom>=15] { marker-width: 16.0;  marker-height: 16.0;}
    [zoom>=16] { marker-width: 17.0;  marker-height: 17.0;}
    [zoom>=13] {
      text-name: "[name]";
      text-placement: point;
      text-allow-overlap: true;
      text-dy: 8;
      text-face-name: @sans;
      text-size: 10;
      [zoom<=14] { text-size: 9; }
      text-wrap-width:30;
      text-fill: @parking-label * 0.6;
      text-halo-fill: lighten(@parking-label, 90%);
      [access='private'],[access='no'] { text-fill: @forbidden * 0.6; text-halo-fill: lighten(@forbidden, 90%); }
      text-halo-radius:1;
    }
  }

  [type='tourism_viewpoint'][zoom>=13] {
    marker-allow-overlap: true;
    marker-file: url('images/tourism_viewpoint.svg');
    marker-fill: @parking-label; //#0091da;
    marker-width: 13.0;
    marker-height: 13.0;
    [zoom>=14] { marker-width: 14.0;  marker-height: 14.0;}
    [zoom>=15] { marker-width: 15.0;  marker-height: 15.0;}
    [zoom>=16] { marker-width: 16.0;  marker-height: 16.0;}
    text-name: "[name]";
    text-placement: point;
    text-allow-overlap: true;
    text-dy: 8;
    text-face-name: @sans;
    text-size: 10;
    [zoom<=14] { text-size: 9; }
    text-wrap-width:30;
    text-fill: @parking-label * 0.6;
    text-halo-fill: lighten(@parking-label, 90%);
    text-halo-radius:1;
  }
}

/* Line type constructs and similar elements */
#constructs_line {
  [type='hedge'] {
    line-color: @hedge;
    [zoom>=16] { line-width: 2; }
    [zoom=15]  { line-width: 1.5; }
    [zoom=15]  { line-width: 1; }
    [zoom<=14] { line-width: 0; }
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
  [type='minor_line'] {
    line-width: 1;
    line-color: @building;
    line-opacity: 0.5;
    [zoom<=14] { line-width: 0; }
  }
  [type='major_line'] {
    line-width: 1;
    line-color: @building;
    line-opacity: 0.5;
    [zoom<=13] { line-width: 0; }
  }
  [type='cliff'][zoom>=14] {
    line-pattern-file: url("./images/natural_cliff.png");
  }
}
/* Point type physical elements, both constructs and natural */
#constructs_point {
  [power='pole'][zoom>=15] {
    marker-file: url('./images/power_pole.png');
  }
  [aerialway='pylon'][zoom>=14] {
    marker-file: url('./images/aerialway_pylon.png');
  }
  [aerialway='station'][zoom>=14] {
    marker-file: url('./images/aerialway_station.png');
  }
  [power='tower'][zoom>=14] {
    marker-file: url('./images/power_tower.png');
  }
  [barrier='gate'][zoom>=15] {
    marker-allow-overlap: true;
    marker-file: url('./images/barrier_gate.png');
  }
  [natural='peak'][zoom>=14] {
    marker-allow-overlap: true;
    marker-file: url('./images/natural_peak.png');
    text-name: "[name]";
    text-placement:point;
    text-dy: 8;
    text-face-name: @sans_lt;
    text-size: 10;
    [zoom<=14] { text-size: 9; }
    text-wrap-width:30;
    text-fill: @rock * 0.2;
    text-halo-fill: lighten(@rock, 80%);
    text-halo-radius:1;
  }
}

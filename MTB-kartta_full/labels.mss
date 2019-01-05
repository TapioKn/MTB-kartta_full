/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

/* ---- Cities ------------------------------------------------------ */

#place::city[type='city'][zoom>=8][zoom<=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  [zoom<=8] {
    text-size: 10;
    text-halo-radius:1;
  }
  [zoom=9] {
    text-size:10;
    text-wrap-width: 60;
  }
  [zoom=10] {
    text-size:11;
    text-wrap-width: 70;
  }
  [zoom=11] {
    text-size:12;
    text-character-spacing: 1;
    text-wrap-width: 80;
  }
  [zoom=12] {
    text-size:13;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
  [zoom=13] {
    text-size:14;
    text-character-spacing: 2;
    text-wrap-width: 200;
    text-transform: uppercase;
  }
  [zoom=14] {
    text-size:15;
    text-character-spacing: 4;
    text-wrap-width: 300;
    text-transform: uppercase;
  }
  [zoom=15] {
    text-size:16;
    text-character-spacing: 6;
    text-wrap-width: 400;
    text-transform: uppercase;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=9][zoom<=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:9;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>=10] {
    text-halo-radius:2;
    text-size: 10;
  }
  [zoom>=11]{ text-size:11; }
  [zoom>=12]{
    text-size:12;
    text-line-spacing: 1;
  }
  [zoom>=13]{
    text-transform: uppercase;
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom>=14]{
    text-size:13;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom>=15]{
    text-size:14;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom>=15]{
    text-size:15;
    text-character-spacing: 4;
    text-line-spacing: 5;
  }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=13],
#place::small[type='suburb'][zoom>=13],
#place::small[type='hamlet'][zoom>=13],
#place::small[type='neighbourhood'][zoom>=13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom=14] {
    text-size:11;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom=15] {
    text-size:12;
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:13;
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
}

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:9;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=16] {
    text-size:10;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
}


/* ===================================================================== */
/* AREA LABELS                                                           */
/* ===================================================================== */

#area_label {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom>=10][area>102400000],
  [zoom>=11][area>25600000],
  [zoom>=13][area>1600000],
  [zoom>=14][area>320000],
  [zoom>=15][area>80000],
  [zoom>=16][area>20000] {
    text-name: "[name]";
    text-halo-radius: 1.5;
    text-face-name:@sans;
    text-size: 10;
    text-wrap-width:30;
    text-fill: #4b4b4b;
    text-halo-fill: #fff;
    // Specific style overrides for different types of areas:
    [type='park'][zoom>=10] {
      text-face-name: @sans_lt;
      text-fill: @park * 0.6;
      text-halo-fill: lighten(@park, 90%);
    }
    [type='golf_course'][zoom>=10] {
      text-fill: @sports * 0.6;
      text-halo-fill: lighten(@sports, 90%);
    }
    [type='cemetery'][zoom>=10] {
      text-fill: @cemetery * 0.6;
      text-halo-fill: lighten(@cemetery, 90%);
    }
    [type='hospital'][zoom>=10] {
      text-fill: @hospital * 0.6;
      text-halo-fill: lighten(@hospital, 90%);
    }
    [type='college'][zoom>=10],
    [type='school'][zoom>=10],
    [type='university'][zoom>=10] {
      text-fill: @school * 0.6;
      text-halo-fill: lighten(@school, 90%);
    }
    [type='water'][zoom>=10] {
      text-fill: @water * 0.1;
      text-halo-fill: lighten(@water, 90%);
    }
    [type='bay'][zoom>=13] {
      text-fill: @water * 0.6;
      text-halo-fill: lighten(@water, 90%);
    }
  }
  [zoom=15][area>1600000],
  [zoom=16][area>80000] {
    text-name: "[name]";
    text-size: 12;
    text-wrap-width: 60;
    text-character-spacing: 1;
    text-halo-radius: 2;
  }
}

#poi[type='university'][zoom>=15],
#poi[type='hospital'][zoom>=16],
#poi[type='school'][zoom>=17],
#poi[type='library'][zoom>=17] {
  text-name:"[name]";
  text-face-name:@sans;
  text-size:10;
  text-wrap-width:30;
  text-fill: @poi_text;
}


/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: @water * 0.75;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
  [type='river'][zoom=15],
  [type='canal'][zoom=16] {
    text-size: 11;
  }
  [type='river'][zoom>=16] {
    text-size: 14;
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=11][zoom<=14][reflen<=8] {
  shield-name: "[ref]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: #fff;
  shield-file: url(img/shield-motorway-1.png);
  [type='motorway'] {
    [reflen=1] { shield-file: url(img/shield-motorway-1.png); }
    [reflen=2] { shield-file: url(img/shield-motorway-2.png); }
    [reflen=3] { shield-file: url(img/shield-motorway-3.png); }
    [reflen=4] { shield-file: url(img/shield-motorway-4.png); }
    [reflen=5] { shield-file: url(img/shield-motorway-5.png); }
    [reflen=6] { shield-file: url(img/shield-motorway-6.png); }
    [reflen=7] { shield-file: url(img/shield-motorway-7.png); }
    [reflen=8] { shield-file: url(img/shield-motorway-8.png); }
  }
  [type='trunk'] {
    [reflen=1] { shield-file: url(img/shield-trunk-1.png); }
    [reflen=2] { shield-file: url(img/shield-trunk-2.png); }
    [reflen=3] { shield-file: url(img/shield-trunk-3.png); }
    [reflen=4] { shield-file: url(img/shield-trunk-4.png); }
    [reflen=5] { shield-file: url(img/shield-trunk-5.png); }
    [reflen=6] { shield-file: url(img/shield-trunk-6.png); }
    [reflen=7] { shield-file: url(img/shield-trunk-7.png); }
    [reflen=8] { shield-file: url(img/shield-trunk-8.png); }
  }
  [zoom=11] { shield-min-distance: 60; } //50
  [zoom=12] { shield-min-distance: 80; } //60
  [zoom=13] { shield-min-distance: 120; } //120
  [zoom=14] { shield-min-distance: 180; }
}

#motorway_label[type='motorway'][zoom>9],
#motorway_label[type='trunk'][zoom>9] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:10;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
  [tunnel='yes'],
  [tunnel='1'] { text-opacity: 0; }
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
  [tunnel='1'] { text-opacity: 0; }
}

#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  [type='path'] { text-dy: 10; }
  text-size:10;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  [tunnel='1'] { text-opacity: 0; }
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */
#motorway_label[zoom>=16],
#mainroad_label[zoom>=16],
#minorroad_label[zoom>=16] {
  [oneway = 'yes'],
  [oneway='-1'] {
   marker-placement:line;
   marker-max-error: 0.5;
   marker-spacing: 200;
   marker-file: url(img/icon/oneway.svg);
   [oneway='-1'] { marker-file: url(img/icon/oneway-reverse.svg); }
   [zoom=16] { marker-transform: "scale(0.7)"; }
  }
}

/* ================================================================== */
/* FIXME/NOEXIT LABELS
/* ================================================================== */
#constructs_point[zoom>=15] {
  [fixme='continue'] {
    [zoom=15] { marker-file: url(images/fixme_continue-M.png); }
    [zoom>=16] { marker-file: url(images/fixme_continue-L.png); }
    marker-placement: point;
  }
  [fixme='resurvey'] {
    [zoom=15] { marker-file: url(images/fixme_resurvey-M.png); }
    [zoom>=16] { marker-file: url(images/fixme_resurvey-L.png); }
    marker-placement: point;
  }
  [noexit='yes'] {
    [zoom=15] { marker-file: url(images/noexit_yes-M.png); }
    [zoom>=16] { marker-file: url(images/noexit_yes-L.png); }
    marker-placement: point;
  }
}

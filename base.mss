/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land-low[zoom>=0][zoom<10],
#land-high[zoom>=10] {
  polygon-fill: @land;
}

/* Could remove gen0 and gen1 mostly since only military areas are visible */
#landuse[zoom>=12],
#landuse_gen1[zoom<=11] {
  [type='commercial']        { polygon-fill: @commercial;
                               line-color: @commercial * 0.8;
                               line-opacity: 0;
                               [zoom<=12] { polygon-fill: lighten(@commercial, 5%); }
                               [zoom=15] {
                                 line-opacity: 0.6;
                                 line-width: 0.5;
                               }
                               [zoom>=16] {
                                 line-opacity: 1.0;
                                 line-width: 0.8;
                               }
  }
  [type='industrial']         { polygon-fill: @industrial;
                                line-color: @industrial * 0.8;
                                line-opacity: 0;
                                [zoom<=12] { polygon-fill: lighten(@industrial, 5%); }
                                [zoom=15] {
                                  line-opacity: 0.6;
                                  line-width: 0.5;
                                }
                                [zoom>=16] {
                                  line-opacity: 1.0;
                                  line-width: 0.8;
                                }
  }
  [type='residential']       { polygon-fill: @residential;
                               line-color: @residential * 0.9;
                               line-opacity: 0;
                               [zoom<=12] { polygon-fill: lighten(@residential, 5%); }
                               [zoom=15] {
                               line-opacity: 0.6;
                               line-width: 0.5;
                               }
                               [zoom>=16] {
                               line-opacity: 1.0;
                               line-width: 0.8;
                               }
  }
  [type='retail']            { polygon-fill: @retail;
                               line-color: @retail * 0.8;
                               line-opacity: 0;
                               [zoom<=12] { polygon-fill: lighten(@retail, 5%); }
                               [zoom=15] {
                               line-opacity: 0.6;
                               line-width: 0.5;
                               }
                               [zoom>=16] {
                               line-opacity: 1.0;
                               line-width: 0.8;
                               }
  }
  [type='childcare'],
  [type='kindergarten']      { polygon-fill: @school;
                               line-color: @school * 0.8;
                               line-opacity: 0;
                               [zoom<=12] { polygon-fill: lighten(@school, 5%); }
                               [zoom=15] {
                               line-opacity: 0.6;
                               line-width: 0.5;
                               }
                               [zoom>=16] {
                               line-opacity: 1.0;
                                line-width: 0.8;
                              }
  }
  /* Should combine some of the definitions below using commas... or in SQL query */
  ::nonbackground{
    [zoom>=12] {
      [type='allotments']                 { polygon-fill: @allotments; }
      [type='bare_rock']                  { polygon-fill: @rock; }
      [type='beach']                      { polygon-fill: @beach; }
      [type='brownfield'],
      [type='construction']               { polygon-fill: @construction; }
      [type='cemetery'],
      [type='graveyard'],
      [type='grave_yard']                 { polygon-fill: @cemetery; }
      [type='college'],
      [type='school'],
      [type='university']                 { polygon-fill: @school; }
      [type='common'],
      [type='camp_site'],
      [type='park'],
      [type='recreation_ground'],
      [type='village_green']              { polygon-fill: @park; }
      [type='dog_park'],
      [type='sports_center'],
      [type='stadium']                    { polygon-fill: @sports; }
      [type='farmland']                   { polygon-fill: @farmland;
                                            [zoom=13]  { polygon-fill: lighten(@farmland, 2%); }
                                            [zoom=12]  { polygon-fill: lighten(@farmland, 4%); } }
      [type='farmyard'],
      [type='orchard'],
      [type='vineyard']                   { polygon-fill: @farmyard; }
      [type='footpath'],
      [type='footway'],
      [type='pedestrian']                 { polygon-fill: @plaza; }
      [type='forest'],
      [type='wood']                       { polygon-fill: @forest;
                                            [zoom=13]  { polygon-fill: lighten(@forest, 2%); }
                                            [zoom=12]  { polygon-fill: lighten(@forest, 4%); } }
      [type='golf_course'][zoom>=13]      { polygon-fill: @golf_course; }
      [type='grass']                      { polygon-fill: @grass; }
      [type='grassland'][zoom>=13]        { polygon-fill: @grassland;
                                            polygon-pattern-file: url("images/natural_grassland.png"); }
      [type='hospital']                   { polygon-fill: @hospital; }
      [type='nursing_home']               { polygon-fill: desaturate(@hospital, 20%); }
      [type='landfill']                   { polygon-fill: @landfill; }
      [type='meadow']                     { polygon-fill: @meadow; }
      [type='parking']                    { polygon-fill: @parking;
                                            line-width: 0.8;
                                            line-color: @parking * 0.8; }
      [type='pitch'],
      [type='track']                      { polygon-fill: @sports;
                                            line-width: 0.8;
                                            line-color: @sports * 0.9; }
      [type='plant_nursery']              { polygon-fill: @plant_nursery; }
      [type='playground']                 { polygon-fill: @sports; }
      [type='pier']                       { polygon-fill: @plaza; }
      [type='port']                       { polygon-fill: @industrial; }
      [type='quarry']                     { polygon-fill: desaturate(@landfill,30%); }
      [type='railway']                    { polygon-fill: @industrial; }
      [type='reservoir']                  { polygon-fill: @water; }
      [type='scrub'][zoom>=13]            { polygon-fill: @grassland;
                                            polygon-pattern-file: url("images/natural_scrub.png");
                                            [zoom=13]  { polygon-pattern-opacity: 0.6; } }
      [type='substation'],
      [type='sub_station'],
      [type='station'],
      [type='plant'] {
        polygon-fill: desaturate(darken(@industrial,20%),10%);
        [zoom>=15] {
        line-width: 0.8;
        line-color: @industrial * 0.6;
        line-opacity: 1.0;
        }
      }
      [type='clearcut'][zoom>=13]         { polygon-fill: #f2ffcc;
                                            polygon-pattern-file: url("images/natural_scrub.png");
                                            [zoom=13]  { polygon-pattern-opacity: 0.6; } }
      [type="cliff"][zoom>=14] { line-pattern-file: url("images/natural_cliff.png"); }
    }
  }
}

#landuse_overlays {
  /* Wetlands */
  ::wetlands {
    [zoom>11][wetland_type!='reedbed'] {
      [natural='wetland']            { polygon-fill: @forest; polygon-pattern-file:url(images/natural_wetland.png); }
      [wetland_type='bog']           { polygon-fill: @bog; polygon-pattern-file:url(images/wetland_marsh_bog_swamp.png); }
      [wetland_type='fen']           { polygon-fill: @fen; polygon-pattern-file:url(images/wetland_marsh_bog_swamp.png); }
      [wetland_type='marsh']         { polygon-fill: @fen; polygon-pattern-file:url(images/wetland_marsh_bog_swamp.png); }
      [wetland_type='swamp']         { polygon-fill: @swamp; polygon-pattern-file:url(images/wetland_marsh_bog_swamp.png); }
    }
  }

  /* Conservation areas and such. Overlap with boundary/leisure keys since tagging is so varied */
  ::conservation {
    [land_type='national_park'],
    [land_type='nature_reserve'],
    [land_type='protected_area'],
    [land_type='national_park'],
    [land_type='nature_reserve'],
    [land_type='protected_area'] {
      line-color: @conservation;
      line-opacity: 0.3;
      polygon-fill: @conservation;
      polygon-opacity: 0.15;
      [zoom=7] { line-width: 0.4; }
      [zoom=8] { line-width: 0.7; }
      [zoom=9] { line-width: 1.0; }
      [zoom=10] { line-width: 2.0; }
      [zoom=11] { line-width: 2.5; }
      [zoom>=12] { line-width: 3.0; }
    }
  }
  
  /* Hedges defined as areas */
  [barrier='hedge'] {
    [zoom>=14] { polygon-fill: @hedge; }
  }
  /* Military areas */
  ::military {
    [landuse='military'] {
      polygon-pattern-file: url("images/landuse_military.png");
      polygon-pattern-opacity: 0.5;
      line-width: 1.5;
      line-color: @military;
      line-opacity: 0.5;  }
    [land_type='border_zone'] {
      polygon-pattern-file: url("images/boundary_border_zone.png");
      polygon-pattern-opacity: 0.5;
      line-width: 1.5;
      line-color: @border_zone;
      line-opacity: 0.5;  }
  }
}

#reedbeds[zoom>11] {
  [wetland_type='reedbed']       { polygon-fill: @water; polygon-pattern-file:url(images/wetland_reedbed.png); }
}

/* ---- BUILDINGS ---- */
#buildings[zoom>=13] {
  ::polybridges {
    [zoom>12][type='bridge'] { polygon-fill: @land; }
  }
  ::buildings[type!='bridge'] {
    polygon-fill: lighten(@building, 20%);
    line-color:   @building;
    line-width:   1;
    [zoom=15]  { polygon-fill: lighten(@building, 30%); line-color: lighten(@building, 10%); }
    [zoom=14]  { polygon-fill: lighten(@building, 35%); line-color: lighten(@building, 25%); }
    [zoom=13]  { polygon-fill: lighten(@building, 40%); line-color: lighten(@building, 35%); }
    [zoom<=12] { polygon-opacity: 0; line-opacity: 0; }
  }

}
#roofs[zoom>=13] {
  polygon-fill:    lighten(@building, 20%);
  polygon-opacity: 0.7;
  line-color:      @building;
  line-width:      1;
  line-opacity:    0.7;
  [zoom=15]  { polygon-fill: lighten(@building, 35%); line-color: lighten(@building, 25%); }
  [zoom=14]  { polygon-fill: lighten(@building, 35%); line-color: lighten(@building, 25%); }
  [zoom=13]  { polygon-fill: lighten(@building, 40%); line-color: lighten(@building, 35%); }
  [zoom<=12] { polygon-fill: lighten(@building, 45%); line-color: lighten(@building, 40%); }
}

/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: @water; }

/*#water_gen0[zoom>3][zoom<=9] { polygon-fill: @water; }
#water_gen1[zoom>9][zoom<=12] { polygon-fill: @water; } */

#water[zoom>3] {
  polygon-fill: @water;
}

/* ================================================================== */
/* WATERWAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom=13] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}

#waterway_high[zoom>=14] {
  line-color: @waterway;
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-cap: round;
    line-join: round;
	  [zoom=14]{ line-width: 4.0; }
    [zoom=15]{ line-width: 4.5; }
    [zoom>=16]{ line-width: 5.0; }
	[tunnel='yes'],[tunnel='culvert'] { line-opacity: @tunnel_opacity; }
  }
  [type='stream'] {
    [zoom=14]{ line-width: 2.0; }
    [zoom=15]{ line-width: 2.5; }
    [zoom>=16]{ line-width: 3.0; }
	[tunnel='yes'],[tunnel='culvert'] { line-opacity: @tunnel_opacity; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 1.2; }
    [zoom>=16]{ line-width: 2.5; }
	[tunnel='yes'],[tunnel='culvert'] { line-opacity: @tunnel_opacity; }
  }
}

/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */


#admin[admin_level='2'][zoom>1] {
  line-color:@admin_2;
  line-width:0.5;
  [zoom=2] { line-opacity: 0.25; }
  [zoom=3] { line-opacity: 0.3; }
  [zoom=4] { line-opacity: 0.4; }
}

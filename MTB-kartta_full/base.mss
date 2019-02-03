/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land-low[zoom>=0][zoom<10],
#land-high[zoom>=10] {
  polygon-fill: @land;
}

#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='commercial']        { polygon-fill: @commercial;
                               line-color: @commercial * 0.8;
                               line-opacity: 0;
                               [zoom=15] {
                                 line-opacity: 1.0;
                                 line-width: 0.5;
                               }
                               [zoom>=16] {
                                 line-opacity: 1.0;
                                 line-width: 0.8;
                               }
                             }
  [type='industrial']        { polygon-fill: @industrial;
                                line-color: @industrial * 0.8;
                                line-opacity: 0;
                                [zoom=15] {
                                  line-opacity: 1.0;
                                  line-width: 0.5;
                                }
                                [zoom>=16] {
                                  line-opacity: 1.0;
                                  line-width: 0.8;
                                }
                              }
  [type='residential']       { polygon-fill: @residential;
                               line-color: @residential * 0.8;
                               line-opacity: 0;
                               [zoom=15] {
                               line-opacity: 1.0;
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
                               [zoom=15] {
                               line-opacity: 1.0;
                               line-width: 0.5;
                               }
                               [zoom>=16] {
                               line-opacity: 1.0;
                               line-width: 0.8;
                               }
                             }
  ::nonbackground{
    [type='allotments']        { polygon-fill: @allotments; }
    [type='bare_rock']         { polygon-fill: @rock; }
    [type='beach']             { polygon-fill: @beach; }
    [type='brownfield']        { polygon-fill: @construction; }
    [type='cemetery']          { polygon-fill: @cemetery; }
    [type='camp_site']         { polygon-fill: @park; }
    [type='college']           { polygon-fill: @school; }
    [type='common']            { polygon-fill: @park; }
    [type='construction']      { polygon-fill: @construction; }
    [type='dog_park']          { polygon-fill: @sports; }
    [type='farmland']          { polygon-fill: @farmland; }
    [type='farmyard']          { polygon-fill: @farmyard; }
    [type='footpath']          { polygon-fill: @plaza; }
    [type='footway']           { polygon-fill: @plaza; }
    [type='forest']            { polygon-fill: @forest; }
    [type='golf_course']       { polygon-fill: @golf_course; }
    [type='grass']             { polygon-fill: @grass; }
    [type='grassland']         { polygon-fill: @grassland;
                                 polygon-pattern-file: url("./images/natural_grassland.png"); }
    [type='graveyard']         { polygon-fill: @cemetery; }
    [type='hedge'][areatype='yes'] {
      line-opacity: 0;
      [zoom>=14] { polygon-fill: @hedge; }
    }
    [type='hospital']          { polygon-fill: @hospital; }
    [type='nursing_home']      { polygon-fill: desaturate(@hospital, 20%); }
    [type='landfill']          { polygon-fill: @landfill; }
    [type='meadow']            { polygon-fill: @meadow; }
    [type='orchard']           { polygon-fill: @farmyard; }
    [type='park']              { polygon-fill: @park; }
    [type='parking']           { polygon-fill: @parking; }
    [type='pedestrian']        { polygon-fill: @plaza; }
    [type='pitch']             { polygon-fill: @sports; }
    [type='plant_nursery']     { polygon-fill: @plant_nursery; }
    [type='playground']        { polygon-fill: @sports; }
    [type='pier']              { polygon-fill: @plaza; }
    [type='port']              { polygon-fill: @industrial; }
    [type='quarry']            { polygon-fill: desaturate(@landfill,30%); }
    [type='railway']           { polygon-fill: @industrial; }
    [type='recreation_ground'] { polygon-fill: @park; }
    [type='reservoir']         { polygon-fill: @water; }
    [type='retail']            { polygon-fill: @commercial; }
    [type='school']            { polygon-fill: @school; }
    [type='scrub']             { polygon-fill: @grass;
                                 polygon-pattern-file: url("./images/natural_scrub.png"); }
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
    [type='clearcut']          { polygon-fill: #f2ffcc;
                                 polygon-pattern-file: url("./images/natural_scrub.png"); }
    [type='sports_center']     { polygon-fill: @sports; }
    [type='stadium']           { polygon-fill: @sports; }
    [type='track']             { polygon-fill: @sports; }
    [type='university']        { polygon-fill: @school; }
    [type='village_green']     { polygon-fill: @park; }
    [type='vineyard']          { polygon-fill: @farmyard; }
    [type='wood']              { polygon-fill: @forest; }

    [type="cliff"][zoom>=14] {
      line-pattern-file: url("./images/natural_cliff.png");
    }
  }
  ::military {
    [type='military'] {
      polygon-pattern-file: url("./images/landuse_military.png");
      polygon-pattern-opacity: 0.5;
      line-width: 1.5;
      line-color: @military;
      line-opacity: 0.5;  }
  }
}

#landuse_overlays {
/* Wetlands */
  [zoom>11] {
    [natural='wetland']            { polygon-fill: @forest; polygon-pattern-file:url(images/natural_wetland.png); }
    [wetland_type='bog']           { polygon-fill: @forest; polygon-pattern-file:url(images/wetland_marsh_bog_swamp.png); }
    [wetland_type='marsh']         { polygon-fill: @forest; polygon-pattern-file:url(images/wetland_marsh_bog_swamp.png); }
    [wetland_type='reedbed']       { polygon-pattern-file:url(images/wetland_reedbed.png); }
    [wetland_type='swamp']         { polygon-fill: @forest; polygon-pattern-file:url(images/wetland_marsh_bog_swamp.png); }
  }

/* Conservation areas and such. Overlap with boundary/leisure keys since tagging is so varied */
  [land_type='national_park'],
  [land_type='nature_reserve'],
  [land_type='protected_area'],
  [land_type='national_park'],
  [land_type='nature_reserve'],
  [land_type='protected_area'] {
    line-color: @conservation;
    line-opacity: 0.4;
    polygon-fill: @conservation;
    polygon-opacity: 0.2;
    [zoom=7] { line-width: 0.4; }
    [zoom=8] { line-width: 0.7; }
    [zoom=9] { line-width: 1.0; }
    [zoom=10] { line-width: 2.0; }
    [zoom=11] { line-width: 2.5; }
    [zoom>=12] { line-width: 3.0; }
  }

}
/* ---- BUILDINGS ---- */
#buildings[zoom>=12][zoom<=16] {
  polygon-fill: lighten(@building, 20%);
  line-color:   @building;
  line-width:   1;
  [zoom=15]  { polygon-fill: lighten(@building, 30%); line-color: lighten(@building, 10%); }
  [zoom=14]  { polygon-fill: lighten(@building, 35%); line-color: lighten(@building, 15%); }
  [zoom=13]  { polygon-fill: lighten(@building, 40%); line-color: lighten(@building, 20%); }
  [zoom<=12] { polygon-fill: lighten(@building, 45%); line-color: lighten(@building, 25%); }
}


/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: @water; }

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
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
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
	[zoom=14]{ line-width: 4.0; }
    [zoom=15]{ line-width: 4.5; }
    [zoom=16]{ line-width: 5.0; }
	[tunnel='yes'],[tunnel='culvert'] { line-opacity: @tunnel_opacity; }
  }
  [type='stream'] {
    [zoom=14]{ line-width: 2.0; }
    [zoom=15]{ line-width: 2.5; }
    [zoom=16]{ line-width: 3.0; }
	[tunnel='yes'],[tunnel='culvert'] { line-opacity: @tunnel_opacity; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 1.0; }
    [zoom=16]{ line-width: 2.0; }
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

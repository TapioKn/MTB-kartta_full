/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Asap Regular";
@sans_lt_italic:    "Asap Italic";

@sans:              "Asap Regular";
@sans_italic:       "Asap Italic";

@sans_bold:         "Asap Bold";
@sans_bold_italic:  "Asap Bold Italic";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */
                                   /* BACKUPS  */
@allotments:        desaturate(lighten(#f1efe4, 3%), 5%);      /* #f1efe4; */
@beach:             desaturate(lighten(#f7f4c9, 3%), 5%);      /* #f7f4c9; */
@building:          #938f8b;      /* #595959; */
@cemetery:          desaturate(lighten(#deedde, 3%), 5%);      /* #deedde; */
@commercial:        desaturate(lighten(#e5eff2, 3%), 0%);      /* #eef4f6; */
@conservation:      desaturate(lighten(#73a45b, 3%), 5%);      /* #73a45b; */
@construction:      desaturate(lighten(#ccc3b3, 3%), 10%);      /* #d5dbdd; */
@farmland:          desaturate(lighten(#faf8d9, 3%), 5%);      /* #faf8d9; */
@farmyard:          desaturate(lighten(#f8f3d3, 3%), 5%);      /* #f8f3d3; */
@forest:            desaturate(lighten(#c7d2a7, 3%), 5%);      /* #c5d2ae; */
@golf_course:       desaturate(lighten(#d0ffb3, 3%), 5%);      /* #d0ffb3; */
@grass:             desaturate(lighten(#eeffcc, 3%), 5%);      /* #eeffcc; */
@grassland:         desaturate(lighten(#dfeebf, 3%), 5%);      /* #eeffcc; */
@hedge:             desaturate(lighten(#9fb77b, 3%), 5%);      /* #9fb77b; */
@hospital:          desaturate(lighten(#f5e7ea, 3%), 5%);      /* #ff0037; */
@industrial:        desaturate(lighten(#eaeff1, 3%), 0%);      /* #eaeff1; */
@land:              #f5f3ea;      /* Base color for the map */ /* testing color: #f4c3f3;*/
@landfill:          desaturate(lighten(#ccc3b3, 3%), 5%);      /* #ccc3b3; */
@meadow:            desaturate(lighten(#f5fadb, 3%), 5%);      /* #f5fadb; */
@military:          desaturate(lighten(#ff5555, 3%), 5%);      /* #ff5555; */
@park:              desaturate(lighten(#e6ffcc, 3%), 5%);      /* #e6ffcc; */
@parking:           desaturate(lighten(#e9eaed, 3%), 5%);      /* #e9eaed; */
@parking-label:     #0241e2;
@plant_nursery:     desaturate(lighten(#e7eedd, 3%), 5%);      /* #e7eedd; */
@plaza:             desaturate(lighten(#f2f0e3, 3%), 0%);      /* #f2f0e3; */
@residential:       desaturate(lighten(#f6f5ee, 3%), 0%);      /* #f6f5ee; */
@retail:            desaturate(lighten(#f2e5e5, 3%), 0%);      /* #eef4f6; */
@rock:              desaturate(lighten(#e6e8e3, 3%), 0%);      /* #e6e8e3; */
@school:            desaturate(lighten(#f9f8f0, 3%), 5%);      /* #f9f8f0; */
@sports:            desaturate(lighten(#d0ffb3, 3%), 5%);      /* #d0ffb3; */
@water:             #94c1e2;      /* #66aacc; desaturate(lighten(#578fab, 10%), 20%)*/


/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

@motorway_line:    #ffb84d;  //BACKUP: #ffc34d;
@motorway_fill:    lighten(@motorway_line,5%);
@motorway_case:    @motorway_line * 0.4;

@trunk_line:       #fcd681;  //BACKUP: #ffe18f;
@trunk_fill:       lighten(@trunk_line,5%);
@trunk_case:       @trunk_line * 0.4;

@primary_line:     #fcd681;  //BACKUP: #ffe18f;
@primary_fill:     lighten(@primary_line,5%);
@primary_case:     @primary_line * 0.4;

@mainroad_line:    #fade97;  //BACKUP: #ffe8aa;
@mainroad_fill:    lighten(@mainroad_line,5%);
@mainroad_case:    @mainroad_line * 0.4;

@road_line:        #8c8c8c;
@road_fill:        #ffffff;
@road_case:        @land * 0.4;

@rail_regular:     #7c7b7b;
@rail_abandoned:   #bfbfbf;
@rail_fill:        #ffffff;

@aeroway:          @building;

@tunnel_opacity:   0.5;

@unpaved_case:     #815b15;
@unpaved_fill:     #fffbf4;

// ==================================================================
// BICYCLE AND PEDESTRIAN WAY COLORS
// ==================================================================

// Dash colors
@footway:         #d9002f;
@cycleway:        #014ffc;
@path:            #00f504;
@forbidden:       #cc002c;

// Case colors
@cyclewaybg:      @land;
@footwaybg:       @cyclewaybg;
@mtbscale0:       #88f41c;
@mtbscale1:       #f4f41d;
@mtbscale2:       #f4881d;
@mtbscale3:       #f92828;
@mtbscale4:       #ee2099;
@mtbscale5:       #bf1cf5;

// ==================================================================
// BOUNDARY COLORS
// ==================================================================

@admin_2:           #324;

// ==================================================================
// LABEL COLORS
// ==================================================================


@place_halo:        fadeout(#ffffff,10%);

@country_text:      #4b4b4b;
@country_halo:      @place_halo;

@state_text:        #4b4b4b;
@state_halo:        @place_halo;

@city_text:         #4b4b4b;
@city_halo:         @place_halo;

@town_text:         #4b4b4b;
@town_halo:         @place_halo;

@poi_text:          #4b4b4b;

@road_text:         #222222;
@road_halo:         #fff;

@other_text:        #4b4b4b;
@other_halo:        @place_halo;

@locality_text:     #4b4b4b;
@locality_halo:     fadeout(#ffffff,20%);

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      #888;
@village_halo:      @place_halo;

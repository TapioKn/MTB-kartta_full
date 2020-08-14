/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(fonts); }

@sans_lt:           "Noto Sans Light";
@sans_lt_italic:    "Noto Sans Light Italic";

@sans:              "Noto Sans Regular";
@sans_italic:       "Noto Sans Italic";

@sans_bold:         "Noto Sans Bold";
@sans_bold_italic:  "Noto Sans Bold Italic";



/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@allotments:        #f5f5ef;
@beach:             #f6f7d7;
@building:          darken(#938f8b, 3%);
@cemetery:          #deedde;
@commercial:        #eef4f6;
@conservation:      #7ba36c;
@construction:      #cbc8c1;
@farmland:          #fafbe7;
@farmyard:          #f8f3d3;
@forest:            lighten(#bad0aa, 14%);
@golf_course:       #d7ffc4;
@grass:             #f1ffdc;
@grassland:         #e2f1cd;
@hedge:             #a2b88a;
@hospital:          #f9f2f4;
@industrial:        #eaeef1;
@land:              lighten(#f5f3ea, 3%);
@landfill:          #ccc3b3;
@meadow:            #f7fce9;
@military:          #f66d6a;
@park:              #ebffdc;
@parking:           #f2f2f3;
@parking-label:     #0241e2;
@plant_nursery:     #edf2e8;
@plaza:             #f6f6ed;
@residential:       #e8e7de; /*Previous backup: #f6f5ee*/
@retail:            #f6efef;
@rock:              #ecefea;
@school:            #fdfdfb;
@sports:            #d7ffc4;
@water:             desaturate(#8fb0c8, 20%); /*Previous backup: #a3c5de*/



/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

@motorway_fill:    #f6a42a;  //BACKUP: #ffc34d;
@motorway_case:    @motorway_fill * 0.1;

@trunk_fill:       #ffb84d;  //BACKUP: #ffe18f;
@trunk_case:       @trunk_fill * 0.1;

@primary_fill:     #fcd681;  //BACKUP: #ffe18f;
@primary_case:     @primary_fill * 0.1;

@mainroad_fill:    #fcd681;  //BACKUP: #ffe8aa;
@mainroad_case:    @mainroad_fill * 0.1;

@road_fill:        #ffffff;
@road_case:        #0b0b0b;

@path_line:        #000000;

@unpaved_fill:     #f2eade;
@unpaved_case:     #815b15;

@rail_regular:     #7c7b7b;
@rail_abandoned:   #bfbfbf;
@rail_fill:        #ffffff;

@aeroway:          @building;

@tunnel_opacity:   0.5;



// ==================================================================
// BICYCLE AND PEDESTRIAN WAY COLORS
// ==================================================================

// Dash colors
@footway:         #d9002f;
@cycleway:        #0021ff;
@forbidden:       #cc002c;

// Case colors
@cyclewaybg:      @land;
@footwaybg:       @cyclewaybg;
@mtbscale0:       #88f41c;
@mtbscale1:       #ebeb00;
@mtbscale2:       #f4a250;
@mtbscale3:       #ff5858;
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

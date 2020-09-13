/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(fonts); }

@sans_lt:           "Noto Sans Light";
@sans_lt_italic:    "Noto Sans Light Italic";

@sans:              "Noto Sans Medium";
@sans_italic:       "Noto Sans Medium Italic";

@sans_bold:         "Noto Sans Bold";
@sans_bold_italic:  "Noto Sans Bold Italic";



/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@allotments:        #f5f5ef;
@beach:             #f6f7d7;
@building:          darken(#938f8b, 3%);
@cemetery:          #c6dac6;
@commercial:        #eef4f6;
@conservation:      #7ba36c;
@construction:      #cbc8c1;
@farmland:          #faf4d2;
@farmyard:          #f0e9c2;
@forest:            lighten(#bad0aa, 16%);
@golf_course:       #d7ffc4;
@grass:             #f1ffdc;
@grassland:         #e2f1cd;
@hedge:             #a2b88a;
@hospital:          #f9f2f4;
@industrial:        #eaeef1;
@land:              lighten(#f5f3ea, 1%);
@landfill:          #ccc3b3;
@meadow:            #f4fad2;
@military:          #f66d6a;
@park:              #ebffdc;
@parking:           #f2f2f3;
@parking-label:     #0241e2;
@plant_nursery:     #edf2e8;
@plaza:             #f6f6ed;
@residential:       #e8e7de; /*Previous backup: #f6f5ee*/
@retail:            #f6efef;
@rock:              #dce0d9;
@school:            #fdfdfb;
@sports:            #d7ffc4;
@water:             desaturate(#8fb0c8, 20%); /*Previous backup: #a3c5de*/



/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

@motorway_fill:    #f6a42a;  //BACKUP: #ffc34d;
@motorway_case:    @motorway_fill * 0.1;
@motorway_farfill: #f6672a;

@trunk_fill:       #ffb84d;  //BACKUP: #ffe18f;
@trunk_case:       @trunk_fill * 0.1;
@trunk_farfill:    #ffad4d;

@primary_fill:     #fcd681;  //BACKUP: #ffe18f;
@primary_case:     @primary_fill * 0.1;
@primary_farfill:  #f5bf6f;

@mainroad_fill:    #fcd681;  //BACKUP: #ffe8aa;
@mainroad_case:    @mainroad_fill * 0.1;
@mainroad_farfill: @primary_farfill;

@residential_farfill: @primary_farfill;

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
@mtbscale0:       #75e009;
@mtbscale1:       #dfd600;
@mtbscale2:       #f4a250;
@mtbscale3:       #ff5858;
@mtbscale4:       #ee2099;
@mtbscale5:       #bf1cf5;
@mtbscale6:       #8100ac;

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

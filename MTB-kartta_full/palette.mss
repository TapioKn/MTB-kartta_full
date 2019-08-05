/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }
 
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
@building:          #938f8b;
@cemetery:          #deedde;
@commercial:        #eef4f6;
@conservation:      #7ba36c;
@construction:      #cbc8c1;
@farmland:          #fafbe7;
@farmyard:          #f8f3d3;
@forest:            lighten(#c9d4b4, 10%);
@golf_course:       #d7ffc4;
@grass:             #f1ffdc;
@grassland:         #e2f1cd;
@hedge:             #a2b88a;
@hospital:          #f9f2f4;
@industrial:        #eaeef1;
@land:              #f5f3ea;
@landfill:          #ccc3b3;
@meadow:            #f7fce9;
@military:          #f66d6a;
@park:              #ebffdc;
@parking:           #f2f2f3;
@parking-label:     #0241e2;
@plant_nursery:     #edf2e8;
@plaza:             #f6f6ed;
@residential:       #f6f5ee;
@retail:            #f6efef;
@rock:              #ecefea;
@school:            #fdfdfb;
@sports:            #d7ffc4;
@water:             #a3c5de; /*Previous backup: #b5cddf*/



/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

@motorway_fill:    #f6a42a;  //BACKUP: #ffc34d;
@motorway_case:    @motorway_fill * 0.3;

@trunk_fill:       #ffb84d;  //BACKUP: #ffe18f;
@trunk_case:       @trunk_fill * 0.3;

@primary_fill:     #fcd681;  //BACKUP: #ffe18f;
@primary_case:     @primary_fill * 0.3;

@mainroad_fill:    #fcd681;  //BACKUP: #ffe8aa;
@mainroad_case:    @mainroad_fill * 0.3;

@road_fill:        #ffffff;
@road_case:        @building * 0.3;

@unpaved_fill:     #fffbf4;
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

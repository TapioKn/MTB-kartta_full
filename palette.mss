/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(fonts); }

@sans_lt:"DejaVu Sans";
@sans_lt_italic:"DejaVu Sans Oblique"; 

@sans:"DejaVu Sans Book";
@sans_italic:"DejaVu Sans Oblique"; 

@sans_bold:"DejaVu Sans Bold";
@sans_bold_italic:"DejaVu Sans Bold Oblique";
 

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS 
/* ================================================================== */
 
@allotments:        #f5f5ef;
@beach:             #f6f7d7;
@bog:               #dee4d3; //lighten(#c1c8a8, 14%);
@border_zone:       #b255ff;
@building:          #8a8682; //darken(#938f8b, 3%);
@cemetery:          #c6dac6;
@commercial:        #eef4f6;
@conservation:      #7ba36c;
@construction:      #cbc8c1;
@farmland:          #faf4d2;
@farmyard:          #f0e9c2;
@fen:               #c8ddd4; //lighten(#9dc3b2, 14%);
@forest:            #e2e6d7; //lighten(#bad0aa, 16%);
@golf_course:       #caedb9;
@grass:             #d9ffc4; // #f1ffdc;
@grassland:         #e2f1cd;
@hedge:             #a2b88a;
@hospital:          #f9f2f4;
@industrial:        #eaeef1;
@land:              #f6f5ed; //lighten(#f5f3ea, 1%);
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
@sports:            #a0d193;
@swamp:             #d0e4e4; //lighten(#a8d0cf, 12%);
@water:             #c3d4e3; //#a0abb5  desaturate(#8fb0c8, 20%);
@waterway:          #98bbd8; //#8cacc7;



/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

@motorway_fill:    #f69e2a;  //BACKUP: #f6a42a;
@motorway_case:    @motorway_fill * 0.1;
@motorway_farfill: #f6672a;

@trunk_fill:       #ffad4d;  //BACKUP: #ffb84d;
@trunk_case:       @trunk_fill * 0.1;
@trunk_farfill:    #ffad4d;

@primary_fill:     #fcd281;  //BACKUP: #fcd681;
@primary_case:     @primary_fill * 0.1;
@primary_farfill:  #f5bf6f;

@mainroad_fill:    #fcd281;  //BACKUP: #fcd681;
@mainroad_case:    @mainroad_fill * 0.1;
@mainroad_farfill: @primary_farfill;

@residential_farfill: @primary_farfill;

@road_fill:        #ffffff;
@road_case:        #0b0b0b;

@path_line:        #000000;

@unpaved_fill:     #ded0bd;  //BACKUP: #f2eade;
@unpaved_case:     #473005;  //BACKUP: #815b15;

@rail_regular:     #7c7b7b;
@rail_disused:     #bfbfbf;
@rail_fill:        #ffffff;

@aeroway:          @building;

@tunnel_opacity:   0.5;



// ==================================================================
// BICYCLE AND PEDESTRIAN WAY COLORS
// ==================================================================

// Dash colors
@footway:         #a43820;
@cycleway:        #3046d7;
@forbidden:       #ff003d;

// Case colors
@cyclewaybg:      @land;
@footwaybg:       @cyclewaybg;
@mtbscale0-:      #8bd7ae;
@mtbscale0:       #75e009;
@mtbscale1:       #e3e800;
@mtbscale2:       #feb13e;
@mtbscale3:       #ff4454;
@mtbscale4:       #f20bab;
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

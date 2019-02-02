/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Calibri Regular";
@sans_lt_italic:    "Calibri Italic";

@sans:              "Calibri Regular";
@sans_italic:       "Calibri Italic";

@sans_bold:         "Calibri Bold";
@sans_bold_italic:  "Calibri Bold Italic";

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
@building:          desaturate(lighten(#595959, 3%), 0%);      /* #595959; */
@cemetery:          desaturate(lighten(#deedde, 3%), 5%);      /* #deedde; */
@commercial:        desaturate(lighten(#eef4f6, 3%), 0%);      /* #eef4f6; */
@conservation:      desaturate(lighten(#73a45b, 3%), 5%);      /* #73a45b; */
@construction:      desaturate(lighten(#ccc3b3, 3%), 10%);      /* #d5dbdd; */
@farmland:          desaturate(lighten(#faf8d9, 3%), 5%);      /* #faf8d9; */
@farmyard:          desaturate(lighten(#f8f3d3, 3%), 5%);      /* #f8f3d3; */
@forest:            desaturate(lighten(#c3d2ad, 3%), 5%);      /* #c3d2ad; */
@golf_course:       desaturate(lighten(#d0ffb3, 3%), 5%);      /* #d0ffb3; */
@grass:             desaturate(lighten(#eeffcc, 3%), 5%);      /* #eeffcc; */
@grassland:         desaturate(lighten(#dfeebf, 3%), 5%);      /* #eeffcc; */
@hedge:             desaturate(lighten(#9fb77b, 3%), 5%);      /* #9fb77b; */
@hospital:          desaturate(lighten(#fadbe1, 3%), 5%);      /* #ff0037; */
@industrial:        desaturate(lighten(#eaeff1, 3%), 0%);      /* #eaeff1; */
@land:              desaturate(lighten(#f5f5f5, 3%), 5%);      /* Base color for the map */ /* testing color: #f4c3f3;*/
@landfill:          desaturate(lighten(#ccc3b3, 3%), 5%);      /* #ccc3b3; */
@meadow:            desaturate(lighten(#f5fadb, 3%), 5%);      /* #f5fadb; */
@military:          desaturate(lighten(#ff5555, 3%), 5%);      /* #ff5555; */
@park:              desaturate(lighten(#e6ffcc, 3%), 5%);      /* #e6ffcc; */
@parking:           desaturate(lighten(#e9eaed, 3%), 5%);      /* #e9eaed; */
@plant_nursery:     desaturate(lighten(#e7eedd, 3%), 5%);      /* #e7eedd; */
@plaza:             desaturate(lighten(#f2f0e3, 3%), 0%);      /* #f2f0e3; */
@residential:       desaturate(lighten(#f6f5ee, 3%), 0%);      /* #f6f5ee; */
@rock:              desaturate(lighten(#e6e8e3, 3%), 0%);      /* #e6e8e3; */
@school:            desaturate(lighten(#f9f8f0, 3%), 5%);      /* #f9f8f0; */
@sports:            desaturate(lighten(#d0ffb3, 3%), 5%);      /* #d0ffb3; */
@water:             desaturate(lighten(#578fab, 10%), 20%);      /* #66aacc; */


/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:    #ffc34d;
@motorway_fill:    lighten(@motorway_line,5%);
@motorway_case:    @motorway_line * 0.5;

@trunk_line:       #ffe18f;
@trunk_fill:       lighten(@trunk_line,5%);
@trunk_case:       @trunk_line * 0.5;

@primary_line:     #ffe8aa;
@primary_fill:     lighten(@primary_line,5%);
@primary_case:     @primary_line * 0.5;

@mainroad_line:    #ffe18f;
@mainroad_fill:    lighten(@mainroad_line,5%);
@mainroad_case:    @mainroad_line * 0.5;

@road_line:        #8c8c8c;
@road_fill:        #ffffff;
@road_case:        @land * 0.5;

@rail_regular:     #7c7b7b;
@rail_abandoned:   #bfbfbf;
@rail_fill:        #ffffff;


@aeroway:          @building;

@tunnel_opacity:   0.5;


/* ================================================================== */
/* BICYCLE AND PEDESTRIAN WAYS
/* ================================================================== */

/* Dash colors                     BACKUP      */
@footway:         #d9002f;
@cycleway:        #0042ec;      /* #0241e2     */
@path:            #00f504;
@forbidden:       #cc002c;

/* Case colors                     BACKUP      */
@cyclewaybg:      #ffffff;      /* #ffffff     */
@footwaybg:       @cyclewaybg;  /*             */
@mtbscale0:       #88f41c;      /* #99f53d     */
@mtbscale1:       #f4f41d;      /* #f5f53d     */
@mtbscale2:       #f4881d;      /* #f5993d     */
@mtbscale3:       #f92828;      /* #f53d3d     */
@mtbscale4:       #ee2099;      /* #eb47a7     */
@mtbscale5:       #bf1cf5;      /* #c73df5     */

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           #324;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
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


#paths_and_tracks_bridge {
  line-width:1;
  line-color:#168;
}

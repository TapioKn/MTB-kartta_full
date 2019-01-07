/* ==================================================================
   ROAD & RAIL LINES
/* ================================================================== */


/* ================ LOW =================*/
/* At lower zoomlevels, just show major automobile routes: motorways
and trunks. */

#roads_low[zoom>=5][zoom<=8] {
  [type='motorway'] { line-color: @motorway_line; }
  [type='trunk'] { line-color: @trunk_line; }
  [zoom=5] {
    [type='motorway'] { line-width: 0.4; }
    [type='trunk'] { line-width: 0.2; } }
  [zoom=6] {
    [type='motorway'] { line-width: 0.5; }
    [type='trunk'] { line-width: 0.25; } }
  [zoom=7] {
    [type='motorway'] { line-width: 0.6; }
    [type='trunk'] { line-width: 0.3; } }
  [zoom=8] {
    [type='motorway'] { line-width: 1; }
    [type='trunk'] { line-width: 0.5; } }
}
/* ================ MID =================*/
/* At mid-level scales start to show primary and mainroad routes
as well. */

#roads_med[zoom>=9][zoom<=10] {
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_line;
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_line;
  }
  [type='primary'] { line-color: @primary_line; }
  [type='mainroad'] { line-color: @mainroad_line; }
  [type='mainroad'] { line-color: @road_line; }
  [zoom=9] {
    [type='motorway'],[type='trunk'] { line-width: 1.4; }
    [type='primary'],[type='mainroad'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.6; }
  }
  [zoom=10] {
    [type='motorway'],[type='trunk'] { line-width: 1.8; }
    [type='primary'],[type='mainroad'],
    [type='motorway_link'],[type='trunk_link'] { line-width: 0.8; }
  }
}

/* ================ HIGH ================*/
/* At higher levels the roads become more complex. We're now showing
more than just automobile routes - railways, footways, and cycleways
come in as well.

/* Road width variables that are used in road & bridge styles */
@rdz11_mot: 2;   @rdz11_tru: 2;   @rdz11_pri: 1.5;
@rdz12_mot: 3;   @rdz12_tru: 3.5; @rdz12_pri: 2.5;
@rdz13_mot: 4;   @rdz13_tru: 5;   @rdz13_pri: 4;
@rdz14_mot: 6;   @rdz14_tru: 6;   @rdz14_pri: 5;
@rdz15_mot: 8;   @rdz15_tru: 7;   @rdz15_pri: 6;
@rdz16_mot: 10;  @rdz16_tru: 8;   @rdz16_pri: 7;

@rdz11_mai: 1;   @rdz11_res: 0.5; @rdz11_ser: 0.5;
@rdz12_mai: 1.5; @rdz12_res: 1;   @rdz12_ser: 1;
@rdz13_mai: 3;   @rdz13_res: 1.5; @rdz13_ser: 1.2;
@rdz14_mai: 4;   @rdz14_res: 2;   @rdz14_ser: 1.8;
@rdz15_mai: 5;   @rdz15_res: 2.5; @rdz15_ser: 2.0;
@rdz16_mai: 6;   @rdz16_res: 4;   @rdz16_ser: 3.0;
/* Living streets defined in later code as 1 narrower than residential */

/* Cycleway case widths, line widths and dasharrays */
@cwz11_cw: 1.5;  @cwz11_lw: 1.0;  @cwz11_da: 4, 2;
@cwz12_cw: 1.5;  @cwz12_lw: 1.0;  @cwz12_da: 4, 2;
@cwz13_cw: 2.0;  @cwz13_lw: 1.5;  @cwz13_da: 4, 2;
@cwz14_cw: 2.0;  @cwz14_lw: 1.5;  @cwz14_da: 4, 2;
@cwz15_cw: 3.0;  @cwz15_lw: 1.6;  @cwz15_da: 4, 2;
@cwz16_cw: 4.0;  @cwz16_lw: 1.8;  @cwz16_da: 4, 2;

/* Footway case widths, line widths and dasharrays */
@fwz11_cw: 0.5;  @fwz11_lw: 0.0;  @fwz11_da: 3, 2;
@fwz12_cw: 0.5;  @fwz12_lw: 0.0;  @fwz12_da: 3, 2;
@fwz13_cw: 0.0;  @fwz13_lw: 0.0;  @fwz13_da: 3, 2;
@fwz14_cw: 1.5;  @fwz14_lw: 1.0;  @fwz14_da: 3, 2;
@fwz15_cw: 2.0;  @fwz15_lw: 1.2;  @fwz15_da: 3, 2;
@fwz16_cw: 3.0;  @fwz16_lw: 1.4;  @fwz16_da: 3, 2;

/* Path case widths, line widths and dasharrays */
@paz11_cw: 2.0;  @paz11_lw: 0.5;  @paz11_da: 3, 3;
@paz12_cw: 2.0;  @paz12_lw: 0.5;  @paz12_da: 3, 3;
@paz13_cw: 2.5;  @paz13_lw: 1.0;  @paz13_da: 3, 3;
@paz14_cw: 3.0;  @paz14_lw: 1.0;  @paz14_da: 3, 3;
@paz15_cw: 3.5;  @paz15_lw: 1.5;  @paz15_da: 4, 4;
@paz16_cw: 4.0;  @paz16_lw: 1.5;  @paz16_da: 5, 5;

/* Track case widths, line widths and dasharrays */
@trz11_cw: 2.0;  @trz11_lw: 0.5;  @trz11_da: 6, 1.5;
@trz12_cw: 2.0;  @trz12_lw: 0.5;  @trz12_da: 6, 1.5;
@trz13_cw: 2.5;  @trz13_lw: 1.0;  @trz13_da: 6, 1.5;
@trz14_cw: 3.0;  @trz14_lw: 1.0;  @trz14_da: 6, 1.5;
@trz15_cw: 3.5;  @trz15_lw: 1.5;  @trz15_da: 8, 2.0;
@trz16_cw: 4.0;  @trz16_lw: 1.5;  @trz16_da: 10, 2.5;

/* ---- Casing ----------------------------------------------- */

#roads_high::outline[zoom>=11][zoom<=20],
#tunnel[render='1_outline'][zoom>=11][zoom<=20],
#bridge[render='1_outline'][zoom>=11][zoom<=20]{
  /* -- Way casing colors -- */
  line-cap: round;
  [bridge=1],
  [tunnel=1] {
    line-cap: butt;
  }
  line-join: round;
  line-color: @road_case;
  [bridge=1] { line-color: @road_case * 0.8; }
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_case;
    [bridge=1] { line-color: @motorway_case * 0.8; }
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_case;
    [bridge=1] { line-color: @trunk_case * 0.8; }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_case;
    [bridge=1] { line-color: @primary_case * 0.8; }
  }
  [type='mainroad'],
  [type='mainroad_link'] {
    line-color: @mainroad_case;
    [bridge=1] { line-color: @mainroad_case * 0.8; }
  }
  [type='residential'],
  [type='living_street'],
  [type='service'] {
    line-color: @road_case;
    [bridge=1] { line-color: @road_case * 0.8; }
  }
  /* Cycleway and footway backgrounds are defined in one go with their lines later */
  /* as they use dashed lines and thus can't be constructed in the same way. Only  */
  /* their bridge casing can be defined here.                                      */
  [type='cycleway'],
  [type='footway'] {
    line-opacity: 0;
    [bridge=1] { line-color: @road_case * 0.8; line-opacity: 1;}
  }
  [type='railway'] {
    line-color: @rail_regular;
/*   [bridge=1] { line-color: @road_case; }*/
  }
  [type='rail_abandoned'] {
    line-color: @rail_abandoned;
/*  [bridge=1] { line-color: @rail_abandoned; }*/
  }
  [tunnel=1] { line-opacity: 0; }

  [type='other'], [type='path'] { line-opacity: 0; }

  /* -- Line casing widths -- */
  [zoom=11] {
    [type='motorway']      { line-width: @rdz11_mot + 2.5; }
    [type='motorway_link'] { line-width: @rdz11_mot; }
    [type='trunk']         { line-width: @rdz11_tru + 2; }
    [type='trunk_link']    { line-width: @rdz11_tru; }
    [type='primary']       { line-width: @rdz11_pri + 2; }
    [type='primary_link']  { line-width: @rdz11_pri; }
    [type='mainroad']      { line-width: @rdz11_mai + 2.5; }
    [type='mainroad_link'] { line-width: @rdz11_mai; }
    [type='residential']   { line-width: @rdz11_res + 2; }
    [type='living_street'] { line-width: @rdz11_res + 1; }
    /* No minor ways yet */
    [type='service']       { line-width: 0; }
    [type='cycleway']      { line-width: 0; }
	  [type='footway']       { line-width: 0; }
    [type='path']          { line-width: 0; }
    [type='railway']       { line-width: 0; }
    [type='rail_abandoned']{ line-width: 0; }
  }
  [zoom=12] {
    [type='motorway']      { line-width: @rdz12_mot + 2.5; }
    [type='motorway_link'] { line-width: @rdz12_mot; }
    [type='trunk']         { line-width: @rdz12_tru + 2; }
    [type='trunk_link']    { line-width: @rdz12_tru; }
    [type='primary']       { line-width: @rdz12_pri + 2; }
    [type='primary_link']  { line-width: @rdz12_pri; }
    [type='mainroad']      { line-width: @rdz12_mai + 2.5; }
    [type='mainroad_link'] { line-width: @rdz12_mai; }
    [type='residential']   { line-width: @rdz12_res + 2; }
    [type='living_street'] { line-width: @rdz12_res + 1; }
    /* No minor ways yet */
    [type='service']       { line-width: 0; }
    [type='cycleway']      { line-width: 0; }
	  [type='footway']       { line-width: 0; }
    [type='path']          { line-width: 0; }
    [type='railway']       { line-width: 0; }
    [type='rail_abandoned']{ line-width: 0; }
  }
  [zoom=13] {
    [type='motorway']      { line-width: @rdz13_mot + 2.5; }
    [type='motorway_link'] { line-width: @rdz13_mot; }
    [type='trunk']         { line-width: @rdz13_tru + 2; }
    [type='trunk_link']    { line-width: @rdz13_tru; }
    [type='primary']       { line-width: @rdz13_pri + 2; }
    [type='primary_link']  { line-width: @rdz13_pri; }
    [type='mainroad']      { line-width: @rdz13_mai + 2.5; }
    [type='mainroad_link'] { line-width: @rdz13_mai; }
    [type='residential']   { line-width: @rdz13_res + 2; }
    [type='living_street'] { line-width: @rdz13_res + 1; }
    [type='raceway']       { line-width: @rdz16_ser + 1; }
    [type='service']       { line-width: @rdz13_ser + 2; }
    /* No minor ways yet */
    [type='cycleway']      { line-width: 0; }
	  [type='footway']       { line-width: 0; }
    [type='path']          { line-width: 0; }
    [type='railway']       { line-width: 0; }
  }
  [zoom=14] {
    [type='motorway']      { line-width: @rdz14_mot + 2.5; }
    [type='motorway_link'] { line-width: @rdz14_mot; }
    [type='trunk']         { line-width: @rdz14_tru + 2; }
    [type='trunk_link']    { line-width: @rdz14_tru; }
    [type='primary']       { line-width: @rdz14_pri + 2; }
    [type='primary_link']  { line-width: @rdz14_pri; }
    [type='mainroad']      { line-width: @rdz14_mai + 2.5; }
    [type='mainroad_link'] { line-width: @rdz14_mai; }
    [type='residential']   { line-width: @rdz14_res + 2; }
    [type='living_street'] { line-width: @rdz16_res + 1; }
    [type='raceway']       { line-width: @rdz15_ser + 2; }
    [type='service']       { line-width: @rdz15_ser + 2; }
    [type='driveway']      { line-width: @rdz14_res + 0.5; }
    /* No minor ways yet */
    [type='cycleway']      { line-width: 0; }
	  [type='footway']       { line-width: 0; }
    [type='path']          { line-width: 0; }
    [type='railway']       { line-width: 0; }
    [type='rail_abandoned']{ line-width: 0; }
  }
  [zoom=15] {
    [type='motorway']      { line-width: @rdz15_mot + 2.5; }
    [type='motorway_link'] { line-width: @rdz15_mot; }
    [type='trunk']         { line-width: @rdz15_tru + 2; }
    [type='trunk_link']    { line-width: @rdz15_tru; }
    [type='primary']       { line-width: @rdz15_pri + 2; }
    [type='primary_link']  { line-width: @rdz15_pri; }
    [type='mainroad']      { line-width: @rdz15_mai + 2.5; }
    [type='mainroad_link'] { line-width: @rdz15_mai; }
    [type='residential']   { line-width: @rdz15_res + 2; }
    [type='living_street'] { line-width: @rdz15_res + 1; }
    [type='driveway']      { line-width: @rdz15_res + 0; }
    [type='raceway']       { line-width: @rdz15_ser + 1; }
    [type='service']       { line-width: @rdz15_ser + 2; }
    [type='cycleway']      { line-width: @cwz15_cw + 2; }
	  [type='footway']       { line-width: @fwz15_cw + 2; }
    [type='path']          { line-width: 0; }
    [type='railway']       { line-width: 1.5 + 2; }
    [type='rail_abandoned']{ line-width: 1.5 + 2; }
  }
  [zoom=16] {
    [type='motorway']      { line-width: @rdz16_mot + 2.5; }
    [type='motorway_link'] { line-width: @rdz16_mot; }
    [type='trunk']         { line-width: @rdz16_tru + 2; }
    [type='trunk_link']    { line-width: @rdz16_tru; }
    [type='primary']       { line-width: @rdz16_pri + 2; }
    [type='primary_link']  { line-width: @rdz16_pri; }
    [type='mainroad']      { line-width: @rdz16_mai + 2.5; }
    [type='mainroad_link'] { line-width: @rdz16_mai; }
    [type='residential']   { line-width: @rdz16_res + 2; }
    [type='living_street'] { line-width: @rdz16_res + 1; }
    [type='driveway']      { line-width: @rdz16_res + 0.5; }
    [type='raceway']       { line-width: @rdz16_ser + 1; }
    [type='service']       { line-width: @rdz16_ser + 2; }
    [type='cycleway']      { line-width: @cwz16_cw + 2; }
	  [type='footway']       { line-width: @fwz16_cw + 2; }
    [type='path']          { line-width: 0; }
    [type='railway']       { line-width: 2 + 2; }
    [type='rail_abandoned']{ line-width: 2 + 2; }
  }

  [type='other'],[type='path']      { line-opacity: 0; }
}

/* ---- Way fill lines ----------------------------------------------- */
#roads_high[zoom>=11][zoom<=20],
#tunnel[render='3_inline'][zoom>=11][zoom<=20],
#bridge[render='3_inline'][zoom>=11][zoom<=20]{
  /* -- Way fill line colors -- */
  line-color: @road_fill;
  [type='motorway'],
  [type='motorway_link'] {
    line-color: @motorway_fill;
    [tunnel=1] { line-opacity: @tunnel_opacity; }
  }
  [type='trunk'],
  [type='trunk_link'] {
    line-color: @trunk_fill;
    [tunnel=1] { line-opacity: @tunnel_opacity; }
  }
  [type='primary'],
  [type='primary_link'] {
    line-color: @primary_fill;
    [tunnel=1] { line-opacity: @tunnel_opacity; }
  }
  [type='mainroad'],
  [type='mainroad_link'] {
    line-color: @mainroad_fill;
    [tunnel=1] { line-opacity: @tunnel_opacity; }
  }
  [type='residential'],
  [type='living_street'],
  [type='service'] {
    line-color: @road_fill;
    [tunnel=1] { line-opacity: @tunnel_opacity; }
  }
  [type='parking_aisle'] {
	  line-color: lighten(@road_case, 50%);
  }
  [type='railway'],
  [type='rail_abandoned'] {
    line-color: @rail_fill;
    line-dasharray: 3,3;
    [type='subway'] { line-opacity: 0.67; }
    [zoom>15] { line-dasharray: 5,5; }
  }

  [type='parking_aisle'],
  [type='service'],
  [type='living_street'],
  [type='residential'],
  [type='mainroad'],
  [type='primary'],
  [type='trunk'],
  [type='motorway'] {
    line-cap: round;
    line-join: round;
  }
  /* No lines for paths/tracks, defined in their own style */
  [type='path'],
  [type='track'] {
    line-opacity: 0;
  }
  [tunnel=1] {
    line-cap: butt;
  }
/* Cycleways and footways defined completely in the next section      */
/* as they need two lines (solid and dashed on top of that). Doing    */
/* them here would cause problems with tunnel rendering.               */

  /* -- Way fill line widths -- */
  [zoom=11] {
     [type='motorway']      { line-width: @rdz11_mot; }
     [type='motorway_link'] { line-width: @rdz11_mot - 2; }
     [type='trunk']         { line-width: @rdz11_tru; }
     [type='trunk_link']    { line-width: @rdz11_tru - 2; }
     [type='primary']       { line-width: @rdz11_pri; }
     [type='primary_link']  { line-width: @rdz11_pri - 2; }
     [type='mainroad']      { line-width: @rdz11_mai; }
     [type='residential']   { line-width: @rdz11_res; }
     [type='living_street'] { line-width: @rdz11_res - 1; }
     [type='driveway']      { line-width: @rdz11_res - 2; }
     [type='service']       { line-width: @rdz11_ser; }
     [type='parking_aisle'] { line-width: @trz11_cw - 2; }
     [type='railway']       { line-width: 2; }
     [type='cycleway'] { ::cyclewaybg   { line-width: @cwz15_cw; line-color: @cyclewaybg; }
                         ::cyclewayline { line-color: @cycleway; line-width: @cwz11_lw; line-dasharray: @cwz11_da; }
     }
 	  [type='footway']  { ::footwaybg    { line-width: @fwz11_cw; line-color: @footwaybg; }
                         ::footwayline  { line-color: @footway;  line-width: @fwz11_lw; line-dasharray: @fwz11_da; }
     }
   }
   [zoom=12] {
     [type='motorway']      { line-width: @rdz12_mot; }
     [type='motorway_link'] { line-width: @rdz12_mot - 2; }
     [type='trunk']         { line-width: @rdz12_tru; }
     [type='trunk_link']    { line-width: @rdz12_tru - 2; }
     [type='primary']       { line-width: @rdz12_pri; }
     [type='primary_link']  { line-width: @rdz12_pri - 2; }
     [type='mainroad']      { line-width: @rdz12_mai; }
     [type='residential']   { line-width: @rdz12_res; }
     [type='living_street'] { line-width: @rdz12_res - 1; }
     [type='driveway']      { line-width: @rdz12_res - 2; }
     [type='service']       { line-width: @rdz12_ser; }
     [type='parking_aisle'] { line-width: @trz12_cw - 2; }
     [type='railway']       { line-width: 2; }
     [type='cycleway'] { ::cyclewaybg   { line-width: @cwz12_cw; line-color: @cyclewaybg; }
                         ::cyclewayline { line-color: @cycleway; line-width: @cwz12_lw; line-dasharray: @cwz12_da; }
     }
 	  [type='footway']  { ::footwaybg    { line-width: @fwz12_cw; line-color: @footwaybg; }
                         ::footwayline  { line-color: @footway;  line-width: @fwz12_lw; line-dasharray: @fwz12_da; }
     }
   }
   [zoom=13] {
     [type='motorway']      { line-width: @rdz13_mot; }
     [type='motorway_link'] { line-width: @rdz13_mot - 2; }
     [type='trunk']         { line-width: @rdz13_tru; }
     [type='trunk_link']    { line-width: @rdz13_tru - 2; }
     [type='primary']       { line-width: @rdz13_pri; }
     [type='primary_link']  { line-width: @rdz13_pri - 2; }
     [type='mainroad']      { line-width: @rdz13_mai; }
     [type='residential']   { line-width: @rdz13_res; }
     [type='living_street'] { line-width: @rdz13_res - 1; }
     [type='driveway']      { line-width: @rdz13_res - 2; }
     [type='service']       { line-width: @rdz13_ser - 1; }
     [type='service']       { line-width: @rdz13_ser; }
     [type='parking_aisle'] { line-width: @trz13_cw - 2; }
     [type='railway']       { line-width: 2; }
     [type='cycleway'] { ::cyclewaybg   { line-width: @cwz15_cw; line-color: @cyclewaybg; }
                         ::cyclewayline { line-color: @cycleway; line-width: @cwz13_lw; line-dasharray: @cwz13_da; }
     }
 	  [type='footway']  { ::footwaybg    { line-width: @fwz13_cw; line-color: @footwaybg; }
                         ::footwayline  { line-color: @footway;  line-width: @fwz13_lw; line-dasharray: @fwz13_da; }
     }
   }
   [zoom=14] {
     [type='motorway']      { line-width: @rdz14_mot; }
     [type='motorway_link'] { line-width: @rdz14_mot - 2; }
     [type='trunk']         { line-width: @rdz14_tru; }
     [type='trunk_link']    { line-width: @rdz14_tru - 2; }
     [type='primary']       { line-width: @rdz14_pri; }
     [type='primary_link']  { line-width: @rdz14_pri - 2; }
     [type='mainroad']      { line-width: @rdz14_mai; }
     [type='residential']   { line-width: @rdz14_res; }
     [type='living_street'] { line-width: @rdz14_res - 0.5; }
     [type='driveway']      { line-width: @rdz14_res - 1; }
     [type='service']       { line-width: @rdz14_ser - 1; }
     [type='service']       { line-width: @rdz14_ser; }
     [type='parking_aisle'] { line-width: @trz14_cw - 2; }
     [type='railway']       { line-width: 2; }
     [type='cycleway'] { ::cyclewaybg   { line-width: @cwz15_cw; line-color: @cyclewaybg; }
                         ::cyclewayline { line-color: @cycleway; line-width: @cwz14_lw; line-dasharray: @cwz14_da; }
     }
     /* Cycleways/footways under construction zlvl>=14 */
 	  [type='footway']  { ::footwaybg    { line-width: @fwz14_cw; line-color: @footwaybg; }
                         ::footwayline  { line-color: @footway;  line-width: @fwz14_lw; line-dasharray: @fwz14_da; }
     }
     [type='steps']         { line-width: @cwz16_cw; line-color: @footway; line-dasharray: 1, 2.5; }
   }
   [zoom=15] {
     [type='motorway']      { line-width: @rdz15_mot; }
     [type='motorway_link'] { line-width: @rdz15_mot - 2; }
     [type='trunk']         { line-width: @rdz15_tru; }
     [type='trunk_link']    { line-width: @rdz15_tru - 2; }
     [type='primary']       { line-width: @rdz15_pri; }
     [type='primary_link']  { line-width: @rdz15_pri - 2; }
     [type='mainroad']      { line-width: @rdz15_mai; }
     [type='residential']   { line-width: @rdz15_res; }
     [type='living_street'] { line-width: @rdz15_res - 0.5; }
     [type='driveway']      { line-width: @rdz15_res - 1; }
     [type='service']       { line-width: @rdz15_ser - 1; }
     [type='service']       { line-width: @rdz15_ser; }
     [type='parking_aisle'] { line-width: @trz15_cw - 2; }
     [type='railway']       { line-width: 2; }
     [type='cycleway'] { ::cyclewaybg   { line-width: @cwz15_cw; line-color: @cyclewaybg; }
                         ::cyclewayline { line-color: @cycleway; line-width: @cwz15_lw; line-dasharray: @cwz15_da; }
     }
 	  [type='footway']  { ::footwaybg    { line-width: @fwz15_cw; line-color: @footwaybg; }
                         ::footwayline  { line-color: @footway;  line-width: @fwz15_lw; line-dasharray: @fwz15_da; }
     }
     [type='steps']         { line-width: @cwz16_cw; line-color: @footway; line-dasharray: 1, 2.5; }
   }
   [zoom=16] {
     [type='motorway']      { line-width: @rdz16_mot; }
     [type='motorway_link'] { line-width: @rdz16_mot - 2; }
     [type='trunk']         { line-width: @rdz16_tru; }
     [type='trunk_link']    { line-width: @rdz16_tru - 2; }
     [type='primary']       { line-width: @rdz16_pri; }
     [type='primary_link']  { line-width: @rdz16_pri - 2; }
     [type='mainroad']      { line-width: @rdz16_mai; }
     [type='residential']   { line-width: @rdz16_res; }
     [type='living_street'] { line-width: @rdz16_res - 0.5; }
     [type='driveway']      { line-width: @rdz16_res - 1; }
     [type='service']       { line-width: @rdz16_ser - 1; }
     [type='service']       { line-width: @rdz16_ser; }
     [type='parking_aisle'] { line-width: @trz16_cw - 2; }
     [type='railway']       { line-width: 2; }
     [type='cycleway']      { ::cyclewaybg   { line-width: @cwz16_cw; line-color: @cyclewaybg; }
                              ::cyclewayline { line-color: @cycleway; line-width: @cwz16_lw; line-dasharray: @cwz16_da; }
     }
 	   [type='footway']       { ::footwaybg    { line-width: @fwz16_cw; line-color: @footwaybg; }
                              ::footwayline  { line-color: @footway;  line-width: @fwz16_lw; line-dasharray: 1, 2; }
     }

     /* XXXXXXXXXXXXXXXX   HUOM, BICYCLE=NO HUOMIOINTI TULISI OLLA VAIN, JOS EI OLE MTB:SCALE-TAGIA XXXXXXXXXXXXXXXX */
     /* XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX */

    /* [type='cycleway']  	  { ::cyclewaybg    { line-width: @cwz16_cw; line-color: @footwaybg; }
                              ::cyclewayline  { line-color: @footway;  line-width: @cwz16_lw; line-dasharray: @cwz16_da; }
     }*/
     [type='steps']         { line-width: @cwz16_cw; line-color: @footway; line-dasharray: 1, 2.5; }
   }
   [type='other']           { line-color: #ff00e6; line-opacity: 0; }
 }




/* ---- Bridge fill for railways -------------------------------- */
#tunnel[render='2_line'][zoom>=14][zoom<=20],
#bridge[render='2_line'][zoom>=14][zoom<=20]{
  [type='railway'] {
    line-color: @rail_regular;
    line-join: round;
    [zoom=14] { line-width: 1 + 1; }
    [zoom=15] { line-width: 1.5 + 1; }
    [zoom=16] { line-width: 2 + 1; }
  }
  [type='other']        { line-opacity: 0; }
}



















/* ---- Ways under construction ------------------------------------- */
#roads_construction [zoom>=12] {
  ::case {
    /* -- Way under construction casing colors -- */
    line-cap: round;
    line-join: round;
    line-color: @road_case;
    line-opacity: 0;
    [type='motorway'],
    [type='motorway_link'] {
      line-color: lighten(@motorway_case,20%);
      line-opacity: 1;
    }
    [type='trunk'],
    [type='trunk_link'] {
      line-color: lighten(@trunk_case,20%);
      line-opacity: 1;
    }
    [type='primary'],
    [type='primary_link'] {
      line-color: lighten(@primary_case,20%);
      line-opacity: 1;
    }
    [type='mainroad'],
    [type='mainroad_link'] {
      line-color: lighten(@mainroad_case,20%);
      line-opacity: 1;
    }
    [type='residential'],
    [type='living_street'],
    [type='service'] {
      line-color: lighten(@road_case,20%);
      line-opacity: 1;
    }

    /* -- Way under construction casing widths -- */
    [zoom=12] {
      line-width: 0;
      [type='motorway']      { line-width: @rdz12_mot + 2.5; }
      [type='motorway_link'] { line-width: @rdz12_mot; }
      [type='trunk']         { line-width: @rdz12_tru + 2; }
      [type='trunk_link']    { line-width: @rdz12_tru; }
      [type='primary']       { line-width: @rdz12_pri + 2; }
      [type='primary_link']  { line-width: @rdz12_pri; }
      [type='mainroad']      { line-width: @rdz12_mai + 2.5; }
      [type='mainroad_link'] { line-width: @rdz12_mai; }
      [type='residential']   { line-width: @rdz12_res + 2; }
      [type='living_street'] { line-width: @rdz12_res + 1; }
    }
    [zoom=13] {
      line-width: 0;
      [type='motorway']      { line-width: @rdz13_mot + 2.5; }
      [type='motorway_link'] { line-width: @rdz13_mot; }
      [type='trunk']         { line-width: @rdz13_tru + 2; }
      [type='trunk_link']    { line-width: @rdz13_tru; }
      [type='primary']       { line-width: @rdz13_pri + 2; }
      [type='primary_link']  { line-width: @rdz13_pri; }
      [type='mainroad']      { line-width: @rdz13_mai + 2.5; }
      [type='mainroad_link'] { line-width: @rdz13_mai; }
      [type='residential']   { line-width: @rdz13_res + 2; }
      [type='living_street'] { line-width: @rdz16_res + 1; }
    }
    [zoom=14] {
      line-width: 0;
      [type='motorway']      { line-width: @rdz14_mot + 2.5; }
      [type='motorway_link'] { line-width: @rdz14_mot; }
      [type='trunk']         { line-width: @rdz14_tru + 2; }
      [type='trunk_link']    { line-width: @rdz14_tru; }
      [type='primary']       { line-width: @rdz14_pri + 2; }
      [type='primary_link']  { line-width: @rdz14_pri; }
      [type='mainroad']      { line-width: @rdz14_mai + 2.5; }
      [type='mainroad_link'] { line-width: @rdz14_mai; }
      [type='residential']   { line-width: @rdz14_res + 2; }
      [type='living_street'] { line-width: @rdz16_res + 1; }
    }
    [zoom=15] {
      line-width: 0;
      [type='motorway']      { line-width: @rdz15_mot + 2.5; }
      [type='motorway_link'] { line-width: @rdz15_mot; }
      [type='trunk']         { line-width: @rdz15_tru + 2; }
      [type='trunk_link']    { line-width: @rdz15_tru; }
      [type='primary']       { line-width: @rdz15_pri + 2; }
      [type='primary_link']  { line-width: @rdz15_pri; }
      [type='mainroad']      { line-width: @rdz15_mai + 2.5; }
      [type='mainroad_link'] { line-width: @rdz15_mai; }
      [type='residential']   { line-width: @rdz15_res + 2; }
      [type='living_street'] { line-width: @rdz15_res + 1; }
      [type='service']       { line-width: @rdz15_ser + 2; }
      [type='cycleway']      { line-width: @cwz15_cw + 2; }
      [type='footway']       { line-width: @fwz15_cw + 2; }
    }
    [zoom=16] {
      line-width: 0;
      [type='motorway']      { line-width: @rdz16_mot + 2.5; }
      [type='motorway_link'] { line-width: @rdz16_mot; }
      [type='trunk']         { line-width: @rdz16_tru + 2; }
      [type='trunk_link']    { line-width: @rdz16_tru; }
      [type='primary']       { line-width: @rdz16_pri + 2; }
      [type='primary_link']  { line-width: @rdz16_pri; }
      [type='mainroad']      { line-width: @rdz16_mai + 2.5; }
      [type='mainroad_link'] { line-width: @rdz16_mai; }
      [type='residential']   { line-width: @rdz16_res + 2; }
      [type='living_street'] { line-width: @rdz16_res + 1; }
      [type='driveway']      { line-width: @rdz16_res + 0; }
      [type='service']       { line-width: @rdz16_ser + 2; }
      [type='cycleway']      { line-width: @cwz16_cw + 2; }
      [type='footway']       { line-width: @fwz16_cw + 2; }
    }
  }
  ::line-background {
    line-color: @land;
    /* Way under construction dashed line background widths */
    [zoom=12] {
      [type='motorway']      { line-width: @rdz12_mot; }
      [type='motorway_link'] { line-width: @rdz12_mot - 2; }
      [type='trunk']         { line-width: @rdz12_tru; }
      [type='trunk_link']    { line-width: @rdz12_tru - 2; }
      [type='primary']       { line-width: @rdz12_pri; }
      [type='primary_link']  { line-width: @rdz12_pri - 2; }
      [type='mainroad']      { line-width: @rdz12_mai; }
      [type='residential']   { line-width: @rdz12_res; }
      [type='living_street'] { line-width: @rdz12_res - 1; }
      [type='driveway']      { line-width: @rdz12_res - 2; }
      [type='service']       { line-width: @rdz12_ser; }
    }
    [zoom=13] {
      [type='motorway']      { line-width: @rdz13_mot; }
      [type='motorway_link'] { line-width: @rdz13_mot - 2; }
      [type='trunk']         { line-width: @rdz13_tru; }
      [type='trunk_link']    { line-width: @rdz13_tru - 2; }
      [type='primary']       { line-width: @rdz13_pri; }
      [type='primary_link']  { line-width: @rdz13_pri - 2; }
      [type='mainroad']      { line-width: @rdz13_mai; }
      [type='residential']   { line-width: @rdz13_res; }
      [type='living_street'] { line-width: @rdz13_res - 1; }
      [type='driveway']      { line-width: @rdz13_res - 2; }
      [type='service']       { line-width: @rdz13_ser; }
      [type='parking_aisle'] { line-width: @trz13_cw - 2; }
    }
    [zoom=14] {
      [type='motorway']      { line-width: @rdz14_mot; }
      [type='motorway_link'] { line-width: @rdz14_mot - 2; }
      [type='trunk']         { line-width: @rdz14_tru; }
      [type='trunk_link']    { line-width: @rdz14_tru - 2; }
      [type='primary']       { line-width: @rdz14_pri; }
      [type='primary_link']  { line-width: @rdz14_pri - 2; }
      [type='mainroad']      { line-width: @rdz14_mai; }
      [type='residential']   { line-width: @rdz14_res; }
      [type='living_street'] { line-width: @rdz14_res - 1; }
      [type='driveway']      { line-width: @rdz14_res - 2; }
      [type='service']       { line-width: @rdz14_ser; }
      [type='parking_aisle'] { line-width: @trz14_cw - 2; }
    }
    [zoom=15] {
      [type='motorway']      { line-width: @rdz15_mot; }
      [type='motorway_link'] { line-width: @rdz15_mot - 2; }
      [type='trunk']         { line-width: @rdz15_tru; }
      [type='trunk_link']    { line-width: @rdz15_tru - 2; }
      [type='primary']       { line-width: @rdz15_pri; }
      [type='primary_link']  { line-width: @rdz15_pri - 2; }
      [type='mainroad']      { line-width: @rdz15_mai; }
      [type='residential']   { line-width: @rdz15_res; }
      [type='living_street'] { line-width: @rdz15_res - 1; }
      [type='driveway']      { line-width: @rdz15_res - 2; }
      [type='service']       { line-width: @rdz15_ser; }
      [type='parking_aisle'] { line-width: @trz15_cw - 2; }
    }
    [zoom=16] {
      [type='motorway']      { line-width: @rdz16_mot; }
      [type='motorway_link'] { line-width: @rdz16_mot - 2; }
      [type='trunk']         { line-width: @rdz16_tru; }
      [type='trunk_link']    { line-width: @rdz16_tru - 2; }
      [type='primary']       { line-width: @rdz16_pri; }
      [type='primary_link']  { line-width: @rdz16_pri - 2; }
      [type='mainroad']      { line-width: @rdz16_mai; }
      [type='residential']   { line-width: @rdz16_res; }
      [type='living_street'] { line-width: @rdz16_res - 1; }
      [type='driveway']      { line-width: @rdz16_res - 2; }
      [type='service']       { line-width: @rdz16_ser; }
      [type='parking_aisle'] { line-width: @trz16_cw - 2; }
    }
  }
  ::line {
    /* -- Way under construction line fill colors -- */
    line-color: @road_fill;
    [type='motorway'],
    [type='motorway_link'] {
      line-color: @motorway_fill;
    }
    [type='trunk'],
    [type='trunk_link'] {
      line-color: @trunk_fill;
    }
    [type='primary'],
    [type='primary_link'] {
      line-color: @primary_fill;
      line-dasharray: 5, 5;
    }
    [type='mainroad'],
    [type='mainroad_link'] {
      line-color: @mainroad_fill;
      line-dasharray: 5, 5;
    }
    [type='residential'],
    [type='living_street'],
    [type='driveway'],
    [type='service'] {
      line-color: @road_fill;
      line-dasharray: 5, 5;
    }

    /* -- Way under construction dashed line widths -- */
    [zoom=12] {
      [type='motorway']      { line-width: @rdz12_mot; }
      [type='motorway_link'] { line-width: @rdz12_mot - 2; }
      [type='trunk']         { line-width: @rdz12_tru; }
      [type='trunk_link']    { line-width: @rdz12_tru - 2; }
      [type='primary']       { line-width: @rdz12_pri; }
      [type='primary_link']  { line-width: @rdz12_pri - 2; }
      [type='mainroad']      { line-width: @rdz12_mai; }
      [type='residential']   { line-width: @rdz12_res; }
      [type='living_street'] { line-width: @rdz12_res - 1; }
      [type='driveway']      { line-width: @rdz12_res - 2; }
      [type='service']       { line-width: @rdz12_ser; }
      [type='cycleway']      { line-color: @cycleway; line-width: @cwz12_lw; line-dasharray: 1, 5; }
      [type='footway']       { line-color: @footway;  line-width: @fwz12_lw; line-dasharray: 1, 5; }
    }
    [zoom=13] {
      [type='motorway']      { line-width: @rdz13_mot; }
      [type='motorway_link'] { line-width: @rdz13_mot - 2; }
      [type='trunk']         { line-width: @rdz13_tru; }
      [type='trunk_link']    { line-width: @rdz13_tru - 2; }
      [type='primary']       { line-width: @rdz13_pri; }
      [type='primary_link']  { line-width: @rdz13_pri - 2; }
      [type='mainroad']      { line-width: @rdz13_mai; }
      [type='residential']   { line-width: @rdz13_res; }
      [type='living_street'] { line-width: @rdz13_res - 1; }
      [type='driveway']      { line-width: @rdz13_res - 2; }
      [type='service']       { line-width: @rdz13_ser; }
      [type='parking_aisle'] { line-width: @trz13_cw - 2; }
      [type='cycleway']      { line-color: @cycleway; line-width: @cwz13_lw; line-dasharray: 1, 5; }
      [type='footway']       { line-color: @footway;  line-width: @fwz13_lw; line-dasharray: 1, 5; }
    }
    [zoom=14] {
      [type='motorway']      { line-width: @rdz14_mot; }
      [type='motorway_link'] { line-width: @rdz14_mot - 2; }
      [type='trunk']         { line-width: @rdz14_tru; }
      [type='trunk_link']    { line-width: @rdz14_tru - 2; }
      [type='primary']       { line-width: @rdz14_pri; }
      [type='primary_link']  { line-width: @rdz14_pri - 2; }
      [type='mainroad']      { line-width: @rdz14_mai; }
      [type='residential']   { line-width: @rdz14_res; }
      [type='living_street'] { line-width: @rdz14_res - 1; }
      [type='driveway']      { line-width: @rdz14_res - 2; }
      [type='service']       { line-width: @rdz14_ser; }
      [type='parking_aisle'] { line-width: @trz14_cw - 2; }
      [type='cycleway']      { line-color: @cycleway; line-width: @cwz14_lw; line-dasharray: 1, 5; }
      [type='footway']       { line-color: @footway;  line-width: @fwz14_lw; line-dasharray: 1, 5; }
    }
    [zoom=15] {
      [type='motorway']      { line-width: @rdz15_mot; }
      [type='motorway_link'] { line-width: @rdz15_mot - 2; }
      [type='trunk']         { line-width: @rdz15_tru; }
      [type='trunk_link']    { line-width: @rdz15_tru - 2; }
      [type='primary']       { line-width: @rdz15_pri; }
      [type='primary_link']  { line-width: @rdz15_pri - 2; }
      [type='mainroad']      { line-width: @rdz15_mai; }
      [type='residential']   { line-width: @rdz15_res; }
      [type='living_street'] { line-width: @rdz15_res - 1; }
      [type='driveway']      { line-width: @rdz15_res - 2; }
      [type='service']       { line-width: @rdz15_ser; }
      [type='parking_aisle'] { line-width: @trz15_cw - 2; }
      [type='cycleway']      { line-color: @cycleway; line-width: @cwz15_lw; line-dasharray: 1, 5; }
      [type='footway']       { line-color: @footway;  line-width: @fwz15_lw; line-dasharray: 1, 5; }
    }
    [zoom=16] {
      [type='motorway']      { line-width: @rdz16_mot; }
      [type='motorway_link'] { line-width: @rdz16_mot - 2; }
      [type='trunk']         { line-width: @rdz16_tru; }
      [type='trunk_link']    { line-width: @rdz16_tru - 2; }
      [type='primary']       { line-width: @rdz16_pri; }
      [type='primary_link']  { line-width: @rdz16_pri - 2; }
      [type='mainroad']      { line-width: @rdz16_mai; }
      [type='residential']   { line-width: @rdz16_res; }
      [type='living_street'] { line-width: @rdz16_res - 1; }
      [type='driveway']      { line-width: @rdz16_res - 2; }
      [type='service']       { line-width: @rdz16_ser; }
      [type='parking_aisle'] { line-width: @trz16_cw - 2; }
      [type='cycleway']      { line-color: @cycleway; line-width: @cwz16_lw; line-dasharray: 1, 5; }
      [type='footway']       { line-color: @footway;  line-width: @fwz16_lw; line-dasharray: 1, 5; }
    }
  }
}






























/* ---- Turning Circles --------------------------------------------- */
#turning_circle_case[zoom>=14] {
  marker-fill:@road_fill;
  marker-line-color:@road_case;
  marker-line-width:2;
  marker-allow-overlap:true;
}
#turning_circle_fill[zoom>=14] {
  marker-fill:@road_fill;
  marker-line-width:0;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}
#turning_circle_case,
#turning_circle_fill {
  [zoom=14] { marker-width:@rdz14_res * 1.1; }
  [zoom=15] { marker-width:@rdz15_res * 1.1; }
  [zoom=16] { marker-width:@rdz16_res * 1.1; }
}

/* ================================================================== */
/* AEROWAYS
/* ================================================================== */
#aeroway[zoom>9] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=10]{ line-width:1; }
    [zoom=11]{ line-width:2; }
    [zoom=12]{ line-width:3; }
    [zoom=13]{ line-width:5; }
    [zoom=14]{ line-width:7; }
    [zoom=15]{ line-width:11; }
    [zoom=16]{ line-width:15; }
    [zoom=17]{ line-width:19; }
    [zoom>17]{ line-width:23; }
  }
  [type='taxiway'] {
    [zoom=10]{ line-width:0.2; }
    [zoom=11]{ line-width:0.2; }
    [zoom=12]{ line-width:0.2; }
    [zoom=13]{ line-width:1; }
    [zoom=14]{ line-width:1.5; }
    [zoom=15]{ line-width:2; }
    [zoom=16]{ line-width:3; }
    [zoom=17]{ line-width:4; }
    [zoom>17]{ line-width:5; }
  }
}

/******************************************************************* */

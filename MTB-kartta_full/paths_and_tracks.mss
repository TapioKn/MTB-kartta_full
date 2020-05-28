/*####################################################################################*/
/* PATHS AND TRACKS NOT ON BRIDGES OR IN TUNNELS                                      */
/*####################################################################################*/

#paths_and_tracks {
  [type='path'],
  [type='track'] {
    /*
    ['mtb:scale'!='X'] {
    ::pthalos {
      line-opacity: 0.2;
      line-color: #ffffff;
      line-width: @paz12_cw;
      [zoom<=12] { line-width: @paz12_cw + 1.0;
                   [width<=0.5] { line-width: @paz12_cw / 1.7 + 1.0; }
      }
      [zoom=13]  { line-width: @paz13_cw + 1.5;
                   [width<=0.5] { line-width: @paz13_cw / 1.7 + 1.5; }
      }
      [zoom=14]  { line-width: @paz14_cw + 2.0;
                   [width<=0.5] { line-width: @paz14_cw / 1.7 + 2.0; }
      }
      [zoom=15]  { line-width: @paz15_cw + 2.5;
                   [width<=0.5] { line-width: @paz15_cw / 1.7 + 2.5; }
                   [width>=0.9] { line-width: @paz15_cw * 1.5 + 2.5; }
      }
      [zoom>=16] { line-width: @paz16_cw + 3.0;
                   [width<=0.5] { line-width: @paz16_cw / 2.0 + 3.0; }
                   [width>=0.9] { line-width: @paz16_cw * 1.5 + 2.5; }
      }
      ['noexit'='yes'] {line-opacity: 0; }
      }
    }
    */
    ::ptcases {
    line-opacity: 0;
      ['mtb:scale'='0'],['mtb:scale'='0-'],['mtb:scale'='0+'] { line-color: @mtbscale0; line-opacity: 1; }
      ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] { line-color: @mtbscale1; line-opacity: 1; }
      ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] { line-color: @mtbscale2; line-opacity: 1; }
      ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] { line-color: @mtbscale3; line-opacity: 1; }
      ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] { line-color: @mtbscale4; line-opacity: 1; }
      ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] { line-color: @mtbscale5; line-opacity: 1; }
      ['noexit'='yes'] { line-opacity: 0; }

      [zoom>=16] {
	    line-width: @paz16_cw;
        [width<=0.5] { line-width: @paz16_cw / 2.0; }
        [width>=0.9] { line-width: @paz16_cw * 1.6; }
        [type='track'] { line-width: @paz16_cw * 2.0; }
      }
      [zoom<=15] {
	    line-width: @paz15_cw;
        [width<=0.5] { line-width: @paz15_cw / 1.7; }
        [width>=0.9] { line-width: @paz15_cw * 1.5; }
        [type='track'] { line-width: @paz15_cw * 1.7; }
      }
      [zoom<=14] {
	    line-width: @paz14_cw;
        [width<=0.5] { line-width: @paz14_cw / 1.7; }
        [type='track'] { line-width: @paz14_cw * 1.2; }
      }
      [zoom<=13] {
	    line-width: @paz13_cw;
        [width<=0.5] { line-width: @paz13_cw / 1.7; }
        [type='track'] { line-width: @paz13_cw * 1.2; }
      }
      [zoom<=12] {
	    line-width: @paz12_cw;
        [width<=0.5] { line-width: @paz12_cw / 1.7; }
        [type='track'] { line-width: @paz12_cw * 1.2; }
      }
    }
    ::ptlines {
      [seasonal='winter'] { line-opacity: 0.5; }
      ['noexit'='yes'] { line-opacity: 0.5; }
      [zoom>=16] {
	    line-width: @paz16_lw;
        [type='path']  { line-dasharray: @paz16_da; }
        [width<=0.5] { line-width: @paz16_lw / 2; }
        [width>=0.9] { line-width: @paz16_lw * 1.7; line-color: @path_line; line-dasharray: 5, 5; }    /* Widest trails distinguished only on closer zoom levels */
        [width>=2.0],[type='track'] { line-dasharray: @trz16_da;  line-width: @paz16_lw * 2.0; line-color: @path_line; } /* Tracks as continuous lines, fix codes when finished */
        [visibility='bad'] { line-dasharray: 1, 5; }
        ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images/forbidden-line-z16.png');  }
      }
      [zoom=15] {
	    line-width: @paz15_lw;
      [type='path']  { line-dasharray: @paz16_da; }
      [width<=0.5] { line-width: @paz15_lw / 2; }
      [width>=0.9] { line-width: @paz15_lw * 1.7; line-color: @path_line; line-dasharray: 5, 5; }    /* Widest trails distinguished only on closer zoom levels */
      [width>=2.0],[type='track'] { line-dasharray: @trz15_da;  line-width: @paz15_lw * 2.0; line-color: @path_line; } /* Tracks as continuous lines, fix codes when finished */
      [visibility='bad'] { line-dasharray: 1, 5; }
      ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images/forbidden-line-z15.png');  }
      }
      [zoom=14] {
	    line-width: @paz14_lw;
        [width<=0.5] { line-width: @paz14_lw / 2; }
        [type='path']  { line-dasharray: @paz14_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz14_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1'],[access='no'],[access='private']  { line-pattern-file: url('images\forbidden-line-z14.png');  }
      }
      [zoom=13] {
	    line-width: @paz13_lw;
        [width<=0.5] { line-width: @paz13_lw / 2; }
        [type='path']  { line-dasharray: @paz13_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz13_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images\forbidden-line-z13.png');  }
      }
      [zoom<=12] {
	    line-width: @paz12_lw;
        [width<=0.5] { line-width: @paz12_lw / 2; }
        [type='path']  { line-dasharray: @paz12_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz12_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images\forbidden-line-z13.png');  }
      }
    [visibility='bad'] { line-dasharray: 2, 2; }
    }
    ::ptoverlays {
      [obstacle='vegetation'] {
      line-pattern-file: url('./images/obstacle_vegetation-wide.png');
      [width<=0.5] { line-pattern-file: url('./images/obstacle_vegetation-narrow.png'); }
      }
      [surface='mud'] {
      line-pattern-file: url('./images/surface_mud-wide.png');
      [width<=0.5] { line-pattern-file: url('./images/surface_mud-narrow.png'); }
      }
      [obstacle='vegetation'][surface='mud'] {
      line-pattern-file: url('./images/obstacle_vegetation_surface_mud-wide.png');
      [width<=0.5] { line-pattern-file: url('./images/surface_mud-narrow.png'); }
      }
    }
  }
}

/*####################################################################################*/
/* PATH AND TRACK BRIDGES                                                             */
/*####################################################################################*/

#paths_and_tracks_bridge {
  line-opacity: 0;
[bridge='yes'],[bridge='boardwalk'] {
  [type='path'],
  [type='track'] {
      /* Exterior case of the bridge, the "handrails" */
      ::brcases {
        [zoom>=16] {
        line-opacity: 1;
        line-width: @paz16_cw + 2;
          [width<=0.5] { line-width: @paz16_cw / 1.7 + 1.5; }
        }
        [zoom=15] {
        line-opacity: 1;
        line-width: @paz15_cw + 1.75;
          [width<=0.5] { line-width: @paz15_cw / 1.7 + 1.5; }
        }
        [zoom=14] {
        line-opacity: 1;
        line-width: @paz14_cw + 1.5;
          [width<=0.5] { line-width: @paz14_cw / 1.7 + 1.5; }
        }
        [zoom=13] {
        line-opacity: 1;
        line-width: @paz13_cw + 1.5;
          [width<=0.5] { line-width: @paz13_cw / 1.7 + 1.5; }
        }
      }
    }

    /* Background, "floor" of the bridge, white or mtb:scale color coded */
    ::brptcases {
	  line-opacity: 1;
    line-color: #ffffff;
      ['mtb:scale'='0'],['mtb:scale'='0-'],['mtb:scale'='0+'] { line-color: @mtbscale0; }
      ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] { line-color: @mtbscale1; }
      ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] { line-color: @mtbscale2; }
      ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] { line-color: @mtbscale3; }
      ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] { line-color: @mtbscale4; }
      ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] { line-color: @mtbscale5; }
      [zoom>=16] {
	    line-width: @paz16_cw;
        [width<=0.5] { line-width: @paz16_cw / 1.7; }
      }
      [zoom<=15] {
	    line-width: @paz15_cw;
        [width<=0.5] { line-width: @paz15_cw / 1.7; }
      }
      [zoom<=14] {
	    line-width: @paz14_cw;
        [width<=0.5] { line-width: @paz14_cw / 1.7; }
      }
      [zoom<=13] {
	    line-width: @paz13_cw;
        [width<=0.5] { line-width: @paz13_cw / 1.7; }
      }
      [zoom<=12] {
	    line-width: @paz12_cw;
        [width<=0.5] { line-width: @paz12_cw / 1.7; }
      }
    }
    ::brptlines {
      ['noexit'='yes'] { line-opacity: 0.25; }
      [zoom>=16] {
	    line-width: @paz16_lw;
        [width<=0.5] { line-width: @paz16_lw / 2; }
        [type='path']  { line-dasharray: @paz16_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz16_da; }
        [visibility='bad'] { line-dasharray: 2, 5; }
        ['mtb:scale'='-1']   { line-pattern-file: url('images/forbidden-line-z16.png');  }
      }
      [zoom<=15] {
	    line-width: @paz15_lw;
        [width<=0.5] { line-width: @paz15_lw / 2; }
        [type='path']  { line-dasharray: @paz15_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz15_da; }
        [visibility='bad'] { line-dasharray: 1.8, 4; }
        ['mtb:scale'='-1']   { line-pattern-file: url('images\forbidden-line-z15.png');  }
      }
      [zoom<=14] {
	    line-width: @paz14_lw;
        [width<=0.5] { line-width: @paz14_lw / 2; }
        [type='path']  { line-dasharray: @paz14_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz14_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1']   { line-pattern-file: url('images\forbidden-line-z14.png');  }
      }
      [zoom<=13] {
	    line-width: @paz13_lw;
        [width<=0.5] { line-width: @paz13_lw / 2; }
        [type='path']  { line-dasharray: @paz13_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz13_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1']   { line-pattern-file: url('images\forbidden-line-z13.png');  }
      }
      [zoom<=12] {
	    line-width: @paz12_lw;
        [width<=0.5] { line-width: @paz12_lw / 2; }
        [type='path']  { line-dasharray: @paz12_da; }
        [type='track'],[width>=2.0] { line-dasharray: @trz12_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1']   { line-pattern-file: url('images\forbidden-line-z13.png');  }
      }
    [visibility='bad'] { line-dasharray: 2, 2; }
    }
  }
}


/*####################################################################################*/
/* PATH AND TRACK TUNNELS                                                             */
/*####################################################################################*/

#paths_and_tracks_tunnel {
  ::tptcases {
    line-opacity: 0;
    line-color: #ffffff;
    ['mtb:scale'='0'],['mtb:scale'='0-'],['mtb:scale'='0+'] { line-opacity: 1; line-color: lighten(@mtbscale0, 10%); }
    ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] { line-opacity: 1; line-color: lighten(@mtbscale1, 10%); }
    ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] { line-opacity: 1; line-color: lighten(@mtbscale2, 10%); }
    ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] { line-opacity: 1; line-color: lighten(@mtbscale3, 10%); }
    ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] { line-opacity: 1; line-color: lighten(@mtbscale4, 10%); }
    ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] { line-opacity: 1; line-color: lighten(@mtbscale5, 10%); }

    [zoom>=16] {
    line-width: @paz16_cw;
      [width<=0.5] { line-width: @paz16_cw / 1.7; }
    }
    [zoom<=15] {
    line-width: @paz15_cw;
      [width<=0.5] { line-width: @paz15_cw / 1.7; }
    }
    [zoom<=14] {
    line-width: @paz14_cw;
      [width<=0.5] { line-width: @paz14_cw / 1.7; }
    }
    [zoom<=13] {
    line-width: @paz13_cw;
      [width<=0.5] { line-width: @paz13_cw / 1.7; }
    }
    [zoom<=12] {
    line-width: @paz12_cw;
      [width<=0.5] { line-width: @paz12_cw / 1.7; }
    }
  }
  ::tptlines {
    line-opacity: 0.5;
    [zoom>=16] {
    line-width: @paz16_lw;
      [width<=0.5] { line-width: @paz16_lw / 2; }
      [type='path']  { line-dasharray: @paz16_da; }
      [type='track'],[width>=2.0] { line-dasharray: @trz16_da; }
      [visibility='bad'] { line-dasharray: 2, 5; }
      ['mtb:scale'='-1'] { line-pattern-file: url('images/forbidden-line-z16.png');  }
    }
    [zoom=15] {
    line-width: @paz15_lw;
      [width<=0.5] { line-width: @paz15_lw / 2; }
      [type='path']  { line-dasharray: @paz15_da; }
      [type='track'],[width>=2.0] { line-dasharray: @trz15_da; }
      [visibility='bad'] { line-dasharray: 1.8, 4; }
      ['mtb:scale'='-1'] { line-pattern-file: url('images\forbidden-line-z15.png');  }
    }
    [zoom=14] {
    line-width: @paz14_lw;
      [width<=0.5] { line-width: @paz14_lw / 2; }
      [type='path']  { line-dasharray: @paz14_da; }
      [type='track'],[width>=2.0] { line-dasharray: @trz14_da; }
      [visibility='bad'] { line-dasharray: 1.3, 3; }
      ['mtb:scale'='-1']  { line-pattern-file: url('images\forbidden-line-z14.png');  }
    }
    [zoom=13] {
    line-width: @paz13_lw;
      [width<=0.5] { line-width: @paz13_lw / 2; }
      [type='path']  { line-dasharray: @paz13_da; }
      [type='track'],[width>=2.0] { line-dasharray: @trz13_da; }
      [visibility='bad'] { line-dasharray: 1.3, 3; }
      ['mtb:scale'='-1'] { line-pattern-file: url('images\forbidden-line-z13.png');  }
    }
    [zoom<=12] {
    line-width: @paz12_lw;
      [width<=0.5] { line-width: @paz12_lw / 2; }
      [type='path']  { line-dasharray: @paz12_da; }
      [type='track'],[width>=2.0] { line-dasharray: @trz12_da; }
      [visibility='bad'] { line-dasharray: 1.3, 3; }
      ['mtb:scale'='-1'] { line-pattern-file: url('images\forbidden-line-z13.png');  }
    }
  [visibility='bad'] { line-dasharray: 2, 2; }
  }
}

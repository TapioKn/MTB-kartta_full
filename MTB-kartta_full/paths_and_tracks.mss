/*####################################################################################*/
/* PATHS AND TRACKS NOT ON BRIDGES OR IN TUNNELS                                      */
/*####################################################################################*/
/* Paths and tracks visible only on z12+ */
/* Wider ways distinguished only on z14+ */

#paths_and_tracks[zoom>=12] {
  [type='path'],[type='track'] {
    ::ptcases {
      line-opacity: 0;
      ['mtb:scale'='0-']                                      { line-color: @mtbscale0-; line-opacity: 1; }
      ['mtb:scale'='0'],['mtb:scale'='0+']                    { line-color: @mtbscale0;  line-opacity: 1; }
      ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] { line-color: @mtbscale1;  line-opacity: 1; }
      ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] { line-color: @mtbscale2;  line-opacity: 1; }
      ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] { line-color: @mtbscale3;  line-opacity: 1; }
      ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] { line-color: @mtbscale4;  line-opacity: 1; }
      ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] { line-color: @mtbscale5;  line-opacity: 1; }
      ['mtb:scale'='6']                                       { line-color: @mtbscale6;  line-opacity: 1; }
      ['noexit'='yes'] { line-opacity: 0; }
      [bicycle='designated']['mtb:scale'='0-'],
      [bicycle='designated'][surface='paved'],
      [bicycle='designated'][surface='asphalt'] { line-opacity: 0; }

      [zoom=12] {
	      line-width: @paz12_cw;
        [width<=0.5] { line-width: @paz12_cw / 1.7; }
        [type='track'] { line-width: @paz12_cw * 1.2; }
      }
      [zoom=13] {
        line-width: @paz13_cw;
        [width<=0.5] { line-width: @paz13_cw / 1.7; }
        [type='track'] { line-width: @paz13_cw * 1.2; }
      }
      [zoom=14] {
        line-width: @paz14_cw;
        [width<=0.5]                { line-width: @paz14_cw / 1.5; }
        [width>=1.8],[type='track'] { line-width: @paz14_cw * 1.4; }
      }
      [zoom=15] {
        line-width: @paz15_cw;
        [width<=0.5]                { line-width: @paz15_cw / 1.8; }
        [width>=0.9]                { line-width: @paz15_cw * 1.5; }
        [width>=1.8],[type='track'] { line-width: @paz15_cw * 1.8; }
      }
      [zoom>=16] {
	      line-width: @paz16_cw;
        [width<=0.5]                { line-width: @paz16_cw / 2.0; }
        [width>=0.9]                { line-width: @paz16_cw * 1.6; }
        [width>=1.8],[type='track'] { line-width: @paz16_cw * 2.2; }
      }
    }

    ::ptlines {
      line-color: @path_line;
      [seasonal='winter'],['noexit'='yes'] { line-opacity: 0.5; }
      [bicycle='designated']['mtb:scale'='0-'],
      [bicycle='designated'][surface='paved'],
      [bicycle='designated'][surface='asphalt'] { line-opacity: 0; }

      [zoom=12] {
        line-width: @paz12_lw;
        [type='path']               { line-dasharray: @paz12_da; }
        [width>=1.8],[type='track'] { line-dasharray: @trz12_da; }
        [visibility='bad']          { line-dasharray: 1.3, 3; }

        /* Fix the following at some point to use wildcards for mtb:scale... */
        ['mtb:scale'='0'],['mtb:scale'='0-'],['mtb:scale'='0+'],
        ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'],
        ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'],
        ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'],
        ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'],
        ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'],
        ['mtb:scale'='6'],
        ['noexit'='yes'] { line-opacity: 0; }
      }

      [zoom=13] {
        line-width: @paz13_lw;
        [type='path']               { line-dasharray: @paz13_da; }
        [width>=1.8],[type='track'] { line-dasharray: @trz13_da; }
        [visibility='bad']          { line-dasharray: 1.3, 3; }

        /* Fix the following at some point to use wildcards for mtb:scale... */
        ['mtb:scale'='0'],['mtb:scale'='0-'],['mtb:scale'='0+'],
        ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'],
        ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'],
        ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'],
        ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'],
        ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'],
        ['mtb:scale'='6'],
        ['noexit'='yes'] { line-opacity: 0; }
      }

      [zoom=14] {
        line-width: @paz14_lw;
        [type='path']               { line-dasharray: @paz14_da; }
        [width<=0.5]                { line-width: @paz14_lw / 2; }
        /* Width 0.6–0.8 uses the "normal" lineweights */
        [width>=0.9]                { line-width: @paz14_lw * 1.5; }
        [width>=1.8],[type='track'] { line-dasharray: @trz15_da; line-width: @paz14_lw * 1.8; line-color: lighten(@path_line, 35%); }
        [visibility='bad']          { line-dasharray: 1, 5; }
      }

      [zoom=15] {
	      line-width: @paz15_lw;
        [type='path']               { line-dasharray: @paz15_da; }
        [width<=0.5]                { line-width: @paz15_lw / 1.8; }
        /* Width 0.6–0.8 uses the "normal" lineweights */
        [width>=0.9]                { line-width: @paz15_lw * 1.5; }
        [width>=1.8],[type='track'] { line-dasharray: @trz15_da; line-width: @paz15_lw * 1.8; line-color: lighten(@path_line, 35%); }
        [visibility='bad']          { line-dasharray: 1, 5; }
      }

      [zoom>=16] {
        line-width: @paz16_lw;
        [type='path']               { line-dasharray: @paz16_da; }
        [width<=0.5]                { line-width: @paz16_lw / 2; }
        /* Width 0.6–0.8 uses the "normal" lineweights */
        [width>=0.9]                { line-width: @paz16_lw * 1.8; }
        [width>=1.8],[type='track'] { line-dasharray: @trz16_da; line-width: @paz16_lw * 2.0; line-color: lighten(@path_line, 35%); }
        [visibility='bad']          { line-dasharray: 1, 5; }
      }

    [visibility='bad'] { line-dasharray: 2, 2; }
    }
    ::accessoverlays {
      [zoom>=14] {
        ['mtb:scale'='-1'],['bicycle'='no'] {
          line-width: 2;
          [zoom=14] { line-width: 1.5; }
          line-dasharray: 3, 4;
          line-color: @forbidden;
          line-offset: -3;
          [width<=0.5] { line-offset: -2.5; }
          [width>=0.9] { line-offset: -.25; }
        }
        [access='no'] {
          line-width: 2;
          [zoom=14] { line-width: 1.5; }
          line-dasharray: 6, 2;
          line-color: @forbidden;
          line-offset: -3;
          [width<=0.5] { line-offset: -3; }
          [width>=0.9] { line-offset: -5; }
        }
      }
    }
    ::mudorvegoverlay {
      [zoom>=14] {
      [surface='mud'],[obstacle='vegetation'] {
        [surface='mud'][obstacle='vegetation'] {line-opacity: 0;}
        line-width: 3;
        [zoom=14] { line-width: 2.5; }
        line-dasharray: 3, 4;
        line-offset: 4;
        [width<=0.5] { line-offset: 3; }
        [width>=0.9] { line-offset: 6; }
        [surface='mud'] { line-color: #0073bb; }
        [obstacle='vegetation'] { line-color: #51940c; }
        }
      }
    }
    ::mudwithvegoverlay {
      [zoom>=14] {
        [surface='mud'][obstacle='vegetation'] {
          line-width: 3;
          [zoom=14] { line-width: 2.5; }
          line-dasharray: 3, 4;
          line-color: #0073bb;
          line-offset: 4;
          [width<=0.5] { line-offset: 3; }
          [width>=0.9] { line-offset: 6; }
        }
      }
    }
    ::vegwithmudoverlay {
    [zoom>=14] {
      [surface='mud'][obstacle='vegetation'] {
        line-width: 3;
        [zoom=14] { line-width: 2.5; }
        line-dasharray: 3, 4;
        line-color: #51940c;
        line-offset: 8;
        [width<=0.5] { line-offset: 7; }
        [width>=0.9] { line-offset: 10; }
      }
    }
  }
  }
}

/*####################################################################################*/
/* PATH AND TRACK BRIDGES                                                             */
/*####################################################################################*/
/* Ways marked as bridges redrawn over the existing ways to be topmost */
/* Path and track bridges/tunnels drawn separately only on z15+ */

#paths_and_tracks_bridge[zoom>=15] {
  line-opacity: 0;
  [bridge='yes'],[bridge='boardwalk'] {
    [type='path'],[type='track'] {
      /* Exterior case of the bridge, the "handrails" */
      ::brcases {
        [zoom=15] {
        line-opacity: 1;
        line-width: @paz15_cw + 1.75;
          [width<=0.5] { line-width: @paz15_cw / 1.7 + 1.5; }
        }
        [zoom>=16] {
        line-opacity: 1;
        line-width: @paz16_cw + 2;
          [width<=0.5] { line-width: @paz16_cw / 1.7 + 1.5; }
        }
      }
    }

    /* Background, "floor" of the bridge, white or mtb:scale color coded */
    ::brptcases {
	  line-opacity: 1;
    line-color: #ffffff;
    ['mtb:scale'='0-']                                      { line-color: @mtbscale0-;}
    ['mtb:scale'='0'],['mtb:scale'='0+']                    { line-color: @mtbscale0; }
    ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] { line-color: @mtbscale1; }
    ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] { line-color: @mtbscale2; }
    ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] { line-color: @mtbscale3; }
    ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] { line-color: @mtbscale4; }
    ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] { line-color: @mtbscale5; }
    ['mtb:scale'='6']                                       { line-color: @mtbscale6;  line-opacity: 1; }

      [zoom=15] {
        line-width: @paz15_cw;
        [width<=0.5]                { line-width: @paz15_cw / 2.0; }
        /* Width 0.6–0.8 uses the "normal" lineweights */
        [width>=0.9]                { line-width: @paz15_cw * 1.6; }
        [width>=1.8],[type='track'] { line-width: @paz15_cw * 2.0; }
      }
      [zoom>=16] {
        line-width: @paz16_cw;
        [width<=0.5]                { line-width: @paz16_cw / 2.0; }
        /* Width 0.6–0.8 uses the "normal" lineweights */
        [width>=0.9]                { line-width: @paz16_cw * 1.6; }
        [width>=1.8],[type='track'] { line-width: @paz16_cw * 2.0; }
      }

    }
    ::brptlines { /* In case there are path bridges over other paths... quite marginal, could be removed */
      ['noexit'='yes'] { line-opacity: 0.5; }
      /* Widest trails distinguished only on z14+ */
      line-color: @path_line;
      [zoom=15] {
        line-width: @paz15_lw;
        [type='path']               { line-dasharray: @paz15_da; }
        [width<=0.5]                { line-width: @paz15_lw / 2; }
        /* Width 0.6–0.8 uses the "normal" lineweights */
        [width>=0.9]                { line-width: @paz15_lw * 1.7; }
        [width>=1.8],[type='track'] { line-dasharray: @trz15_da; line-width: @paz15_lw * 2.0; line-color: lighten(@path_line, 35%); }
        [visibility='bad']          { line-dasharray: 1, 5; }
        ['mtb:scale'='-1'],[access='no']  { line-pattern-file: url('images/forbidden-line-z15.png');  }
      }
      [zoom>=16] {
        line-width: @paz16_lw;
        [type='path']               { line-dasharray: @paz16_da; }
        [width<=0.5]                { line-width: @paz16_lw / 2; }
        /* Width 0.6–0.8 uses the "normal" lineweights */
        [width>=0.9]                { line-width: @paz16_lw * 1.8; }
        [width>=1.8],[type='track'] { line-dasharray: @trz16_da; line-width: @paz16_lw * 2.0; line-color: lighten(@path_line, 35%); }
        [visibility='bad']          { line-dasharray: 1, 5; }
        ['mtb:scale'='-1'],[access='no']  { line-pattern-file: url('images/forbidden-line-z16.png');  }
      }

    [visibility='bad'] { line-dasharray: 2, 2; }
    }
  }
}


/*####################################################################################*/
/* PATH AND TRACK TUNNELS                                                             */
/*####################################################################################*/
/* Path and track bridges/tunnels drawn separately only on z15+ */

#paths_and_tracks_tunnel[zoom>=15] {
  ::tptcases {
    line-opacity: 0;
    line-color: #ffffff;
    ['mtb:scale'='0-']                                      { line-opacity: 1; line-color: lighten(@mtbscale0-, 10%); }
    ['mtb:scale'='0'],['mtb:scale'='0+']                    { line-opacity: 1; line-color: lighten(@mtbscale0, 10%); }
    ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] { line-opacity: 1; line-color: lighten(@mtbscale1, 10%); }
    ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] { line-opacity: 1; line-color: lighten(@mtbscale2, 10%); }
    ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] { line-opacity: 1; line-color: lighten(@mtbscale3, 10%); }
    ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] { line-opacity: 1; line-color: lighten(@mtbscale4, 10%); }
    ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] { line-opacity: 1; line-color: lighten(@mtbscale5, 10%); }
    ['mtb:scale'='6']                                       { line-opacity: 1; line-color: lighten(@mtbscale5, 10%); }

    [zoom<=15] {
    line-width: @paz15_cw;
      [width<=0.5] { line-width: @paz15_cw / 1.7; }
    }
    [zoom>=16] {
    line-width: @paz16_cw;
      [width<=0.5] { line-width: @paz16_cw / 1.7; }
    }
  }
  ::tptlines {
    line-opacity: 0.5;
    [zoom=15] {
    line-width: @paz15_lw;
      [width<=0.5] { line-width: @paz15_lw / 2; }
      [type='path']  { line-dasharray: @paz15_da; }
      [type='track'],[width>=2.0] { line-dasharray: @trz15_da; }
      [visibility='bad'] { line-dasharray: 1.8, 4; }
      ['mtb:scale'='-1'],[access='no'] { line-pattern-file: url('images/forbidden-line-z15.png');  }
    }
    [zoom>=16] {
    line-width: @paz16_lw;
      [width<=0.5] { line-width: @paz16_lw / 2; }
      [type='path']  { line-dasharray: @paz16_da; }
      [type='track'],[width>=2.0] { line-dasharray: @trz16_da; }
      [visibility='bad'] { line-dasharray: 2, 5; }
      ['mtb:scale'='-1'],[access='no'] { line-pattern-file: url('images/forbidden-line-z16.png');  }
    }
  [visibility='bad'] { line-dasharray: 2, 2; }
  }
}

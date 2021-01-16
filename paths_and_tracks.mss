/*####################################################################################*/
/* PATHS AND TRACKS NOT ON BRIDGES OR IN TUNNELS                                      */
/*####################################################################################*/
/* Paths and tracks visible only on z12+ */
/* Wider ways distinguished only on z14+ */

/* mtb:winter=1      often usable              */
/* mtb:winter=2/yes  sometimes usable          */
/* mtb:winter=3/NULL rarely usable or untagged */

#paths_and_tracks[zoom>=12] {
  [type='path'],[type='track'],[type='service'] {

    ::ptcases[type!='service'] {
      line-opacity: 0;
      ['mtb:scale'='0-'] { line-color: @mtbscale0-; line-opacity: 1; }
      ['mtb:scale'='0']  { line-color: @mtbscale0;  line-opacity: 1; }
      ['mtb:scale'='1']  { line-color: @mtbscale1;  line-opacity: 1; }
      ['mtb:scale'='2']  { line-color: @mtbscale2;  line-opacity: 1; }
      ['mtb:scale'='3']  { line-color: @mtbscale3;  line-opacity: 1; }
      ['mtb:scale'='4']  { line-color: @mtbscale4;  line-opacity: 1; }
      ['mtb:scale'='5']  { line-color: @mtbscale5;  line-opacity: 1; }
      ['mtb:scale'='6']  { line-color: @mtbscale6;  line-opacity: 1; }
      ['noexit'='yes'] { line-opacity: 0; }
      [bicycle='designated']['mtb:scale'='0-'],
      [bicycle='designated'][surface='paved'],
      [bicycle='designated'][surface='asphalt'] { line-opacity: 0; }

      [zoom=12] {
        line-width: @paz12_cw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz12_cw; }
        ['mtb:winter'='1']                      { line-width: @paz12_cw * 1.5; }
      }
      [zoom=13] {
        line-width: @paz13_cw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz13_cw; }
        ['mtb:winter'='1']                      { line-width: @paz13_cw * 1.5; }
      }
      [zoom=14] {
        line-width: @paz14_cw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz14_cw; }
        ['mtb:winter'='1']                      { line-width: @paz14_cw * 1.5; }
      }
      [zoom=15] {
        line-width: @paz15_cw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz15_cw; }
        ['mtb:winter'='1']                      { line-width: @paz15_cw * 1.5; }
      }
      [zoom>=16] {
        line-width: @paz16_cw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz16_cw; }
        ['mtb:winter'='1']                      { line-width: @paz16_cw * 1.5; }
      }
    }
 
    ::ptlines[type!='service'] {
      line-color: @path_line;
      line-opacity: 0.5;
      ['mtb:winter'='2'],['mtb:winter'='yes'] { line-opacity: 0.7; }
      ['mtb:winter'='1']                      { line-opacity: 1.0; }
      ['noexit'='yes'] { line-opacity: 0.33; }
      [bicycle='designated']['mtb:scale'='0-'],
      [bicycle='designated'][surface='paved'],
      [bicycle='designated'][surface='asphalt'] { line-opacity: 0; }

      [zoom=12] {
        line-dasharray: @paz12_da;
        [type='track'] { line-dasharray: @trz12_da; }
        line-width: @paz12_lw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz12_lw * 1.2; }
        ['mtb:winter'='1']                      { line-width: @paz12_lw * 2.0; }
        /* Ways with mtb:scale at this zoom only show a colored line, noexit ways are not shown */
        ['mtb:scale'='0-'],
        ['mtb:scale'='0'],
        ['mtb:scale'='1'],
        ['mtb:scale'='2'],
        ['mtb:scale'='3'],
        ['mtb:scale'='4'],
        ['mtb:scale'='5'],
        ['mtb:scale'='6'],
        ['noexit'='yes'] { line-opacity: 0; }
      }

      [zoom=13] {
        line-dasharray: @paz13_da;
        [type='track'] { line-dasharray: @trz16_da; }
        line-width: @paz13_lw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz13_lw * 1.2; }
        ['mtb:winter'='1']                      { line-width: @paz13_lw * 2.0; }
        /* Ways with mtb:scale at this zoom only show a colored line, noexit ways are not shown */
        ['mtb:scale'='0-'],
        ['mtb:scale'='0'],
        ['mtb:scale'='1'],
        ['mtb:scale'='2'],
        ['mtb:scale'='3'],
        ['mtb:scale'='4'],
        ['mtb:scale'='5'],
        ['mtb:scale'='6'],
        ['noexit'='yes'] { line-opacity: 0; }
      }

      [zoom=14] {
        line-dasharray: @paz14_da;
        [type='track'] { line-dasharray: @trz14_da; }
        line-width: @paz14_lw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz14_lw * 1.2; }
        ['mtb:winter'='1']                      { line-width: @paz14_lw * 2.0; }
      }

      [zoom=15] {
        line-dasharray: @paz15_da;
        [type='track'] { line-dasharray: @trz15_da; }
        line-width: @paz15_lw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz15_lw * 1.2; }
        ['mtb:winter'='1']                      { line-width: @paz15_lw * 2.0; }
      }

      [zoom>=16] {
        line-dasharray: @paz16_da;
        [type='track'] { line-dasharray: @trz16_da; }
        line-width: @paz16_lw / 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz16_lw * 1.2; }
        ['mtb:winter'='1']                      { line-width: @paz16_lw * 2.0; }
      }
    }

    ::accessoverlaysroads1[zoom>=14] {
      ['mtb:scale'='-1'],['bicycle'='no'] {
        line-dasharray: 1, 2.0;
        line-color: @forbidden;
        [zoom=14]  { line-width: 2.5; line-offset: -2.5; }
        [zoom=15]  { line-width: 2.8; line-offset: -3.0; }
        [zoom>=16] { line-width: 3.0; line-offset: -4.5; }
        [width<0.6] { [zoom=14] { line-offset: -2.3; } [zoom=15] { line-offset: -2.8; } [zoom>=16] { line-offset: -3.3; } }
        [width>0.8] { [zoom=14] { line-offset: -3.0; } [zoom=15] { line-offset: -4.0; } [zoom>=16] { line-offset: -5.0; } }
      }
      [access='no'],[access='private'] {
        line-dasharray: 1, 2.0;
        line-color: @forbidden;
        [zoom=14]  { line-width: 2.5; line-offset: -2.0; }
        [zoom=15]  { line-width: 2.8; line-offset: -2.5; }
        [zoom>=16] { line-width: 3.0; line-offset: -4.0; }
        [width<0.6] { [zoom=14] { line-offset: -1.5; } [zoom=15] { line-offset: -1.8; } [zoom>=16] { line-offset: -2.0; } }
        [width>0.8] { [zoom=14] { line-offset: -2.5; } [zoom=15] { line-offset: -3.5; } [zoom>=16] { line-offset: -4.5; } }
      }
    }
    ::accessoverlaysroads2[zoom>=14] {
      [access='no'],[access='private'] {
        line-dasharray: 1, 2.0;
        line-color: @forbidden;
        [zoom=14]  { line-width: 2.5; line-offset: 2.0; }
        [zoom=15]  { line-width: 2.8; line-offset: 2.5; }
        [zoom>=16] { line-width: 3.0; line-offset: 4.0; }
        [width<0.6] { [zoom=14] { line-offset: 1.5; } [zoom=15] { line-offset: 1.8; } [zoom>=16] { line-offset: 2.0; } }
        [width>0.8] { [zoom=14] { line-offset: 2.5; } [zoom=15] { line-offset: 3.5; } [zoom>=16] { line-offset: 4.5; } }
      }
    }

    ::mudorvegoverlay[zoom>=14] {
      [surface='mud'],[obstacle='vegetation'] {
        [surface='mud'][obstacle='vegetation'] {line-opacity: 0;}
        line-width: 3;
        line-dasharray: 3, 4;
        line-offset: 4;
        [zoom=14] { line-width: 2.5; line-offset: 3; }
        [width<0.6] { line-offset: 3; [zoom=14] { line-offset: 2; } }
        [width>0.8] { line-offset: 6; [zoom=14] { line-offset: 4; } }
        [surface='mud'] { line-color: #037dc9; }
        [obstacle='vegetation'] { line-color: #56aa00; }
      }
    }
    ::mudwithvegoverlay[zoom>=14] {
      [surface='mud'][obstacle='vegetation'] {
        line-width: 3;
        line-dasharray: 3, 4;
        line-color: #037dc9;
        line-offset: 4;
        [zoom=14] { line-width: 2.5; line-offset: 3; }
        [width<0.6] { line-offset: 3; [zoom=14] { line-offset: 2; } }
        [width>0.8] { line-offset: 6; [zoom=14] { line-offset: 4; } }
      }
    }
    ::vegwithmudoverlay[zoom>=14] {
      [surface='mud'][obstacle='vegetation'] {
        line-width: 3;
        line-dasharray: 3, 4;
        line-color: #56aa00;
        line-offset: 8;
        [zoom=14] { line-width: 2.5; line-offset: 6; }
        [width<0.6] { line-offset: 7; [zoom=14] { line-offset: 5; } }
        [width>0.8] { line-offset: 10; [zoom=14] { line-offset: 8; } }
      }
    }
    ::imbaoverlays[zoom>=15][informal='no'] {
      line-width: @paz15_cw * 1.3;
      line-offset: @paz15_cw * -1.7;
      [zoom=16]  { line-width: @paz16_cw * 1.3; line-offset: @paz16_cw * -1.7; }
      [zoom>=17] { line-width: @paz17_cw * 1.2; line-offset: @paz17_cw * -1.5; }
      line-cap: round;
      line-dasharray: 0.1, 30.0;
      line-opacity: 0;
      ['mtb:scale:imba'='0'] { line-opacity: 1; line-color: #96df1c; }
      ['mtb:scale:imba'='1'] { line-opacity: 1; line-color: #0160ff; }
      ['mtb:scale:imba'='2'] { line-opacity: 1; line-color: #ff0000; }
      ['mtb:scale:imba'='3'] { line-opacity: 1; line-color: #000000; }
      ['mtb:scale:imba'='4'] { line-opacity: 1; line-color: #000000;
                               line-dasharray: 0.1, 4.0, 0.1, 26.0;
                               [zoom=16]  { line-dasharray: 0.1, 6.0, 0.1, 24.0; }
                               [zoom>=17] { line-dasharray: 0.1, 8.0, 0.1, 28.0; }
                             }
    }
  }
}

#winter_overlays[zoom>=14] {
  ::cycling_restrictions {
    ['mtb:winter'='no'],
    ['bicycle:winter'='no'],
    ['foot:winter'='no'],
    ['piste:type'='downhill'],
    ['piste:type'='nordic'],
    ['piste:type'='skitour'] {
      line-dasharray: 1.0, 2.0;
      line-color: @forbidden;
      [zoom=14]  { line-width: 5.5; }
      [zoom=15]  { line-width: 5.8; }
      [zoom>=16] { line-width: 6.0; }
    }
  }
}

/*####################################################################################*/
/* PATH AND TRACK BRIDGES                                                             */
/*####################################################################################*/
/* Ways marked as bridges redrawn over the existing ways to be topmost */
/* Path and track bridges/tunnels drawn separately only on z15+ */

/*####################################################################################*/
/* FILTER NON-BRIDGE WAYS OUT IN SQL */

#paths_and_tracks_bridge[zoom>=15] {
  line-opacity: 0;
  [type='path'],[type='track'] {
    /* Exterior case of the bridge, the "handrails" */
    ::brcases {
      [zoom=15] {
        line-opacity: 1;
        line-width: @paz15_cw / 2.0 + 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz15_cw + 2.0; }
        ['mtb:winter'='1']                      { line-width: @paz15_cw * 1.5 + 2.0; }
      }
      [zoom>=16] {
        line-opacity: 1;
        line-width: @paz16_cw / 2.0 + 2.0;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz16_cw + 2.0; }
        ['mtb:winter'='1']                      { line-width: @paz16_cw * 1.5 + 2.0; }
      }
    }


  /* Background, "floor" of the bridge, white or mtb:scale color coded */
  ::brptcases {
  line-opacity: 1;
  line-color: #ffffff;
  ['mtb:scale'='0-'] { line-color: @mtbscale0-;}
  ['mtb:scale'='0']  { line-color: @mtbscale0; }
  ['mtb:scale'='1']  { line-color: @mtbscale1; }
  ['mtb:scale'='2']  { line-color: @mtbscale2; }
  ['mtb:scale'='3']  { line-color: @mtbscale3; }
  ['mtb:scale'='4']  { line-color: @mtbscale4; }
  ['mtb:scale'='5']  { line-color: @mtbscale5; }
  ['mtb:scale'='6']  { line-color: @mtbscale6; }

    [zoom=15] {
      line-width: @paz15_cw / 2.0;
      ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz15_cw; }
      ['mtb:winter'='1']                      { line-width: @paz15_cw * 1.5; }
    }
    [zoom>=16] {
      line-width: @paz16_cw / 2.0;
      ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz16_cw; }
      ['mtb:winter'='1']                      { line-width: @paz16_cw * 1.5; }
    }

  }
  ::brptlines {
      ['noexit'='yes'] { line-opacity: 0.5; }
      /* Widest trails distinguished only on z14+ */
      line-color: @path_line;
      [zoom=15] {
        line-dasharray: @paz15_da;
        [type='track'] { line-dasharray: @trz15_da; }
        line-width: @paz15_lw / 1.8;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz15_lw; }
        ['mtb:winter'='1']                      { line-width: @paz15_lw * 1.5; }
      }
      [zoom>=16] {
        line-dasharray: @paz16_da;
        [type='track'] { line-dasharray: @trz16_da; }
        line-width: @paz16_lw / 1.8;
        ['mtb:winter'='2'],['mtb:winter'='yes'] { line-width: @paz16_lw; }
        ['mtb:winter'='1']                      { line-width: @paz16_lw * 1.5; }
      }
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
    ['mtb:scale'='0-'] { line-opacity: 1; line-color: lighten(@mtbscale0-, 10%); }
    ['mtb:scale'='0']  { line-opacity: 1; line-color: lighten(@mtbscale0, 10%); }
    ['mtb:scale'='1']  { line-opacity: 1; line-color: lighten(@mtbscale1, 10%); }
    ['mtb:scale'='2']  { line-opacity: 1; line-color: lighten(@mtbscale2, 10%); }
    ['mtb:scale'='3']  { line-opacity: 1; line-color: lighten(@mtbscale3, 10%); }
    ['mtb:scale'='4']  { line-opacity: 1; line-color: lighten(@mtbscale4, 10%); }
    ['mtb:scale'='5']  { line-opacity: 1; line-color: lighten(@mtbscale5, 10%); }
    ['mtb:scale'='6']  { line-opacity: 1; line-color: lighten(@mtbscale5, 10%); }

    [zoom<=15] {
      line-width: @paz15_cw;
      [width<0.6]                { line-width: @paz15_cw / 2.0; }
      /* Width 0.6–0.8 uses the "normal" lineweights */
      [width>0.8]                { line-width: @paz15_cw * 1.6; }
      [width>1.7],[type='track'] { line-width: @paz15_cw * 2.0; }
    }
    [zoom>=16] {
      line-width: @paz16_cw;
      [width<0.6]                { line-width: @paz16_cw / 2.0; }
      /* Width 0.6–0.8 uses the "normal" lineweights */
      [width>0.8]                { line-width: @paz16_cw * 1.6; }
      [width>1.7],[type='track'] { line-width: @paz16_cw * 2.0; }
    }
  }
  ::tptlines {
    line-opacity: 0.5;
    [zoom=15] {
      line-width: @paz15_lw;
      [type='path']              { line-dasharray: @paz15_da; }
      [width<0.6]                { line-width: @paz15_lw / 2; }
      /* Width 0.6–0.8 uses the "normal" lineweights */
      [width>0.8]                { line-width: @paz15_lw * 1.7; }
      [width>1.7],[type='track'] { line-dasharray: @trz15_da; line-width: @paz15_lw * 2.0; line-color: lighten(@path_line, 35%); }
    }
    [zoom>=16] {
      line-width: @paz16_lw;
      [type='path']              { line-dasharray: @paz16_da; }
      [width<0.6]                { line-width: @paz16_lw / 2; }
      /* Width 0.6–0.8 uses the "normal" lineweights */
      [width>0.8]                { line-width: @paz16_lw * 1.8; }
      [width>1.7],[type='track'] { line-dasharray: @trz16_da; line-width: @paz16_lw * 2.0; line-color: lighten(@path_line, 35%); }
    }
  }
}

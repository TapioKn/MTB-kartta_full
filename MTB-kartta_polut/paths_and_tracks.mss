/* Path case widths, line widths and dasharrays */
@paz11_cw: 2.0;   @paz11_lw: 0.5;   @paz11_da: 3, 3;
@paz12_cw: 2.0;   @paz12_lw: 0.5;   @paz12_da: 3, 3;
@paz13_cw: 2.5;   @paz13_lw: 1.0;   @paz13_da: 3, 3;
@paz14_cw: 3.0;   @paz14_lw: 1.0;   @paz14_da: 3, 3;
@paz15_cw: 3.2;   @paz15_lw: 1.3;   @paz15_da: 4, 4;
@paz16_cw: 4.0;   @paz16_lw: 1.5;   @paz16_da: 5, 5;
@paz17_cw: 5.0;   @paz17_lw: 2.5;   @paz17_da: 5, 5;

/* Track case widths, line widths and dasharrays */
@trz11_cw: 2.0;   @trz11_lw: 0.5;   @trz11_da: 6, 1.5;
@trz12_cw: 2.0;   @trz12_lw: 0.5;   @trz12_da: 6, 1.5;
@trz13_cw: 2.5;   @trz13_lw: 1.0;   @trz13_da: 6, 1.5;
@trz14_cw: 3.0;   @trz14_lw: 1.0;   @trz14_da: 6, 1.5;
@trz15_cw: 3.2;   @trz15_lw: 1.3;   @trz15_da: 8, 2.0;
@trz16_cw: 4.0;   @trz16_lw: 1.5;   @trz16_da: 10, 2.5;
@trz17_cw: 5.0;   @trz17_lw: 2.5;   @trz17_da: 10, 2.5;

#paths_and_tracks {
  [type='path'],
  [type='track'] {
    ['mtb:scale'!='X'] {
    ::pthalos {
      line-opacity: 0.2;
      line-color: #ffffff;
      line-width: @paz12_cw;
      [zoom<=12] { line-width: @paz12_cw + 1.0;
                   [width='narrow'] { line-width: @paz12_cw / 1.7 + 1.0; }
      }
      [zoom=13]  { line-width: @paz13_cw + 1.5;
                   [width='narrow'] { line-width: @paz13_cw / 1.7 + 1.5; }
      }
      [zoom=14]  { line-width: @paz14_cw + 2.0;
                   [width='narrow'] { line-width: @paz14_cw / 1.7 + 2.0; }
      }
      [zoom=15]  { line-width: @paz15_cw + 2.5;
                   [width='narrow'] { line-width: @paz15_cw / 1.7 + 2.5; }
      }
      [zoom>=16] { line-width: @paz16_cw + 3.0;
                   [width='narrow'] { line-width: @paz16_cw / 1.7 + 3.0; }
      }
      ['noexit'='yes'] {line-opacity: 0; }
      }
    }
    ::ptcases {
	  line-opacity: 0;
      ['mtb:scale'='0'],['mtb:scale'='0-'],['mtb:scale'='0+'] {
        line-opacity: 1; line-color: @mtbscale0;
        ['noexit'='yes'] { line-opacity: 0.33; }
      }
      ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] {
        line-opacity: 1; line-color: @mtbscale1;
        ['noexit'='yes'] { line-opacity: 0.33; }
      }
      ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] {
        line-opacity: 1; line-color: @mtbscale2;
        ['noexit'='yes'] { line-opacity: 0.33; }
      }
      ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] {
        line-opacity: 1; line-color: @mtbscale3;
        ['noexit'='yes'] { line-opacity: 0.33; }
      }
      ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] {
        line-opacity: 1; line-color: @mtbscale4;
        ['noexit'='yes'] { line-opacity: 0.33; }
      }
      ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] {
        line-opacity: 1; line-color: @mtbscale5;
        ['noexit'='yes'] { line-opacity: 0.33; }
      }

      [zoom>=16] {
	    line-width: @paz16_cw;
        [width='narrow'] { line-width: @paz16_cw / 1.7; }
      }
      [zoom<=15] {
	    line-width: @paz15_cw;
        [width='narrow'] { line-width: @paz15_cw / 1.7; }
      }
      [zoom<=14] {
	    line-width: @paz14_cw;
        [width='narrow'] { line-width: @paz14_cw / 1.7; }
      }
      [zoom<=13] {
	    line-width: @paz13_cw;
        [width='narrow'] { line-width: @paz13_cw / 1.7; }
      }
      [zoom<=12] {
	    line-width: @paz12_cw;
        [width='narrow'] { line-width: @paz12_cw / 1.7; }
      }
    }
    ::ptlines {
      [seasonal='winter'] { line-opacity: 0.33; }
      ['noexit'='yes'] { line-opacity: 0.33; }
      [zoom>=16] {
	    line-width: @paz16_lw;
        [width='narrow'] { line-width: @paz16_lw / 2; }
        [type='path']  { line-dasharray: @paz16_da; }
        [type='track'] { line-dasharray: @trz16_da; }
        [visibility='bad'] { line-dasharray: 2, 5; }
        ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images/forbidden-line-z16.png');  }
      }
      [zoom=15] {
	    line-width: @paz15_lw;
        [width='narrow'] { line-width: @paz15_lw / 2; }
        [type='path']  { line-dasharray: @paz15_da; }
        [type='track'] { line-dasharray: @trz15_da; }
        [visibility='bad'] { line-dasharray: 1.8, 4; }
        ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images\forbidden-line-z15.png');  }
      }
      [zoom=14] {
	    line-width: @paz14_lw;
        [width='narrow'] { line-width: @paz14_lw / 2; }
        [type='path']  { line-dasharray: @paz14_da; }
        [type='track'] { line-dasharray: @trz14_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1'],[access='no'],[access='private']  { line-pattern-file: url('images\forbidden-line-z14.png');  }
      }
      [zoom=13] {
	    line-width: @paz13_lw;
        [width='narrow'] { line-width: @paz13_lw / 2; }
        [type='path']  { line-dasharray: @paz13_da; }
        [type='track'] { line-dasharray: @trz13_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images\forbidden-line-z13.png');  }
      }
      [zoom<=12] {
	    line-width: @paz12_lw;
        [width='narrow'] { line-width: @paz12_lw / 2; }
        [type='path']  { line-dasharray: @paz12_da; }
        [type='track'] { line-dasharray: @trz12_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1'],[access='no'],[access='private']   { line-pattern-file: url('images\forbidden-line-z13.png');  }
      }
    [visibility='bad'] { line-dasharray: 2, 2; }
    }
    ::ptoverlays {
      [obstacle='vegetation'] {
      line-pattern-file: url('./images/obstacle_vegetation-wide.png');
      [width='narrow'] { line-pattern-file: url('./images/obstacle_vegetation-narrow.png'); }
      }
      [surface='mud'] {
      line-pattern-file: url('./images/surface_mud-wide.png');
      [width='narrow'] { line-pattern-file: url('./images/surface_mud-narrow.png'); }
      }
      [obstacle='vegetation'][surface='mud'] {
      line-pattern-file: url('./images/obstacle_vegetation_surface_mud-wide.png');
      [width='narrow'] { line-pattern-file: url('./images/surface_mud-narrow.png'); }
      }
    }
  }
}

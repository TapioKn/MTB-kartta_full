

#paths_and_tracks {
  [type='path'],
  [type='track'] {
    ::ptcases {
	  line-opacity: 0;
      ['mtb:scale'='0'],['mtb:scale'='0-'],['mtb:scale'='0+'] { line-opacity: 1; line-color: @mtbscale0; }
      ['mtb:scale'='1'],['mtb:scale'='1-'],['mtb:scale'='1+'] { line-opacity: 1; line-color: @mtbscale1; }
      ['mtb:scale'='2'],['mtb:scale'='2-'],['mtb:scale'='2+'] { line-opacity: 1; line-color: @mtbscale2; }
      ['mtb:scale'='3'],['mtb:scale'='3-'],['mtb:scale'='3+'] { line-opacity: 1; line-color: @mtbscale3; }
      ['mtb:scale'='4'],['mtb:scale'='4-'],['mtb:scale'='4+'] { line-opacity: 1; line-color: @mtbscale4; }
      ['mtb:scale'='5'],['mtb:scale'='5-'],['mtb:scale'='5+'] { line-opacity: 1; line-color: @mtbscale5; }
      ['noexit'='yes']['mtb:scale'!='99'] { line-opacity: 0.25; }  /* Apply line case dimming only to paths that actually have a casing (i.e. have an mtb:scale -tag), as otherwise an unwanted 25% (grey) case gets rendered even when there should be none. */
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
      [seasonal='winter'] { line-opacity: 0.25; }
      ['noexit'='yes'] { line-opacity: 0.25; }
      [zoom>=16] {
	    line-width: @paz16_lw;
        [width='narrow'] { line-width: @paz16_lw / 2; }
        [type='path']  { line-dasharray: @paz16_da; }
        [type='track'] { line-dasharray: @trz16_da; }
        [visibility='bad'] { line-dasharray: 2, 5; }
        ['mtb:scale'='-1']   { line-pattern-file: url('images/forbidden-line-z16.png');  }
      }
      [zoom<=15] {
	    line-width: @paz15_lw;
        [width='narrow'] { line-width: @paz15_lw / 2; }
        [type='path']  { line-dasharray: @paz15_da; }
        [type='track'] { line-dasharray: @trz15_da; }
        [visibility='bad'] { line-dasharray: 1.8, 4; }
        ['mtb:scale'='-1']   { line-pattern-file: url('.\images\forbidden-line-z15.png');  }
      }
      [zoom<=14] {
	    line-width: @paz14_lw;
        [width='narrow'] { line-width: @paz14_lw / 2; }
        [type='path']  { line-dasharray: @paz14_da; }
        [type='track'] { line-dasharray: @trz14_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1']   { line-pattern-file: url('.\images\forbidden-line-z14.png');  }
      }
      [zoom<=13] {
	    line-width: @paz13_lw;
        [width='narrow'] { line-width: @paz13_lw / 2; }
        [type='path']  { line-dasharray: @paz13_da; }
        [type='track'] { line-dasharray: @trz13_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1']   { line-pattern-file: url('.\images\forbidden-line-z13.png');  }
      }
      [zoom<=12] {
	    line-width: @paz12_lw;
        [width='narrow'] { line-width: @paz12_lw / 2; }
        [type='path']  { line-dasharray: @paz12_da; }
        [type='track'] { line-dasharray: @trz12_da; }
        [visibility='bad'] { line-dasharray: 1.3, 3; }
        ['mtb:scale'='-1']   { line-pattern-file: url('.\images\forbidden-line-z13.png');  }
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




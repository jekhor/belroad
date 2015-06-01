#forest[zoom>=7] {
  polygon-opacity:0.2;
  polygon-fill:@green;
}

/*  WATER  */

#ocean,
#lakes[zoom<7][way_area>1e8],
#lakes[zoom>=7][zoom<9][way_area>1e7],
#lakes[zoom>=9][zoom<11][way_area>1e6],
#lakes[zoom>=11] {
  polygon-opacity:1;
  polygon-fill:@water;
}

#rivers[waterway="river"],
#rivers[waterway="canal"] {
  [zoom<8][length>10000] {
    line-color: @water;
    line-width: 0.2;
  }
}

#rivers[waterway="river"][zoom>=8],
#rivers[waterway="canal"][zoom>=8] {
  line-color: @water;
  line-width:2;
  [zoom<11] {line-width: 1;}
}

#rivers[waterway="drain"][zoom>=11],
#rivers[waterway="ditch"][zoom>=11],
#rivers[waterway="stream"][zoom>=11] {
  line-color: @water;
  line-width:1;
}

#water-areas-overlay {
  [zoom >= 10] {
    polygon-pattern-file: url('icons/wetland.png');
    polygon-pattern-alignment: global;
  }
}

#wlabels[zoom>=6] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 11;
  text-character-spacing: 1.1;
  text-fill: darken(@water, 40%);
  text-placement: line;
  /* labels are placed more closely at the latlon server than in Tilemill */
  text-dy: -6;
  [zoom<12] {
    text-size: 	10;
  }
  text-allow-overlap: false;
  text-min-distance: 100;
  text-spacing: 200;
}

#wolabels[zoom=10][way_area>1e7],
#wolabels[zoom=11][way_area>1e6],
#wolabels[zoom>=12] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 11;
  [zoom>=12] { text-size: 11; }
  text-fill: darken(@water, 40%);
  text-placement: interior;
  text-allow-overlap: false;
}


#plabels[zoom>=12][zoom<14][way_area>1e6],
#plabels[zoom>=14][way_area>1e5] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 11;
  text-fill: darken(@green, 30%);
  text-placement: interior;
  text-allow-overlap: false;
  text-wrap-width: 10;
}

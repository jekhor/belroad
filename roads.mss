#highways, #bridges, #tunnels {
  [highway="primary"][zoom<7][zoom>=6],
  [highway="secondary"][zoom<9][zoom>=7],
  [highway="tertiary"][zoom>=9][zoom<12],
  [highway="unclassified"][zoom>=11],
  [highway="living_street"][zoom>=12],
  [highway="pedestrian"][zoom>=12],
  [highway="residential"][zoom>=12] {
    line-width:1.0;
    [zoom>=14] { line-width: 1.5; }
    line-color:@gray;
  }
  
 
  [highway="secondary"][zoom<15][zoom>=9],
    [highway="trunk"][zoom<7],
  [highway="motorway"][zoom<7],
  [highway="secondary_link"][zoom>=12],
  [highway="tertiary_link"][zoom>=12],
    [highway="primary_link"][zoom>=12] {
    line-width:1.5;
    [zoom<10] { line-width: 1.1; }
    line-color:@gray;
  }
  
  [highway="primary"][zoom>=7][zoom<9] {
    line-color: @redroad;
    line-width: 1.5;
  }
  
  [highway="secondary"][zoom>=10] {
    ::casing {
      line-width: 4;
      line-color: @darkgray;
      line-cap: butt;
      line-join: round;
    }
    ::inner {
      line-width: 3.5;
      line-color: @orange;
      line-cap: round;
      line-join: round;
    }
  }
  
 
  [highway="tertiary"][zoom>=10] {
    ::casing {
      line-width: 3;
      line-color: @darkgray;
      line-cap: butt;
      line-join: round;
    }
    ::inner {
      line-width: 2.5;
      line-color: @yellow;
      line-cap: round;
      line-join: round;
    }
  }
  
  [highway="unclassified"][zoom>=10] {
    ::casing {
      line-width: 3;
      line-color: @darkgray;
      line-cap: butt;
      line-join: round;
    }
    ::inner {
      line-width: 2.5;
      line-color: white;
      line-cap: round;
      line-join: round;
    }
  }
    
  [highway="trunk"][zoom>=7],
  [highway="motorway"][zoom>=7] {
    ::inner0 {
      line-width: 6;
      [zoom<=8] {line-width: 5;}
      [zoom<=7] {line-width: 3;}
      line-color: @redroad;
      line-cap: butt;
      line-join: round;
    }
    ::inner1 {
      line-width: 1.5;
      [zoom<14] {line-width: 3}
      [zoom<=8] {line-width: 2.5;}
      [zoom<=7] {line-width: 0.5;}
      line-color: @yellow;
      line-cap: butt;
      line-join: round;
    }
    ::inner2[zoom>=8][zoom<14] {
      line-width: 1;
      line-color: @redroad;
      line-cap: round;
      line-join: round;
    }
  }
  
  [highway="secondary"][zoom>=15],
    [highway="primary"][zoom>=9],
    [highway="trunk_link"][zoom>=9],
    [highway="motorway_link"][zoom>=9],
    [highway="primary_link"][zoom>=10]{
    ::casing {
      line-width: 5;
      //[zoom<9], [highway="primary"][zoom<12] { line-width: 2.5; }
      [highway="primary_link"],
        [highway="trunk_link"],
      [highway="motorway_link"] {line-width: 4}
      line-color: @gray;
      line-cap: butt;
      line-join: round;
    }
    ::inner {
      line-width: 4;
      [highway="primary_link"],
        [highway="trunk_link"],
      [highway="motorway_link"] {line-width: 3}

      //[zoom<9], [highway="primary"][zoom<12] { line-width: 1.3; }
      line-color: @yellow;
      [highway="primary"],
      [highway="primary_link"],
      [highway="trunk_link"],
      [highway="motorway_link"] {
  	  line-color: @redroad;
    	}  
      line-cap: round;
      line-join: round;
    }
  }
  
  [highway="construction"][zoom>=12],
    [highway="proposed"][zoom>=12],{
    ::casing {
      line-width: 3;
      line-color: @gray;
      line-cap: butt;
      line-join: round;
      [highway="proposed"] { line-opacity: 0.5; }
    }
    ::inner {
      line-width: 2;
      line-color: white;
      line-cap: round;
      line-join: round;
      [highway="proposed"] { line-opacity: 0.8; }
    }
    ::innerdash {
      line-width: 2;
      line-color: @construction;
      line-cap: butt;
      line-join: round;
      line-dasharray: 5,5;
      [highway="proposed"] { line-opacity: 0.5; }
    }
  }
  
  /*
  [highway="trunk"][zoom>=12],
  [highway="motorway"][zoom>=12],
  [highway="primary"][zoom>=15] {
    ::casing {
      line-width: 5;
      line-color: black;
      line-cap: butt;
      line-join: round;
    }
    ::inner {
      line-width: 3.5;
      line-color: @yellow;
      line-cap: round;
      line-join: round;
    }
  }
  */
  [highway="track"] {
 /*   [zoom>=11][zoom<12] {
    line-width: 0.7;
    line-color: @brown;
    line-dasharray: 8,2;

      }*/
    [zoom>=11] {
    line-width: 0.7;
    line-color: @brown;
    line-dasharray: 7,3;
    [tracktype=~".+"]{line-color: @darkgray;}
	[tracktype="grade1"] {line-dasharray: 14,0;}    
    [tracktype="grade2"] {line-dasharray: 12,3;}
    [tracktype="grade3"] {line-dasharray: 10,3;}
    [tracktype="grade4"] {line-dasharray: 7,3;}    
    [tracktype="grade5"] {line-dasharray: 5,4;}
      }
  }
  
  [highway="service"][service=0][zoom>=14],
  [highway="service"][zoom>=15] {
    line-width: 0.5;
    line-color: @gray;
  }
  
  [highway="path"][zoom>=14],
  [highway="footway"][zoom>=15],
  [highway="cycleway"][zoom>=14] {
    line-width: 0.7;
    line-color: @darkgray;
    line-dasharray: 3;
  }
}

#man_made {
  [man_made="cutline"][zoom>=13],
    [man_made="fire_break"][zoom>=13]{
    line-color: white;
    line-width: 1.5;
  }
}

#hlabels[zoom>=8] {
  [highway="tertiary"][zoom>=13],
  [highway="secondary"][zoom>=10],
  [highway="primary"],
  [highway="trunk"],
  [highway="motorway"] {
    text-name: [ref];
    text-face-name: @sans_caption;
    text-size: 9;
    text-fill: black;
    text-allow-overlap: false;
    text-min-distance: 300;
    text-spacing: 400;
    text-placement: line;
    text-dy: 7;
    [highway="trunk"][zoom>=12],
    [highway="motorway"][zoom>=12] {
      text-dy: 9;
    }
  }
}

#hslabels[zoom>=12] {
  text-name: [name];
  text-face-name: @sans;
  text-size: 9;
  text-fill: black;
  text-halo-radius: 1;
  text-halo-fill: fadeout(white, 50%);
  text-allow-overlap: false;
  text-dy: 6;
  text-placement: line;
  text-min-distance: 10;
  [zoom>=14] {
    text-size: 11;
    text-dy: 7;
  }
  [zoom>=15] {
    text-dy: 0;
    text-face-name: @sans_caption;
    text-halo-radius: 1.8;

  }
  [zoom>=16] {
    text-size: 13;    
    text-halo-fill: @lightgray;
  }
}

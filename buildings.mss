@building_base: #909098;
@building_out: darken(@building_base, 10%);

#buildings[zoom>=12] {
  polygon-fill: @building_base;
  [streethash='0'] {polygon-fill: spin(@building_base, 1*22);}
  [streethash='1'] {polygon-fill: spin(@building_base, 2*22);}
  [streethash='2'] {polygon-fill: spin(@building_base, 3*22);}
  [streethash='3'] {polygon-fill: spin(@building_base, 4*22);}
  [streethash='4'] {polygon-fill: spin(@building_base, 5*22);}
  [streethash='5'] {polygon-fill: spin(@building_base, 6*22);}
  [streethash='6'] {polygon-fill: spin(@building_base, 7*22);}
  [streethash='7'] {polygon-fill: spin(@building_base, 8*22);}
  [streethash='8'] {polygon-fill: spin(@building_base, 9*22);}
  [streethash='9'] {polygon-fill: spin(@building_base, 10*22);}
  [streethash='a'] {polygon-fill: spin(@building_base, 11*22);}
  [streethash='b'] {polygon-fill: spin(@building_base, 12*22);}
  [streethash='c'] {polygon-fill: spin(@building_base, 13*22);}
  [streethash='d'] {polygon-fill: spin(@building_base, 14*22);}
  [streethash='e'] {polygon-fill: spin(@building_base, 15*22);}
  [streethash='f'] {polygon-fill: spin(@building_base, 16*22);}
  [zoom>=15] {
    line-width: 1;
    line-color: @building_base;
    [posthash='0'] {line-color: spin(@building_out, 1*22);}
    [posthash='1'] {line-color: spin(@building_out, 2*22);}
    [posthash='2'] {line-color: spin(@building_out, 3*22);}
    [posthash='3'] {line-color: spin(@building_out, 4*22);}
    [posthash='4'] {line-color: spin(@building_out, 5*22);}
    [posthash='5'] {line-color: spin(@building_out, 6*22);}
    [posthash='6'] {line-color: spin(@building_out, 7*22);}
    [posthash='7'] {line-color: spin(@building_out, 8*22);}
    [posthash='8'] {line-color: spin(@building_out, 9*22);}
    [posthash='9'] {line-color: spin(@building_out, 10*22);}
    [posthash='a'] {line-color: spin(@building_out, 11*22);}
    [posthash='b'] {line-color: spin(@building_out, 12*22);}
    [posthash='c'] {line-color: spin(@building_out, 13*22);}
    [posthash='d'] {line-color: spin(@building_out, 14*22);}
    [posthash='e'] {line-color: spin(@building_out, 15*22);}
    [posthash='f'] {line-color: spin(@building_out, 16*22);}
  
  	[visible='almost'] {polygon-opacity: 0.15;line-opacity: 0.15}
   }
}
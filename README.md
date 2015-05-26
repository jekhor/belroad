# belroad Style

This style is focused on the roads and made suitable for cycling route planning in Belarus. Any propositions
of improvements are welcome.

## Installation

    npm install -g carto
    git clone https://github.com/jekhor/belroad.git belroad
    cd belroad
    ./get-shapefiles.sh
    carto -l project.mml > belroad.xml

## Preparing contours

I use smoothed [GMTED2010](http://topotools.cr.usgs.gov/gmted_viewer/) relief maps for generating contours,
because that way you don't get many artifacts (unlike SRTM). And it covers most of the planet, also unlike SRTM.
Download Median/15 squares merge them, apply gaussian filter in SAGA and generate contours with GDAL:

	gdal_merge 30N000E_20101117_gmted_med150.tif dem2.tif ... -o gmted_dem.tif
    saga_cmd libio_gdal 0 -GRIDS tmp1 -FILES gmted_dem.tif
    saga_cmd libgrid_filter 1 -INPUT tmp1.sgrd -RESULT tmp2 -RADIUS 2
    saga_cmd libio_gdal 2 -GRIDS tmp2.sgrd -FILE gmted-new.tif
    gdal_contour -a ELEV -i 25 gmted-new.tif gmted-new-contours.shp
    shapeindex gmted-new-contours.shp

## Usage

Traces are meant not to overlayed on top of the map, but included underneath labels in "route" layer. So yes,
you should use Mapnik for rendering traces, produce a vector image and postprocess it with Inkscape, moving labels
out of the way. Someday there will be a website for most of that, but for now please use
[mapnik-group-text](https://github.com/Zverik/mapnik-group-text) and [Nik4](https://github.com/Zverik/Nik4).

### Scale bar

The style has "scale" layer, which should be configurable. In `project.mml` there is an SQL with subquery with
coordinates and two numeric properties. You can change those, so the linear scale is drawn on the resulting map.

## Author and license

The style was made by Yauhen Kharuzhy, published under WTFPL. Style is based on the 'veloroad' style from Ilya Zverev
(https://github.com/Zverik/veloroad).

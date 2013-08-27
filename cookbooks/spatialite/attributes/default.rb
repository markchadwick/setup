# default[:spatialite][:version]   = '3.0.1'
default[:spatialite][:version]   = '4.0.0'
default[:spatialite][:builddir]  = "/tmp/spatialite-#{node[:spatialite][:version]}"
default[:spatialite][:tarball]   = "libspatialite-#{node[:spatialite][:version]}.tar.gz"
default[:spatialite][:src]       = "http://www.gaia-gis.it/gaia-sins/libspatialite-sources/#{node[:spatialite][:tarball]}"

default[:freexl][:version]  = '1.0.0e'
default[:freexl][:tarball]  = "freexl-#{node[:freexl][:version]}.tar.gz"
default[:freexl][:src]      = "http://www.gaia-gis.it/gaia-sins/freexl-sources/#{node[:freexl][:tarball]}"

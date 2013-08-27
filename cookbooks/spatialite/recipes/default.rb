srcinstall 'libspatialite' do
  version         '4.0.0'
  source          'http://www.gaia-gis.it/gaia-sins/libspatialite-sources/'
  configure_flags '--disable-geosadvanced --enable-freexl=no'
  make_creates    './src/.libs/libspatialite.so'
  installs        '/usr/local/lib/libspatialite.so.5'
end

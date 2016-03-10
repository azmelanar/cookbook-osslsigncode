name             'osslsigncode'
maintainer       'Dmytro Slupytskyi'
maintainer_email 'dslupytskyi@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures osslsigncode'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          'apt'
depends          'build-essential'

supports         'ubuntu', '>= 14.04'

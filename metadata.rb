name             'proxmox-ohai'
maintainer       'Christian A. Rodriguez'
maintainer_email 'car@cespi.unlp.edu.ar'
license          'All rights reserved'
description      'Captures ipaddress from proxmox container'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'

depends 'ohai',            '~> 2.0'

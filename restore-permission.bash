#!/usr/bin/env bash

# still a temporary solution till I use the upstream source
# to create my deb package

chmod 644 package/DEBIAN/conffiles
chmod 755 package/DEBIAN/postinst
chmod 755 package/DEBIAN/postrm
chmod 755 package/DEBIAN/preinst
chmod 755 package/etc/
chmod 755 package/etc/default/
chmod 644 package/etc/default/mailhog
chmod 755 package/etc/init.d/
chmod 755 package/etc/init.d/mailhog
chmod 755 package/etc/init.d/mailhog
chmod 755 package/usr/
chmod 755 package/usr/share/
chmod 755 package/usr/share/doc/
chmod 755 package/usr/share/doc/mailhog/
chmod 644 package/usr/share/doc/mailhog/changelog.Debian.gz
chmod 644 package/usr/share/doc/mailhog/copyright
chmod 755 package/usr/share/lintian/
chmod 755 package/usr/share/lintian/overrides/
chmod 644 package/usr/share/lintian/overrides/mailhog
chmod 755 package/usr/share/man/
chmod 755 package/usr/share/man/man8/
chmod 644 package/usr/share/man/man8/mailhog.8.gz


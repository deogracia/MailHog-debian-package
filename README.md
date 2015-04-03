# MailHog-debian-package

I try to package https://github.com/mailhog/MailHog to Debian/Ubuntu OS

## Build instructions
You need 
 * build-install
 * fakeroot
 
```
git clone https://github.com/deogracia/MailHog-debian-package
cd MailHog-debian-package
mkdir -p package/usr/sbin
chmod 755 package/usr/sbin
cd package/usr/sbin
wget https://github.com/mailhog/MailHog/releases/download/v0.1.6/MailHog_linux_amd64
mv MailHog_linux_amd64 mailhog
chmod 755 mailhog
cd ../../..
bash restore-permission.bash

fakeroot dpkg-deb --build package

mv package.deb mailhog-VERSION-amd64.deb
```

## Known errors

### Lintian
* `new-package-should-close-itp-bug` : ignored

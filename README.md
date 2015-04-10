# MailHog-debian-package

I try to package https://github.com/mailhog/MailHog to Debian/Ubuntu OS. But my first need is that it has to work on ubuntu 12.04 (aka ubuntu precise)

## Easy setup ...
Use the bintray.com debian repository. I sign my package with the default [bintray gpg key](https://bintray.com/user/downloadSubjectPublicKey?username=bintray)

```
echo "deb https://dl.bintray.com/deogracia/mailhog precise contrib" | sudo tee -a /etc/apt/sources.list
wget https://bintray.com/user/downloadSubjectPublicKey?username=bintray -O bintray.asc
sudo apt-key add bintray.asc
sudo apt-get clean
sudo apt-get update
sudo apt-get install mailhog
```
I use the mailhog defaults

## ... Or use the build instructions
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

apt-get install daemon
dpkg -i mailhog-VERSION-amd64.deb
```

## Known errors

### Lintian
* `new-package-should-close-itp-bug` : ignored

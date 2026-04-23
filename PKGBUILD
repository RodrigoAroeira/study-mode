# Maintainer: Rodrigo <your@email>
pkgname=study-mode
pkgver=1.1.0
pkgrel=1
pkgdesc="Block distracting applications while studying"
arch=('any')
url="https://github.com/RodrigoAroeira/study-mode"
license=('MIT')
depends=('bash' 'procps-ng' 'libnotify')
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname" "$pkgname.service" "$pkgname.desktop")
md5sums=('77dce72706589be1f1fc0f0d3b54e6b8' 'dce5be6adb6b2a4b76ae4ad63c4ea3cd' '68958baf840c5984b7e1cf9901faeb71')

package() {
  install -Dm755 "$pkgname" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$pkgname.service" "$pkgdir/usr/lib/systemd/user/$pkgname.service"
  install -Dm644 "$pkgname.desktop" "$pkgdir/usr/share/applications/$pkgname.desktop"
}

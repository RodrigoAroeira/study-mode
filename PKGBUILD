# Maintainer: Rodrigo <your@email>
pkgname=study-mode
pkgver=1.0.0
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
source=("$pkgname.sh" "$pkgname.service")
md5sums=('b86414b00a0d99cbd5cdf1559f2329cd' 'd72600c7f2091b8b6a1fc6bec5bc00e6')

package() {
  install -Dm755 "$pkgname.sh" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$pkgname.service" "$pkgdir/usr/lib/systemd/user/$pkgname.service"
}

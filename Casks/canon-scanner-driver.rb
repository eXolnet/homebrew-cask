cask 'canon-scanner-driver' do
  version '2.15.9'
  sha256 'ff5d80d992a0f8b003104ffdc1bdf36bfe8bce0aa49cce77b27cdc9a95a5776c'

  url 'https://gdlp01.c-wss.com/gds/0/0100010990/04/mac-scan-v2159-00.dmg'
  name 'Canon Scanner Driver & Utilities'
  homepage 'https://canoncanada.custhelp.com/app/home'

  pkg 'Canon_ScanGear_MF.pkg'
end

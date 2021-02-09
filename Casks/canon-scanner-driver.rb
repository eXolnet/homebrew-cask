cask 'canon-scanner-driver' do
  version '2.15.6'
  sha256 '5efcaeccd8b1f1103d2bb966199a47fc50f0116996d987bd51178d61474c2151'

  url 'https://gdlp01.c-wss.com/gds/9/0100010619/06/mac-scan-v2156-00.dmg'
  name 'Canon Scanner Driver & Utilities'
  homepage 'http://www.canon.ca/en/Contact-Support/Consumer/Downloads'

  pkg 'Canon_ScanGear_MF.pkg'
end

cask 'canon-scanner-driver' do
  version '2.15.2'
  sha256 '07384f45c7ac5c20535705b1c81e97fa1f96412edec5e56458e5c8213844e471'

  url 'https://gdlp01.c-wss.com/gds/9/0100010619/02/mac-scan-v2152-00.dmg'
  name 'Canon Scanner Driver & Utilities'
  homepage 'http://www.canon.ca/en/Contact-Support/Consumer/Downloads'

  pkg 'Canon_ScanGear_MF.pkg'
end

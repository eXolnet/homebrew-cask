cask 'canon-printer-driver' do
  version '10.11.3'
  sha256 'da6c9cbd85a75754061053b0cd0086f0297ea2f9d52a2bb0056fff1438bcff12'

  url 'http://gdlp01.c-wss.com/gds/3/0100010433/03/mac-mf-v10113-00.dmg'
  name 'Canon MF Printer Driver & Utilities'
  homepage 'http://www.canon.ca/en/Contact-Support/Consumer/Downloads'

  pkg 'MF_Printer_Installer.pkg'
end

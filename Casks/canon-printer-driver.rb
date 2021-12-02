cask 'canon-printer-driver' do
  version '10.11.8'
  sha256 'd5f10278e0dd91a898757299adb4a566e5f14e6ad073c885da268768b7b8172e'

  url 'https://gdlp01.c-wss.com/gds/4/0100011244/02/mac-mf-v10118-00.dmg'
  name 'Canon MF Printer Driver & Utilities'
  homepage 'http://www.canon.ca/en/Contact-Support/Consumer/Downloads'

  pkg 'MF_Printer_Installer.pkg'
end

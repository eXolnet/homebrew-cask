cask 'canon-printer-driver' do
  version '10.11.6'
  sha256 'cded9cbfc4ad45f03258066fc96b3a7c2ee0f4e486043813b9242e3fd568c078'

  url 'https://gdlp01.c-wss.com/gds/4/0100010874/03/mac-mf-v10116-00.dmg'
  name 'Canon MF Printer Driver & Utilities'
  homepage 'http://www.canon.ca/en/Contact-Support/Consumer/Downloads'

  pkg 'MF_Printer_Installer.pkg'
end

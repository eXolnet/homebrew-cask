cask 'canon-printer-driver' do
  version '10.11.3'
  sha256 '8a9fe8a3ad9ee02fb65e10e05eda1e6d8e6ba268fa987a6e164d5ba661bb1240'

  url 'http://gdlp01.c-wss.com/gds/3/0100010433/03/mac-mf-v10113-00.dmg'
  name 'Canon MF Printer Driver & Utilities'
  homepage 'http://www.canon.ca/en/Contact-Support/Consumer/Downloads'

  pkg 'MF_Printer_Installer.pkg'
end

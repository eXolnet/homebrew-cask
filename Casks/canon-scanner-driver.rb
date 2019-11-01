cask 'canon-scanner-driver' do
  version '2.15.1'
  sha256 '917e7c7089148ed46d637656f66159b2042287e9084b2b921ae5b5f5c0eb0e48'

  url 'http://gdlp01.c-wss.com/gds/3/0100010193/07/mac-scan-v2151-00.dmg'
  name 'Canon Scanner Driver & Utilities'
  homepage 'http://www.canon.ca/en/Contact-Support/Consumer/Downloads'

  pkg 'Canon_ScanGear_MF.pkg'
end

cask 'canon-scanner-driver' do
  version '2.15.14'
  sha256 'cb41803f7db3dba7467715a8b0eb892c101e0c4c2dd082f285dfd820d8f432a3'

  url 'https://gdlp01.c-wss.com/gds/3/0100011783/04/mac-scan-v21514-00.dmg'
  name 'Canon Scanner Driver & Utilities'
  homepage 'https://canoncanada.custhelp.com/app/home'

  pkg 'Canon_ScanGear_MF.pkg'
end

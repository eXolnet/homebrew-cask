cask 'canon-scanner-driver' do
  version '2.15.10'
  sha256 '0485a03ef39ecfdf93f0d306d06db70162ec51ee6101b8b216a6bf379343eb35'

  url 'https://gdlp01.c-wss.com/gds/3/0100011373/02/mac-scan-v21510-00.dmg'
  name 'Canon Scanner Driver & Utilities'
  homepage 'https://canoncanada.custhelp.com/app/home'

  pkg 'Canon_ScanGear_MF.pkg'
end

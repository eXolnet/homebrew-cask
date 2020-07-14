cask 'mitel-connect' do
  version '214.100.1222.0'
  sha256 '6c5f571d1c5a5898ca367a96f43676d44772504d2c48dca8b6359d4f48db0bb9'

  url 'http://10.0.2.10/ShorewareResources/ClientInstall/MitelConnect.dmg'
  name 'Mitel Connect'
  homepage 'http://10.0.2.10/ShorewareResources/ClientInstall/'

  app 'Mitel Connect.app'
end

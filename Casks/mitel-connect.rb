cask 'mitel-connect' do
  version '214.100.1217.0'
  sha256 '474c0f7cf56f98eb567ecafbf2b236238a3aa25358162e49ec12ffeb3d3a539f'

  url 'http://10.0.2.10/ShorewareResources/ClientInstall/MitelConnect.dmg'
  name 'Mitel Connect'
  homepage 'http://10.0.2.10/ShorewareResources/ClientInstall/'

  app 'Mitel Connect.app'
end

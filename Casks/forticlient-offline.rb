cask 'forticlient-offline' do
  version '6.4.2'
  sha256 'ba6836d1eefc6f8f570a3ea44ff87f126d8cb935c3269ebe00ec64ba9014db85'

  url 'https://files.exolnet.com/forticlient/FortiClientVPNSetup_6.4.2.1305_macosx.dmg'
  name 'FortiClient'
  homepage 'https://www.forticlient.com/'

  pkg 'Install.mpkg'

  uninstall script: {
      executable: '/Applications/FortiClientUninstaller.app/Contents/MacOS/Uninstall',
  }
end

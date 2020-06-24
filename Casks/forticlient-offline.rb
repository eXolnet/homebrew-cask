cask 'forticlient-offline' do
  version '6.4.0'
  sha256 'cbf2292c37f9eaa7e4f39f2d8b57c1252180c54b6d76764fa8f2191892c3954a'

  url 'https://files.exolnet.com/forticlient/FortiClientVPNSetup_6.4.0.1231_macosx.dmg'
  name 'FortiClient'
  homepage 'https://www.forticlient.com/'

  pkg 'Install.mpkg'

  uninstall script: {
      executable: '/Applications/FortiClientUninstaller.app/Contents/MacOS/Uninstall',
  }
end

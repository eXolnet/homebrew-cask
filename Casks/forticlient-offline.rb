cask 'forticlient-offline' do
  version '7.2.4'
  sha256 '19b5d5c166f340a6e00750b5a7d71350b45849ec7540d7d33d2b82e55ce1badc'

  url 'https://files.exolnet.com/forticlient/FortiClientVPNSetup_7.2.4.0850_macosx.dmg'
  name 'FortiClient'
  homepage 'https://www.forticlient.com/'

  pkg 'Install.mpkg'

  postflight do
    next unless File.exist?("/Library/Application Support/Fortinet/FortiClient_settings.xml")

    system_command "/Library/Application Support/Fortinet/FortiClient/bin/fcconfig",
                   args: [
                     "-o", "import",
                     "-m", "all",
                     "-f", "/Library/Application Support/Fortinet/FortiClient_settings.xml",
                   ],
                   sudo: true
  end

  uninstall_preflight do
    system_command "/Library/Application Support/Fortinet/FortiClient/bin/fcconfig",
                   args: [
                     "-o", "export",
                     "-m", "all",
                     "-f", "/Library/Application Support/Fortinet/FortiClient_settings.xml",
                   ],
                   sudo: true
  end

  uninstall script: {
      executable: '/Applications/FortiClientUninstaller.app/Contents/MacOS/Uninstall',
  }
end

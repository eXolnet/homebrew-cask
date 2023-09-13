cask 'forticlient-offline' do
  version '6.4.10'
  sha256 '169953cfebe9aa80e00f8470b26761d75e3728e5924c977f991981576263cda8'

  url 'https://files.exolnet.com/forticlient/FortiClientVPNSetup_6.4.10.1481_macosx.dmg'
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

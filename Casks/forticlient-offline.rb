cask 'forticlient-offline' do
  version '7.0.10'
  sha256 'b9a21eeeaf9a7f8f4c572d0d5b478aa57d7905e5f46dde36bb74c94a7d5b5406'

  url 'https://files.exolnet.com/forticlient/FortiClientVPNSetup_7.0.10_macosx.dmg'
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

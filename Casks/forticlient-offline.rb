cask 'forticlient-offline' do
  version '6.4.2'
  sha256 'ba6836d1eefc6f8f570a3ea44ff87f126d8cb935c3269ebe00ec64ba9014db85'

  url 'https://files.exolnet.com/forticlient/FortiClientVPNSetup_6.4.2.1305_macosx.dmg'
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

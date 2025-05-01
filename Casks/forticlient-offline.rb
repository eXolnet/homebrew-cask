cask 'forticlient-offline' do
  version '7.4.3'
  sha256 'c3258b64224d921824d0d66a6262c454f69ff6221776522397838f15542127ca'

  url 'https://files.exolnet.com/forticlient/FortiClientVPNSetup_7.4.3.1761_macosx.dmg'
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

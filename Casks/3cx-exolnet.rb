cask '3cx-exolnet' do
  version '18.13.959'
  sha256 '53e7443d8b1b212ff1441d934331894c99f08fc90224f5558a959e1a077efeee'

  url "https://exolnet.clients.alt380.ca:4643/webclient/api/app/mac##{version}"
  name '3CX Desktop App'
  homepage 'https://exolnet.clients.alt380.ca:4643/webclient/'

  livecheck do
    url :url
    strategy :header_match
  end

  app '3CX Desktop App.app'
end

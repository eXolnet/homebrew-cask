cask '3cx-exolnet' do
  version '18.13.949'
  sha256 'f715de1c7a4fcd23a8f604349b43bbe4145227f94468aca01ec9b31e80748c0e'

  url "https://exolnet.clients.alt380.ca:4643/webclient/api/app/mac##{version}"
  name '3CX Desktop App'
  homepage 'https://exolnet.clients.alt380.ca:4643/webclient/'

  livecheck do
    url :url
    strategy :header_match
  end

  app '3CX Desktop App.app'
end

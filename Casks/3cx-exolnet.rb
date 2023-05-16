cask '3cx-exolnet' do
  version '18.12.425'
  sha256 'a90c93e8f47ebfc86f6764cbcdf0c2ad52fefd76e1575d99d41c749101ebd1de'

  url "https://exolnet.clients.alt380.ca:4643/webclient/api/app/mac##{version}"
  name '3CX Desktop App'
  homepage 'https://exolnet.clients.alt380.ca:4643/webclient/'

  livecheck do
    url :url
    strategy :header_match
  end

  app '3CX Desktop App.app'
end

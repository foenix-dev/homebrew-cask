cask "calypsi-65816" do
  version "3.6.12"
  sha256 "bc732e4fe98ebac30495f54261e3ef59ca44a4a320b03513e81452c6282b35db"

  url "https://github.com/hth313/Calypsi-tool-chains/releases/download/#{version}/calypsi-65816-#{version}.pkg"
  name "calypsi-65816"
  desc "Calypsi is a C and assembly language cross compiler tool chains for MOS 65816."
  homepage "https://www.calypsi.cc/"

  pkg "calypsi-65816-#{version}.pkg", allow_untrusted: true
  uninstall script: {
    executable: "/usr/local/lib/calypsi-65816-#{version}/uninstall",
    sudo:       true,
  }
end

cask "calypsi-65816" do
  version "4.4"
  sha256 "937a1a94379341792fb5ef8cf8abcb654fe34b2867698bfda88d6fcb4865457f"

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

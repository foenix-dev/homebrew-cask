cask "calypsi-6502" do
  version "3.6.12"
  sha256 "4e14d67f79318d5955440ef5b998cf2fe21934ba7340811855ee0d088dd1b8ec"

  url "https://github.com/hth313/Calypsi-tool-chains/releases/download/#{version}/calypsi-6502-#{version}.pkg"
  desc "Calypsi is a C and assembly language cross compiler tool chains for MOS 6502."
  homepage "https://www.calypsi.cc/"

  pkg "calypsi-6502-#{version}.pkg", allow_untrusted: true
  uninstall script: {
    executable: "/usr/local/lib/calypsi-6502-#{version}/uninstall",
    sudo:       true,
  }
end

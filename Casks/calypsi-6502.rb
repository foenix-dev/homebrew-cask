cask "calypsi-6502" do
  version "4.4"
  sha256 "04cd8ef66a5736a7aa6e6d0e71b37cfa75a1eefca608a5e5de2dd4995b791d35"

  url "https://github.com/hth313/Calypsi-tool-chains/releases/download/#{version}/calypsi-6502-#{version}.pkg"
  desc "Calypsi is a C and assembly language cross compiler tool chains for MOS 6502."
  homepage "https://www.calypsi.cc/"

  pkg "calypsi-6502-#{version}.pkg", allow_untrusted: true
  uninstall script: {
    executable: "/usr/local/lib/calypsi-6502-#{version}/uninstall",
    sudo:       true,
  }
end

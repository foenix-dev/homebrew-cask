cask "calypsi-68k" do
  version "4.4"
  sha256 "043bae3a009744f5a64ee506f506a7193562354dc68b9becd9f0c3421f75d966"

  url "https://github.com/hth313/Calypsi-tool-chains/releases/download/#{version}/calypsi-68000-#{version}.pkg"
  name "calypsi-68k"
  desc "Calypsi is a C and assembly language cross compiler tool chains for M68000."
  homepage "https://www.calypsi.cc/"

  pkg "calypsi-68k-#{version}.pkg", allow_untrusted: true
  uninstall script: {
    executable: "/usr/local/lib/calypsi-68k-#{version}/uninstall",
    sudo:       true,
  }
end

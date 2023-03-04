cask "calypsi-68k" do
  version "3.6.12"
  sha256 "2f3975a4faf7a14dd97d4f3bae4ff2b21aedc58be8bf5cbe713d76ba7946a29d"

  url "https://github.com/hth313/Calypsi-tool-chains/releases/download/#{version}/calypsi-68k-#{version}.pkg"
  name "calypsi-68k"
  desc "Calypsi 68k is a C and assembly language cross compiler tool chains for M68000."
  homepage "https://www.calypsi.cc/"
  comment "calypsi-68k is a commercial product, that uses git for distribution"

  pkg "calypsi-68k-#{version}.pkg", allow_untrusted: true
  uninstall script: {
    executable: "/usr/local/lib/calypsi-68k-#{version}/uninstall",
    sudo:       true,
  }
end

class WarpBin < Formula
    version "0.0.77"
    desc "friendly, fast, correct, and extensible build system built for polyglot monorepos."
    homepage "https://github.com/warp-build/warp"

    if OS.mac?
        url "https://github.com/warp-build/warp/releases/download/#{version}/warp-#{version}-x86_64-apple-darwin.tar.gz"
        sha256 "b6a64076dcc7422f135ef26575174b05c792c1f11ef304b79ab6c177ecfd23d5"
    elsif OS.linux?
        url "https://github.com/warp-build/warp/releases/download/#{version}/warp-#{version}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "c5065e7c876e5b8187776d1795350a04ed19137ad74f8a6e44c94c4a7d5b3668"
    end

    conflicts_with "warp"

    def install
        bin.install "warp"
    end
end
  
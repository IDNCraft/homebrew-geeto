# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/IDNCraft/geeto"
  version "0.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.3/geeto-mac"
      sha256 "5974266e760dd64ca48eff5bef20c907febe0fff4e217d333a7af4b853e308e1"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.3/geeto-mac-arm64"
      sha256 "da92eabaa3c0b0a81cc381329540b3894433107c2713db368810f15db1eb852b"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.3/geeto-linux"
      sha256 "f3862b8c94f9935675fe0e4f45b6d5f810e4c3b7f29983f949d1a08f3df0dd04"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.3/geeto-linux-arm64"
      sha256 "ee51f5a5f12af1190448a0c0ffc6f8c84ef035f36e3f5c1ba578815ce5c85592"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

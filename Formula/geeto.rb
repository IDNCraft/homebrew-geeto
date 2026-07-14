# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.12.0/geeto-mac"
      sha256 "d95cd35f87ac2832523af114c11dcadbe6e55d82acda5d2ea59d0bd631551737"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.12.0/geeto-mac-arm64"
      sha256 "e29a7de38ba91828f697f1d401406da0f7e6aac54a6568e4499f4f5ca9829a33"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.12.0/geeto-linux"
      sha256 "5d637b7254b64c1cd681f9d3096af62b3a31aa04e101d3a7a752ea98dd5ae86f"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.12.0/geeto-linux-arm64"
      sha256 "67e665fc4bfe43194da2528587435a080c69bff685b329d6e0cf19d99b10011f"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

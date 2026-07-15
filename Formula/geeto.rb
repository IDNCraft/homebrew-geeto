# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.13.0/geeto-mac"
      sha256 "9d16e5966a64a91dae2637bc9354da389c661387150029f5f687df6a7a243eb5"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.13.0/geeto-mac-arm64"
      sha256 "2e5cbec4f6406c0435456f628992279438e48f0ab98acc9bafceffab31b75711"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.13.0/geeto-linux"
      sha256 "ac0c5def47563ffad3f6d2a8ab40d37fca6a7de2b0d6c3e43dce69f079ba0704"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.13.0/geeto-linux-arm64"
      sha256 "5625822cad822818149c92cdc76d552d2db74c47a3f62730f07c2835917af3a8"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

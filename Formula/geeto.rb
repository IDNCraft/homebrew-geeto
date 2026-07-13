# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.10.1/geeto-mac"
      sha256 "113b2481ba3b20df18dc3dd85885ede0d76478e6d5232075bb2b2d15e10b27e7"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.10.1/geeto-mac-arm64"
      sha256 "c1ca28b8c2874a51665794e5e0d17120540145896a949642be761735870f532c"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.10.1/geeto-linux"
      sha256 "63a2716098d0c17f04706f30ad77541ff9a57108f1b4dedfd37fd61e62790bfe"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.10.1/geeto-linux-arm64"
      sha256 "f79acbde3d4160eb48db7cbc0ff256e74d57cd73a74bc694195d789e21ab7c29"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

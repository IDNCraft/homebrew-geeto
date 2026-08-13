# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/IDNCraft/geeto"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.1/geeto-mac"
      sha256 "2be555a85cb3480de06bbd806c98450d59b9209c7aa3c362355a104e22d5df37"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.1/geeto-mac-arm64"
      sha256 "3d399ab7be3f8e1e4f3616fc58aafab52c7c3d891b426d5d39f4b85e3441c58e"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.1/geeto-linux"
      sha256 "33831a41f04b09e5493f3122401cb47bdde9f12fe312ed3a808a601cdfc8e33f"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.1/geeto-linux-arm64"
      sha256 "9703f1d22ee241faf3d079c55d32abec0ccebafb0966c5f8e48f48d1c8389ded"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

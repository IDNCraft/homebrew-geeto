# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/IDNCraft/geeto"
  version "0.14.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.5/geeto-mac"
      sha256 "ac9a006a9e9f64267d233c8affbb693e0d78edd581e5a3c803eda09db041948f"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.5/geeto-mac-arm64"
      sha256 "feb423f2aa03f0dc335e637726ec84e4c94af0ad74b8b9890b2d45d95a35f483"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.5/geeto-linux"
      sha256 "ff86ce95afaeff2b45ee8ec3262161bea430d22883aa052fc9c2510f250fc558"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.5/geeto-linux-arm64"
      sha256 "1f53e94a82265029f8bad8982220ad6ade5bbf6caa0e8a946b9dd2ad3255aeb8"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

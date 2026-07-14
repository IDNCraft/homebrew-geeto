# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.11.0/geeto-mac"
      sha256 "373a1e7218d43bbf559cc007ffc31f2138020514c54774041f1caf81ad3e9403"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.11.0/geeto-mac-arm64"
      sha256 "2d01aecf12597a88f916b9aeb334e3dce0642a7d7d5e08e3b2564ea729988a11"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.11.0/geeto-linux"
      sha256 "28318a6254f02e36de049dbc1ac9576dc927e749736aba1753fa1140f1354ab3"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.11.0/geeto-linux-arm64"
      sha256 "57600f92c813a94050affe5d9b2c65525818282a07ecd1f71dd91b1ac0acdda2"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

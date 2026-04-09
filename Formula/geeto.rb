# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.9.1/geeto-mac"
      sha256 "2d4adbfaaeea08bdcd432372f01dffd0c7122f555996713620a34976bef5fd97"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.9.1/geeto-mac-arm64"
      sha256 "eec82d3470617122db8f149d592098a262b96cd894a7a54f6110f90f8e641763"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.9.1/geeto-linux"
      sha256 "1585b711d37e91cd044b0c08121f326f96b3ddecd9617bdcc0b1131851f9fdd3"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.9.1/geeto-linux-arm64"
      sha256 "1db073a4343d05c5edb8623f35c3009081b58ccd8ff7881820b9a47a5979e220"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/IDNCraft/geeto"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.0/geeto-mac"
      sha256 "809db18f6469f0cb55806822855533691cd6103429b046e1d7d2945af37f3341"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.0/geeto-mac-arm64"
      sha256 "4ea12b664d5e33a77d705c37e2f2ec67857da716ca9fea9e2f2c531f41c5761b"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.0/geeto-linux"
      sha256 "577b4e4ec966166c79bac354d6ef93efc48f4d6f7a3c676bae53e282c96f3b4d"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.0/geeto-linux-arm64"
      sha256 "0a449a6ea1d50e71cbc29c17bdfa3cc4861b1ce7ab0eee4cd4491df7854ca519"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/IDNCraft/geeto"
  version "0.14.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.4/geeto-mac"
      sha256 "6328dd23fbdb01e289e0e2f8188611ee877058f419bb0516a00cbd0f77bad296"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.4/geeto-mac-arm64"
      sha256 "aabde058c4c178ac94a4c338a858e975ad1daac4dd3243c2a7e0622a8c96c497"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.4/geeto-linux"
      sha256 "33a1e8b2d17e6d5c559f39299ce4e979c84b9c45e59b780d8b7a7d0e198706a8"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.4/geeto-linux-arm64"
      sha256 "8dffeda386ef85739358228ca52e4e4a36da99defc35a7ac31885bf0ab3263d5"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.10.0/geeto-mac"
      sha256 "4b7c44d377269659bea936c938082100ca41dcf8621eab3e78e9bd5607aba6b4"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.10.0/geeto-mac-arm64"
      sha256 "5bf9e0aff9d62e5270551cdd08fba549ff3ae130c003977e835d2979f67bde5f"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.10.0/geeto-linux"
      sha256 "d0f3618a47d7febe2614a7339e20ac10909fd81adaadb62a2c607361ea965cb9"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.10.0/geeto-linux-arm64"
      sha256 "28bd051bf06c42af18ba958ee0369815c2082a22823d42e4da29ec60ca3a35a9"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

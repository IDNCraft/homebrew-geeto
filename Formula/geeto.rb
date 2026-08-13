# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/IDNCraft/geeto"
  version "0.14.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.2/geeto-mac"
      sha256 "78048ac0ed7f30857c3323c2b0f651b1c09447a444b5bf6b77ca8865c431b821"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.2/geeto-mac-arm64"
      sha256 "9ddb3b73e1962160c86bfa35910cdde27c9711369dd573ae17ad92391d7607ff"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.2/geeto-linux"
      sha256 "10d80007051fd0a094e7a1e625d37dd6ddb68382940bc83ba63a588e80383ae3"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/IDNCraft/geeto/releases/download/v0.14.2/geeto-linux-arm64"
      sha256 "8f821e55ad2db3bac40fa514ab864712294fb7aaf120f718a32c234f5870172e"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end

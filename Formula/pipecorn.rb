class Pipecorn < Formula
  desc "Command-line interface for Pipecorn (B2B sales intelligence)"
  homepage "https://github.com/pipecorn/cli-pipecorn"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pipecorn/cli-pipecorn/releases/download/v0.1.3/pipecorn-v0.1.3-darwin-arm64.tar.gz"
      sha256 "a32e48995377176602aa4a1107f0d822252f960e876f042ac493b5d758fc3c33"
    end
    on_intel do
      url "https://github.com/pipecorn/cli-pipecorn/releases/download/v0.1.3/pipecorn-v0.1.3-darwin-x64.tar.gz"
      sha256 "6844a2fa66be5976b3c51896e7ed13f09b3b3b115bb55e50b597215a7ad57265"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pipecorn/cli-pipecorn/releases/download/v0.1.3/pipecorn-v0.1.3-linux-arm64.tar.gz"
      sha256 "4c9cda796857bc870b1f0eb11a368cff2955a3ecfc63a24d817efa4a232889ef"
    end
    on_intel do
      url "https://github.com/pipecorn/cli-pipecorn/releases/download/v0.1.3/pipecorn-v0.1.3-linux-x64.tar.gz"
      sha256 "97c7bfdee778022bd1878e96d90b3bc60d24f4ef1bbb0b032172d77cc40c0924"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/pipecorn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pipecorn --version")
  end
end

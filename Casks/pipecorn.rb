cask "pipecorn" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "90aefbdd1f2f1f7ccd13015f4e320c7d5eec87d4aad5a549ba1f0d99823b8629",
         intel: "390c26b179f639d2275efc845240836211c1c2486733f8e48008e957bab6e6c9"

  url "https://github.com/pipecorn/cli-pipecorn/releases/download/v#{version}/pipecorn-v#{version}-darwin-#{arch}.tar.gz"
  name "Pipecorn CLI"
  desc "Command-line interface for Pipecorn (B2B sales intelligence)"
  homepage "https://github.com/pipecorn/cli-pipecorn"

  binary "pipecorn/bin/pipecorn"

  zap trash: [
    "~/.config/pipecorn",
    "~/.local/share/pipecorn",
  ]
end

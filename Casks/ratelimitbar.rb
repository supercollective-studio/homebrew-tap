# Homebrew cask template for RateLimitBar.
cask "ratelimitbar" do
  version "1.0.0"
  sha256 "f78d77eac1cf56a96ec3b2b64350664c6c234c9c6eda1fac9b98fc03b83765e2"

  url "https://downloads.ratelimitbar.com/RateLimitBar-#{version}.dmg"
  name "RateLimitBar"
  desc "Menu-bar quota monitor for Claude Code and OpenAI Codex plan limits"
  homepage "https://ratelimitbar.com"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "RateLimitBar.app"

  caveats <<~EOS
    If Claude Code is connected, disconnect it in RateLimitBar (Settings › Providers) before
    uninstalling, so your previous Claude Code status line is restored.
  EOS

  zap trash: [
    "~/Library/Application Support/AIUsage",
    "~/Library/Preferences/studio.supercollective.ratelimitbar.plist",
  ]
end

# Homebrew cask for RateLimitBar.
cask "ratelimitbar" do
  version "1.0.1"
  sha256 "1ddb1480bf0fc2f800ba1b9f18afe051e1a9a263b3c45d31771a63813bb753e9"

  url "https://downloads.ratelimitbar.com/RateLimitBar-#{version}.dmg"
  name "RateLimitBar"
  desc "Menu-bar quota monitor for Claude Code and OpenAI Codex plan limits"
  homepage "https://ratelimitbar.com"

  auto_updates true
  depends_on macos: :sonoma

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

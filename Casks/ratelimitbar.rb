# Homebrew cask template for RateLimitBar.
# Fill in the DMG's SHA-256 (`shasum -a 256 RateLimitBar-<version>.dmg`) after signing/notarizing.
cask "ratelimitbar" do
  version "1.0.0"
  sha256 "REPLACE_WITH_DMG_SHA256"

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

# Homebrew cask for RateLimitBar.
cask "ratelimitbar" do
  version "1.0.2"
  sha256 "e568f43930a2dabb4034cdd5e456a04289a023ead25d86263dc637cd196f03c1"

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

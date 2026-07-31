cask "quotapeek" do
  version "0.6.0"
  sha256 "1fbf5e44927b10f90d740251eeba1a64785795eedd5f46c005610975b229e497"

  url "https://github.com/geraldooi/quotapeek/releases/download/v#{version}/QuotaPeek-#{version}.zip"
  name "QuotaPeek"
  desc "Codex and Claude Code usage in the macOS menu bar"
  homepage "https://github.com/geraldooi/quotapeek"

  depends_on macos: :ventura

  app "QuotaPeek.app"

  caveats <<~EOS
    QuotaPeek is ad-hoc signed and is not notarized by Apple.
    If macOS blocks the first launch, open System Settings → Privacy & Security
    and click "Open Anyway" for QuotaPeek.
  EOS

  zap trash: [
    "~/Library/Preferences/com.geraldooi.quotapeek.plist",
  ]
end

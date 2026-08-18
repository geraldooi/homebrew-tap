cask "quotapeek" do
  version "0.7.0"
  sha256 "71a47366d472b34714b71e1a8529479da439599a05a15122c8cd7ea123e5792c"

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

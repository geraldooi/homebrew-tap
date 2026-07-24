cask "quotapeek" do
  version "0.5.0"
  sha256 "17d154648a2227b39ce788aefc4fbd06e1b3e72254297df1003cab954c7cc8b5"

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

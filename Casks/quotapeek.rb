cask "quotapeek" do
  version "0.4.0"
  sha256 "083142d0e68cdb5b4d42246708344ee3a83772a9db642017ac955e0760ee9e4d"

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

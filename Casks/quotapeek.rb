cask "quotapeek" do
  version "0.1.0"
  sha256 "a7c1fffc2aad7a46a7b62502e7af79250eb8080cb1212bff24024bc4671d9842"

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

cask "vibecamp-bridge" do
  version "0.1.0"
  sha256 "5d87e89c1806545bf6761c506a5797c3c468fab7117c7ca7136267a88e389926"

  url "https://github.com/tornikegomareli/vibecamp/releases/download/v#{version}/VibeCamp-Bridge.dmg"
  name "VibeCamp Bridge"
  desc "Watch and answer your coding agents from your iPhone"
  homepage "https://github.com/tornikegomareli/vibecamp"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "VibeCamp Bridge.app"

  uninstall quit: "com.tornikegomareli.duoagents.bridge"

  zap trash: [
    "~/.vibecamp",
    "~/Library/Preferences/com.tornikegomareli.duoagents.bridge.plist",
  ]

  caveats do
    <<~EOS
      Before you uninstall, turn off every agent under "Answer from the phone" in the
      bridge's menu. That removes its hooks from the agents' settings files.
    EOS
  end
end

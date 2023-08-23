# Emoji List for Roblox Internal Use
This repo provides a list of Roblox supported emojis excluding blacklisted ones. The list of Roblox support emojis was curated using [this](https://github.com/tiffany352/Roblox-Tag-Editor/blob/main/create_emoji_list.js) script and uses emoji version 12.1. The list of blacklisted emojis was pulled from [here](https://github.rbx.com/GameEngine/game-engine/blob/854e9286aa53fe4e973be354ddb417698456d3f0/Tools/Emoji%20Compiler/main.lua). The popularity rank of the emoji was from [this](https://docs.google.com/spreadsheets/d/1Zs13WJYdZL1pNZP0dCIXkWau_tZOjK3mmJz0KNq4I30/edit#gid=196891844) public spreadsheet released by Unicode in 2021. The data is formatted in a dictionary as such:
```
{
  ["emoji-alias"] = {
    ["popularity"] = num,
    ["base"] = "unicode-for-emoji",
    ["category"] = "category-value",
  },
  ...
}
```

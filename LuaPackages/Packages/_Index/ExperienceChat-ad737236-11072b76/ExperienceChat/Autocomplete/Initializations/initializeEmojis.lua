local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List
local Dictionary = require(Packages.llama).Dictionary
local EMOJI_LIST = require(Packages.EmojiList)

local EMOJI_KEYS = Dictionary.keys(EMOJI_LIST)

return function(autocompleteText)
	List.map(EMOJI_KEYS, function(emote)
		autocompleteText.trie:insert(emote)
	end)

	return autocompleteText.trie
end

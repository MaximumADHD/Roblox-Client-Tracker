local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List
local EMOJI_LIST = require(Packages.EmojiList)
local SortAutocompleteByPopularity = require(ExperienceChat.Flags.FFlagSortAutocompleteByPopularity)

return function(results)
	-- Since the Trie uses a dict to store its children and Lua does not maintain sorting in dicts, results will be unsorted even if inserted in sorted order
	-- Sorting every time should not be too intensive as list of emotes is a constant number
	if SortAutocompleteByPopularity() then
		return List.sort(results, function(a: string, b: string)
			if EMOJI_LIST[a].popularity == EMOJI_LIST[b].popularity then
				return a < b
			end
			return EMOJI_LIST[a].popularity < EMOJI_LIST[b].popularity
		end)
	else
		return List.sort(results)
	end
end

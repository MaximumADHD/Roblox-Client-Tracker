local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local List = require(Packages.llama).List
local EMOJI_LIST = require(Packages.EmojiList)

local AutocompleteText = require(script.Parent.AutocompleteText)
local initializeEmojis = require(script.Parent.Initializations.initializeEmojis)
local sortEmojiResultsCallback = require(script.Parent.SortingCallbacks.sortEmojiResultsCallback)

return function()
	beforeAll(function(c)
		c.autocompleteText = AutocompleteText.new(initializeEmojis)
	end)

	it("SHOULD return unsorted list of strings containing inputted prefix", function(c)
		local res = c.autocompleteText:getResults("sm")
		for i = 1, List.count(res) do
			expect(res[i]:find("sm", 1, true) == 1).toEqual(true)
		end
	end)

	it("SHOULD return popularity sorted list of strings containing inputted prefix", function(c)
		local res = c.autocompleteText:getResults("sm", sortEmojiResultsCallback)
		for i = 1, List.count(res) - 1 do
			local isSortedAndMatchesPrefix = EMOJI_LIST[res[i]].popularity <= EMOJI_LIST[res[i + 1]].popularity
				and res[i]:find("sm", 1, true) == 1
			expect(isSortedAndMatchesPrefix).toEqual(true)
		end
		local isSortedAndMatchesPrefix = res[List.count(res)]:find("sm", 1, true) == 1
		expect(isSortedAndMatchesPrefix).toEqual(true)
	end)
end

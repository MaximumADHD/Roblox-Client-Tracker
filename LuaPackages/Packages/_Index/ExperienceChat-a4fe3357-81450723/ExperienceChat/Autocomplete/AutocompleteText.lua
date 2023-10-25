local Autocomplete = script:FindFirstAncestor("Autocomplete")
local Trie = require(Autocomplete.Trie.Trie)

local AutocompleteText = {}
AutocompleteText.__index = AutocompleteText

-- in future, create init fn in ./Initializations and sorting callback in ./SortingCallbacks

type Callback = (any) -> ()

function AutocompleteText.new(initCallback: Callback)
	local autocompleteText = {}
	setmetatable(autocompleteText, AutocompleteText)

	-- trie for autocomplete
	autocompleteText.trie = Trie.new()
	autocompleteText.trie = initCallback(autocompleteText)

	return autocompleteText
end

function AutocompleteText:getResults(prefix: string, callback: Callback?)
	local unsortedResults = self.trie:autocomplete(prefix)
	if callback then
		return callback(unsortedResults)
	end

	return unsortedResults
end

return AutocompleteText

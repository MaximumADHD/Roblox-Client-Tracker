--[[
	{
		keyword : string,
		games : array<placeId>,
		suggestedKeyword = string,
		correctedKeyword = string,
		filteredKeyword = string,
		hasMoreRows = bool,
    }
]]

local SearchInGames = {}

function SearchInGames.new()
	local self = {}

	return self
end

function SearchInGames.mock()
	local self = SearchInGames.new()
	self.keyword = "Meepcity"
	self.games = {"370731277", "745935297"}
	self.suggestedKeyword = nil
	self.correctedKeyword =  nil
	self.filteredKeyword = nil
	self.hasMoreRows = false

	return self
end

function SearchInGames.fromJsonData(searchInGamesJson, keyword, games)
	local self = SearchInGames.new()
	self.keyword = searchInGamesJson.filteredKeyword or keyword
	self.games = games
	self.suggestedKeyword = searchInGamesJson.suggestedKeyword
	self.correctedKeyword = searchInGamesJson.correctedKeyword
	self.filteredKeyword = searchInGamesJson.filteredKeyword
	self.hasMoreRows = searchInGamesJson.hasMoreRows

	return self
end

return SearchInGames
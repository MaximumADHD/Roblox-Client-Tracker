--[[
	{
		universeId : number,
		placeId : number,
		name : string,
		playerCount : number,
		imageToken : string,
		totalUpVotes : number,
		totalDownVotes : number,
	}
]]

local Game = {}

function Game.new()
	local self = {}
	return self
end

function Game.fromGameCache(gameCache)
	local self = Game.new()
	self.universeId = gameCache.UniverseId
	self.placeId = gameCache.PlaceId
	self.name = gameCache.Name
	self.playerCount = gameCache.PlayerCount
	self.imageToken = gameCache.ImageToken
	self.totalUpVotes = gameCache.VoteData.UpVotes
	self.totalDownVotes = gameCache.VoteData.DownVotes
	return self
end

function Game.fromJsonData(gameJson)
	local self = Game.new()
	self.universeId = gameJson.universeId
	self.placeId = gameJson.placeId
	self.name = gameJson.name
	self.playerCount = gameJson.playerCount
	self.imageToken = gameJson.imageToken
	self.totalUpVotes = gameJson.totalUpVotes
	self.totalDownVotes = gameJson.totalDownVotes
	return self
end

return Game
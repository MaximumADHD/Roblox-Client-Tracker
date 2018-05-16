--[[
	{
		creatorId  :  number ,
		creatorName  :  string ,
		creatorType  :  CretorTypeEnum ,
		placeId  :  number ,
		universeId  :  number ,
		imageToken  :  string ,
		name  :  string ,
		totalUpVotes  :  number ,
		totalDownVotes  :  number ,
		playerCount  :  number ,

	}
]]

local CreatorType = {
	User = "User",
	Group = "Group"
}

local Game = {}

function Game.new()
	local self = {}

	return self
end

function Game.mock()
	local self = Game.new()
	self.universeId = 149757
	self.imageToken = 70395446
	self.totalDownVotes = 2564
	self.placeId =  10395446
	self.name = "test"
	self.totalUpVotes = 10970
	self.creatorId = 22915773
	self.playerCount = 150
	self.creatorName = "Jaegerblox"
	self.creatorType = CreatorType.User

	return self
end

function Game.fromJsonData(gameJson)
	local self = Game.new()
	self.creatorId = gameJson.creatorId
	self.creatorName = gameJson.creatorName
	self.creatorType = gameJson.creatorType
	self.placeId = gameJson.placeId
	self.universeId = gameJson.universeId
	self.imageToken = gameJson.imageToken
	self.name = gameJson.name
	self.totalUpVotes = gameJson.totalUpVotes
	self.totalDownVotes = gameJson.totalDownVotes
	self.playerCount = gameJson.playerCount

	return self
end

return Game
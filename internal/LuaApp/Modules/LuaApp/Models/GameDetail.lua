--[[
	{ -- Mock data. No data inflow exists yet
		playing : number ,
		visits : number ,
		created = string ,
		updated = string ,
		maxPlayers = number ,
		genre = string ,
		allowedGear = string ,
		description = string ,
	}
]]

local GameDetail = {}

function GameDetail.new()
	local self = {}

	return self
end

function GameDetail.mock()
	local self = GameDetail.new()
	self.playing = 666
	self.visits = 999
	self.created = "1/1/1900"
	self.updated = "1/1/2020"
	self.maxPlayers = 10
	self.genre = "Fighting"
	self.allowedGear = "None"
	self.description = "This description decribes itself"
	return self
end

function GameDetail.fromJsonData(gameJson)
	local self = GameDetail.new()
	self.playing = gameJson.playing
	self.visits = gameJson.visits
	self.created = gameJson.created
	self.updated = gameJson.updated
	self.maxPlayers = gameJson.maxPlayers
	self.genre = gameJson.genre
	self.allowedGear = gameJson.allowedGear
	return self
end

return GameDetail
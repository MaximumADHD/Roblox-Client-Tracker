local GameProtocolTypes = require(script.Parent.GameProtocolTypes)

type LaunchParams = GameProtocolTypes.LaunchParams

local GameParams = {}

-- Currently GameParams is only used in LuaChat.
-- TODO: APPFDN-1950 Move default referralPage out of constructor and pass it explicitly where GameParams got called.
function GameParams.new(): LaunchParams
	local self = {
		referralPage = "LuaChat",
	}

	return self
end

function GameParams.fromPlaceId(placeId: string | number): LaunchParams
	local self = GameParams.new()

	self.placeId = placeId

	return self
end

function GameParams.fromUserId(userId: string | number): LaunchParams
	local self = GameParams.new()

	self.userId = userId

	return self
end

function GameParams.fromPlaceInstance(placeId: string | number, gameInstanceId: string): LaunchParams
	local self = GameParams.new()

	self.placeId = placeId
	self.gameInstanceId = gameInstanceId

	return self
end

function GameParams.fromConversationId(placeId: string | number, conversationId: string): LaunchParams
	local self = GameParams.new()

	self.placeId = placeId
	self.conversationId = conversationId

	return self
end

function GameParams.fromParams(params: LaunchParams): LaunchParams
	local self = GameParams.new()

	for key, value in pairs(params) do
		self[key] = value
	end

	return self
end

return GameParams

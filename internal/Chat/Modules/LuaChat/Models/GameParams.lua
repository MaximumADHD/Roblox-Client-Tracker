local GameParams = {}

function GameParams.new()
	local self = {}

	return self
end

function GameParams.fromPlaceId(placeId)
	local self = GameParams.new()

	self.placeId = placeId

	return self
end

return GameParams
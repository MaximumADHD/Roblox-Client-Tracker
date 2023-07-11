-- Aggregated data by asset id
local AggregatedData = {}
AggregatedData.__index = AggregatedData
function AggregatedData.new()
	local self = {}
	setmetatable(self, AggregatedData)
	return self
end

local function isRbxAssetId(soundId: string)
	return soundId:find("rbxassetid://")
end

function AggregatedData:addPlay(soundId : string, playtime : number, loopcount : number)
	--print("AggregatedData.addPlay ", soundId, playtime, loopcount)

	-- Only aggregate data for rbxassetids
	if not isRbxAssetId(soundId) then
		return
	end

	soundId = soundId:sub(14)

	if self[soundId] == nil then
		self[soundId] = { playtime = playtime, loopcount = loopcount }
	else
		self[soundId].playtime += playtime
		self[soundId].loopcount += loopcount
	end
end

return AggregatedData

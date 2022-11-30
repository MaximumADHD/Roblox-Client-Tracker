--!nonstrict
--[[
	{
		universeId: string,
		isPlayable: bool,
		playabilityStatus: string,
	}
]]

local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local Packages = PlayabilityRodux.Parent

local Result = require(Packages.Result)
local PlayabilityStatusEnum = require(PlayabilityRodux.Enums).PlayabilityStatusEnum

local PlayabilityStatus = {}

function PlayabilityStatus.new()
	local self = {}

	return self
end

function PlayabilityStatus.mock()
	local self = PlayabilityStatus.new()
	self.universeId = "149757"
	self.isPlayable = true
	self.playabilityStatus = PlayabilityStatusEnum.Playable

	return self
end

function PlayabilityStatus.fromJsonData(playabilityStatusJson)
	if type(playabilityStatusJson.universeId) ~= "number" and type(playabilityStatusJson.universeId) ~= "string" then
		return Result.error("PlayabilityStatus.fromJsonData expects universeId to be a number or a string")
	end
	if type(playabilityStatusJson.isPlayable) ~= "boolean" then
		return Result.error("PlayabilityStatus.fromJsonData expects isPlayable to be a boolean")
	end
	if type(playabilityStatusJson.playabilityStatus) ~= "string" then
		return Result.error("PlayabilityStatus.fromJsonData expects playabilityStatus to be a string")
	end

	local self = PlayabilityStatus.new()
	self.universeId = tostring(playabilityStatusJson.universeId)
	self.isPlayable = playabilityStatusJson.isPlayable
	self.playabilityStatus = playabilityStatusJson.playabilityStatus

	return Result.success(self)
end

return PlayabilityStatus

--[[
	Model for an experience.
	{
		universeId = string,
		name = string,
		rootPlaceId = string,
		isPlayable = bool,
		playabilityStatus = PlayabilityStatusEnum
	}
]]
local CorePackages = game:GetService("CorePackages")

local MockId = require(script.Parent.Parent.MockId)
local PlayabilityStatusEnum = require(CorePackages.Workspace.Packages.PlayabilityRodux).Enums.PlayabilityStatusEnum

export type ExperienceInfo = {
	universeId: string?,
	name: string?,
	rootPlaceId: string?,
	isPlayable: boolean?,
	playabilityStatus: string?, -- Should be one of PlayabilityStatusEnum
}

local ExperienceInfo = {}

function ExperienceInfo.mock(): ExperienceInfo
	local self = {}

	self.universeId = MockId()
	self.name = ""
	self.rootPlaceId = MockId()
	self.isPlayable = true
	self.playabilityStatus = PlayabilityStatusEnum.Playable

	return self
end

function ExperienceInfo.fromGetPlayabilityStatus(playabilityInfo): ExperienceInfo
	local newExperience = {}

	newExperience.universeId = tostring(playabilityInfo.universeId)
	newExperience.isPlayable = playabilityInfo.isPlayable
	newExperience.playabilityStatus = playabilityInfo.playabilityStatus

	return newExperience
end

function ExperienceInfo.fromGetExperienceInfo(experienceInfo): ExperienceInfo
	local newExperience = {}

	newExperience.universeId = tostring(experienceInfo.id)
	newExperience.rootPlaceId = tostring(experienceInfo.rootPlaceId)
	newExperience.name = experienceInfo.name

	return newExperience
end

return ExperienceInfo

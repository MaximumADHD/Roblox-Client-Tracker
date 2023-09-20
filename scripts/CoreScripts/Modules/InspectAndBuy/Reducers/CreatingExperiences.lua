--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetExperienceInfo = require(InspectAndBuyFolder.Actions.SetExperienceInfo)

return Rodux.createReducer({}, {
	--[[
		Set an experience's info, joining with what exists in the store.
	]]
	[SetExperienceInfo.name] = function(state, action)
		local experienceInfo = action.experienceInfo
		local universeId = experienceInfo.universeId
		assert(universeId ~= nil, "Expected a universe id when setting an experiences's information.")

		local creatingExperiences = {}
		local currentExperience = state[universeId] or {}
		creatingExperiences[universeId] = Cryo.Dictionary.join(currentExperience, experienceInfo)

		return creatingExperiences
	end,
})

local CorePackages = game:GetService("CorePackages")

local FTUX = script.Parent.Parent
local IsVRAppBuild = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
local FTUXConstants = require(FTUX.Resources.FTUXConstants)

type Platform = PlatformEnum.Platform

function IsFTUXExperience(platform: Platform)
	if platform == PlatformEnum.QuestVR then
		return (IsVRAppBuild() and tostring(game.PlaceId) == FTUXConstants[PlatformEnum.QuestVR].ExperienceIds.PlaceId)
	end

	return false
end

return IsFTUXExperience

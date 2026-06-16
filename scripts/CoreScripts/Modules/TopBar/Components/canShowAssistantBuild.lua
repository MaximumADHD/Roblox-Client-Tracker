local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")

local BuildExperience = require(CorePackages.Workspace.Packages.BuildExperience)

local function canShowAssistantBuild(): boolean
	return BuildExperience.BuildModeLaunch:hasBuildMode() and not VRService.VREnabled
end

return canShowAssistantBuild

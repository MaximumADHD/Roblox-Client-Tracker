local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)

local BuildExperience = require(CorePackages.Workspace.Packages.BuildExperience)
local ChromeService = require(Chrome.Service)

local ButtonVariant = Foundation.Enums.ButtonVariant

local function canShowAssistantBuild(): boolean
	return BuildExperience.BuildModeLaunch:hasBuildMode() and not VRService.VREnabled
end

local assistantBuild = ChromeService:register({
	id = "assistant_build",
	label = "CommonUI.Features.NavBar.Build",
	initialAvailability = if canShowAssistantBuild()
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	activated = function(_self)
		local assistantBuildStore = BuildExperience.GetAssistantBuildStore()
		local playButtonStore = BuildExperience.GetPlayButtonStore()
		if not assistantBuildStore.getIsDisabled() then
			assistantBuildStore.setIsDisabledTooltipOpen(false)
			playButtonStore.setIsActive(true)
		else
			assistantBuildStore.setIsDisabledTooltipOpen(not assistantBuildStore.getIsDisabledTooltipOpen())
		end
	end,
	components = {
		Icon = function(_props)
			return React.createElement(BuildExperience.AssistantBuild, {
				variant = ButtonVariant.Utility,
			})
		end,
	},
})

return assistantBuild

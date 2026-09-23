local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")
local FFlagBuildExperienceInGameShell =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagBuildExperienceInGameShell

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Signals = if FFlagBuildExperienceInGameShell then require(CorePackages.Packages.Signals) else nil :: never

local BuildExperience = require(CorePackages.Workspace.Packages.BuildExperience)
local BuildModeLaunch = require(CorePackages.Workspace.Packages.BuildExperiencePlaytestLaunch.BuildModeLaunch)
local Display = if FFlagBuildExperienceInGameShell
	then require(CorePackages.Workspace.Packages.Display)
	else nil :: never
local ChromeService = require(Chrome.Service)

local ButtonVariant = Foundation.Enums.ButtonVariant

local function canShowAssistantBuild(scope): boolean
	if not BuildModeLaunch:hasBuildMode() or VRService.VREnabled then
		return false
	end
	if not FFlagBuildExperienceInGameShell then
		return true
	end
	local displaySize = Display.GetDisplayStore(scope).getDisplaySize(scope)
	return displaySize == nil or displaySize == Enum.DisplaySize.Small
end

local assistantBuild = ChromeService:register({
	id = "assistant_build",
	label = "CommonUI.Features.NavBar.Build",
	initialAvailability = if canShowAssistantBuild(false)
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	activated = function(_self)
		local assistantBuildStore = BuildExperience.GetAssistantBuildStore()
		if FFlagBuildExperienceInGameShell then
			assistantBuildStore.activate()
		elseif not assistantBuildStore.getIsDisabled() then
			assistantBuildStore.setIsDisabledTooltipOpen(false)
			BuildExperience.GetPlayButtonStore().setIsActive(true)
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

if FFlagBuildExperienceInGameShell then
	local assistantBuildWithCleanup = assistantBuild :: any
	assistantBuildWithCleanup._disposeDisplaySizeEffect = Signals.createEffect(function(scope)
		if canShowAssistantBuild(scope) then
			assistantBuild.availability:available()
		else
			assistantBuild.availability:unavailable()
		end
	end)
end

return assistantBuild

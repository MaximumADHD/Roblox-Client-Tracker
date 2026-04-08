--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local Thunks = script.Parent
local EmotesMenu = Thunks.Parent
local Actions = EmotesMenu.Actions

local CoreScriptModules = EmotesMenu.Parent

local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local Analytics = require(EmotesMenu.Analytics)
local FFlagEnableNewBackpack = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableNewBackpack
local Features = if FFlagEnableNewBackpack then require(CorePackages.Workspace.Packages.System).Features else nil
local Backpack = if not FFlagEnableNewBackpack then require(CoreScriptModules.BackpackScript) else nil
local ShowMenu = require(Actions.ShowMenu)

local EmotesAnalytics = Analytics.new():withEventStream(EventStream.new(AnalyticsService))

local function OpenMenu(emoteName)
	return function(store)
		if GuiService.MenuIsOpen then
			if VRService.VREnabled then
				GuiService:SetMenuIsOpen(false, "VRMenu")
			else
				return
			end
		end

		if FFlagEnableNewBackpack then
			Features.setVisibility(Features.FeatureName.Backpack, false)

			if Features.getVisibility(Features.FeatureName.Backpack) then
				return
			end
		else
			if Backpack.IsOpen then
				Backpack.OpenClose()
			end

			-- If user is interacting with the backpack it can stay open
			if Backpack.IsOpen then
				return
			end
		end

		EmotesAnalytics:onMenuOpened()

		-- Backpack was closed, show the emotes menu
		store:dispatch(ShowMenu())
	end
end

return OpenMenu

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("GameSettingsPage")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "settings",
	label = "CoreScripts.InGameMenu.PageTitle.GameSettings",
	sideSheetPlacement = SideSheetPlacement.Page,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleIGMPage("GameSettingsPage", pageOpenSignal:get())
	end,
	isActivated = if FFlagChromeActivatedMappedSignal
		then pageOpenSignal
		else function()
			return pageOpenSignal:get()
		end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/common/settings", "icons/common/settingsOn", pageOpenSignal)
		end,
	},
})

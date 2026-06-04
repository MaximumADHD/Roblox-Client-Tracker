local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)
local Enums = InExperienceSideSheet.Enums

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("LeaveGamePage")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = Enums.ActionBinding.Leave,
	label = "CoreScripts.InGameMenu.LeaveGame",
	sideSheetPlacement = SideSheetPlacement.SessionAction,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleIGMPage("LeaveGamePage", pageOpenSignal:get())
	end,
	isActivated = if FFlagChromeActivatedMappedSignal
		then pageOpenSignal
		else function()
			return pageOpenSignal:get()
		end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/actions/leave", nil, pageOpenSignal)
		end,
	},
})

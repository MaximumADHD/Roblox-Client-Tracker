local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)
local Enums = InExperienceSideSheet.Enums

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("ResetCharacterPage")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = Enums.ActionBinding.Respawn,
	label = "CoreScripts.InGameMenu.QuickActions.Respawn",
	sideSheetPlacement = SideSheetPlacement.SessionAction,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleIGMPage("ResetCharacterPage", pageOpenSignal:get())
	end,
	isActivated = pageOpenSignal,
	components = {
		Icon = function(props)
			return CommonIcon("icons/actions/respawn", nil, pageOpenSignal)
		end,
	},
})

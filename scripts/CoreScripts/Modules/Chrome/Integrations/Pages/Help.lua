local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement
local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch
local FFlagRenameHelpToControls = require(CorePackages.Workspace.Packages.SharedFlags).FFlagRenameHelpToControls

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("HelpPage")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "help",
	label = if FFlagRenameHelpToControls
		then "CoreScripts.InGameMenu.Controls.ControlsPage"
		else "CoreScripts.Feedback.Help.MainHeader",
	sideSheetPlacement = if isPioneerLaunch() then SideSheetPlacement.AboveFold else SideSheetPlacement.BelowFold,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleIGMPage("HelpPage", pageOpenSignal:get())
	end,
	isActivated = pageOpenSignal,
	components = {
		Icon = function(props)
			return CommonIcon(if FFlagRenameHelpToControls then "Controller" else "CircleQuestion", nil, pageOpenSignal)
		end,
	},
})

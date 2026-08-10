local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("PlayersPage")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "people",
	label = "CoreScripts.InGameMenu.PageTitle.Players",
	sideSheetPlacement = SideSheetPlacement.Vertical,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleIGMPage("PlayersPage", pageOpenSignal:get())
	end,
	isActivated = pageOpenSignal,
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/friends", "icons/menu/friendsOn", pageOpenSignal)
		end,
	},
})

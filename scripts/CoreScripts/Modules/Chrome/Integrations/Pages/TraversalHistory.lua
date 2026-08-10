local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("TraversalHistoryPage")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "traversal_history",
	label = "CoreScripts.TopBar.Traversal.History",
	sideSheetPlacement = SideSheetPlacement.Page,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleIGMPage("TraversalHistoryPage", pageOpenSignal:get())
	end,
	isActivated = pageOpenSignal,
	components = {
		Icon = function(props)
			return CommonIcon("Clock", nil, pageOpenSignal)
		end,
	},
})

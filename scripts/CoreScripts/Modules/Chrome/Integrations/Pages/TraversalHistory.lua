local Chrome = script:FindFirstAncestor("Chrome")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local EnumReactPage = require(CoreGui.RobloxGui.Modules.Settings.EnumReactPage)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

local InGameMenuIntegrationUtils = require(script.Parent.InGameMenuIntegrationUtils)

local pageOpenSignal = InGameMenuIntegrationUtils.createPageOpenSignal("TraversalHistoryPage")

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "traversal_history",
	label = "CoreScripts.TopBar.Traversal.History",
	sideSheetPlacement = SideSheetPlacement.Page,
	activated = function(self)
		InGameMenuIntegrationUtils.toggleReactPage(
			"TraversalHistoryPage",
			pageOpenSignal:get(),
			EnumReactPage.TraversalHistory
		)
	end,
	isActivated = if FFlagChromeActivatedMappedSignal
		then pageOpenSignal
		else function()
			return pageOpenSignal:get()
		end,
	components = {
		Icon = function(props)
			return CommonIcon("Clock", nil, pageOpenSignal)
		end,
	},
})

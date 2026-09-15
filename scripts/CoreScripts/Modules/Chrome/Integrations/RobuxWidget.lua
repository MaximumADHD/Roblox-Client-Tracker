local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local ChromeService = require(Chrome.Service)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local InExperienceShop = require(CorePackages.Workspace.Packages.InExperienceShop)
local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)
local isSideSheetEnabled = require(CorePackages.Workspace.Packages.InExperienceSideSheetUtils.isSideSheetEnabled)
local FFlagEnableSideSheetRobuxWidget = require(Chrome.Flags.FFlagEnableSideSheetRobuxWidget)

type SideSheetWidgetProps = ChromePackage.SideSheetWidgetProps

local function openShop()
	if ChromeService:isIntegrationValid(Constants.IN_EXPERIENCE_SHOP_ID) then
		InExperienceShop.requestOpenToRobuxTab()
		ChromeService:activate(Constants.IN_EXPERIENCE_SHOP_ID)
	end
end

local function RobuxWidgetIntegration(props: SideSheetWidgetProps): React.ReactNode
	return React.createElement(InExperienceSideSheet.RobuxWidget, {
		layoutOrder = props.layoutOrder,
		placement = props.placement,
		onBuyActivated = openShop,
	})
end

local robuxWidgetIntegration = nil
if FFlagEnableSideSheetRobuxWidget and isSideSheetEnabled then
	robuxWidgetIntegration = ChromeService:register({
		id = "RobuxWidget",
		label = "Feature.Catalog.Label.BuyRobux",
		activated = function() end,
		initialAvailability = ChromeService.AvailabilitySignal.Available,
		sideSheetPlacement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentTop,
		components = {
			Widget = RobuxWidgetIntegration,
		},
	})
end

return robuxWidgetIntegration or {}

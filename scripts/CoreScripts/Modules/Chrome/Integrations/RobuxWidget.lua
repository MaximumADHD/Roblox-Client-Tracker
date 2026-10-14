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
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagHideHeaderForBuyRobuxInExperienceShop = SharedFlags.FFlagHideHeaderForBuyRobuxInExperienceShop

type SideSheetWidgetProps = ChromePackage.SideSheetWidgetProps

local function openShop()
	if
		ChromeService:isIntegrationValid(Constants.IN_EXPERIENCE_SHOP_ID) or FFlagHideHeaderForBuyRobuxInExperienceShop
	then
		if FFlagHideHeaderForBuyRobuxInExperienceShop then
			InExperienceShop.setOpenedFromBuyRobux(true)
		end
		if not ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID) then
			InExperienceShop.requestOpenToRobuxTab()
		end
		ChromeService:activate(Constants.IN_EXPERIENCE_SHOP_ID)
	end
end

local function RobuxWidgetIntegration(props: SideSheetWidgetProps): React.ReactNode
	return React.createElement(InExperienceSideSheet.RobuxWidget, {
		layoutOrder = props.layoutOrder,
		placement = props.placement,
		onBuyActivated = openShop,
		firstIntegrationToFocusCallback = props.firstIntegrationToFocusCallback,
	})
end

-- TODO APPEXP-5642 (https://roblox.atlassian.net/browse/APPEXP-5642): Hide or
-- disable Buy Robux widget while shop is empty/prefetching.
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

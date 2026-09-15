local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local ChromeService = require(Chrome.Service)
local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch
local React = require(CorePackages.Packages.React)

type SideSheetWidgetProps = ChromePackage.SideSheetWidgetProps

local function openAccountUpsell()
	-- TODO(APPEXP-5399): Open the account upsell flow.
end

local function AccountUpsellIntegration(props: SideSheetWidgetProps): React.ReactNode
	local AccountUpsell = require(CorePackages.Workspace.Packages.InExperienceSideSheet).AccountUpsell
	return React.createElement(AccountUpsell, {
		layoutOrder = props.layoutOrder,
		placement = props.placement,
		onActivated = openAccountUpsell,
	})
end

local accountUpsellDefinition: ChromePackage.IntegrationRegisterProps? = if isPioneerLaunch()
	then {
		id = "AccountUpsell",
		label = "CoreScripts.InGameMenu.UnlockMore.Title",
		activated = function() end,
		sideSheetPlacement = ChromePackage.Enums.SideSheetPlacement.FixedFooterTop,
		components = {
			Widget = AccountUpsellIntegration,
		},
	}
	else nil

local accountUpsellIntegration = nil
if accountUpsellDefinition then
	-- TODO(APPEXP-5433): Only make the account upsell available to eligible users.
	accountUpsellDefinition.initialAvailability = ChromeService.AvailabilitySignal.Available
	accountUpsellIntegration = ChromeService:register(accountUpsellDefinition)
end

return accountUpsellIntegration or {}

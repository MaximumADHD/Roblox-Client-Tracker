local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local AccountUpgrade = require(CorePackages.Workspace.Packages.AccountUpgrade)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local ChromeService = require(Chrome.Service)
local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)
local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch
local React = require(CorePackages.Packages.React)

type SideSheetWidgetProps = ChromePackage.SideSheetWidgetProps

local flow: AccountUpgrade.AccountUpgradeFlow = AccountUpgrade.AccountUpgradeFlow.Pioneer
local accountUpsellIntegration: ChromePackage.IntegrationProps? = nil

local function openAccountUpsell()
	local mountStatus = AccountUpgrade.InExperienceController.mount({
		flow = flow,
		onComplete = function(outcome)
			if outcome.reason == "success" and accountUpsellIntegration then
				accountUpsellIntegration.availability:unavailable()
			end
		end,
	})
	if mountStatus == "already_mounted" then
		AccountUpgrade.InExperienceController.unmount()
	end
end

local function AccountUpsellIntegration(props: SideSheetWidgetProps): React.ReactNode
	return React.createElement(InExperienceSideSheet.AccountUpsell, {
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
		sideSheetPlacement = ChromePackage.Enums.SideSheetPlacement.ScrollableContentBottom,
		components = {
			Widget = AccountUpsellIntegration,
		},
	}
	else nil

if accountUpsellDefinition then
	accountUpsellDefinition.initialAvailability = ChromeService.AvailabilitySignal.Unavailable
	local integration = ChromeService:register(accountUpsellDefinition)
	accountUpsellIntegration = integration

	task.spawn(function()
		local availability = AccountUpgrade.Eligibility.getAvailability(flow)
		if availability.granted then
			integration.availability:available()
		end
	end)
end

return accountUpsellIntegration or {}

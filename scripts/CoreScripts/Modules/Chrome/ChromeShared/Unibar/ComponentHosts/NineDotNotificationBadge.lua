local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(Root.Service)
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local useObservableValue = require(Root.Hooks.useObservableValue)

type IntegrationComponentProps = ChromePackage.IntegrationComponentProps

type IconHostProps = {
	integration: IntegrationComponentProps,
	toggleTransition: any?,
	position: React.Binding<UDim2> | UDim2 | nil,
	visible: React.Binding<boolean> | boolean | nil,
	disableButtonBehaviors: boolean?,
	minBadgeCount: number?,
	showNineDotActivityIndicator: boolean?,
}

export type NineDotNotificationBadgeProps = {
	iconHostProps: IconHostProps,
	NotificationBadge: any,
}

local function NineDotNotificationBadge(props: NineDotNotificationBadgeProps): any?
	local notificationBadgeProps = table.clone(props.iconHostProps)
	notificationBadgeProps.showNineDotActivityIndicator = useObservableValue(
		ChromeService:nineDotActivityIndicatorVisible()
	) == true
	return React.createElement(props.NotificationBadge, notificationBadgeProps)
end

return NineDotNotificationBadge

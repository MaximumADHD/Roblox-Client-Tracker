local ChromeUtils = require(script.Parent.ChromeUtils)

export type IntegrationComponents = {
	Icon: any?,
	Window: any?,
}

export type IntegrationId = string
export type IntegrationIdList = { [number]: string }
export type MenuConfig = { [number]: IntegrationIdList }
export type SecondaryAction = {
	label: string,
	activated: (IntegrationComponentProps) -> (),
}

export type IntegrationProps = {
	id: IntegrationId,
	label: string,
	initialAvailability: number,
	availability: ChromeUtils.AvailabilitySignal,
	components: IntegrationComponents,
	activated: (IntegrationProps) -> ()?,
	notification: ChromeUtils.NotifySignal,
	hideNotificationCountWhileOpen: boolean,
	startingWindowSize: UDim2?,
	startingWindowPosition: UDim2?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
}

export type IntegrationRegisterProps = {
	id: IntegrationId,
	label: string,
	initialAvailability: number?,
	availability: ChromeUtils.AvailabilitySignal?,
	components: IntegrationComponents?,
	activated: (IntegrationProps) -> ()?,
	notification: ChromeUtils.NotifySignal?,
	hideNotificationCountWhileOpen: boolean?,
	startingWindowSize: UDim2?,
	startingWindowPosition: UDim2?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
}

export type IntegrationComponentProps = {
	id: IntegrationId,
	component: any,
	integration: IntegrationProps,
	activated: () -> (),
	order: number,
	children: { [number]: IntegrationComponentProps },
	isDivider: boolean?,
	recentlyUsedItem: boolean?,
}

export type IntegrationList = { [IntegrationId]: IntegrationProps }
export type MenuList = { [number]: IntegrationComponentProps }
export type WindowList = { [number]: IntegrationComponentProps }

return nil

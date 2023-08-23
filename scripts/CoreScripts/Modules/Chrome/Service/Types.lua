local ChromeUtils = require(script.Parent.ChromeUtils)
local WindowSizeSignal = require(script.Parent.WindowSizeSignal)

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
	draggable: boolean?,
	components: IntegrationComponents,
	activated: (IntegrationProps) -> ()?,
	notification: ChromeUtils.NotifySignal,
	hideNotificationCountWhileOpen: boolean,
	startingWindowPosition: UDim2?,
	windowSize: WindowSizeSignal.WindowSizeSignal?,
	cachePosition: boolean?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
	flashNotificationSource: boolean?,
}

export type IntegrationRegisterProps = {
	id: IntegrationId,
	label: string,
	initialAvailability: number?,
	availability: ChromeUtils.AvailabilitySignal?,
	draggable: boolean?,
	components: IntegrationComponents?,
	activated: (IntegrationProps) -> ()?,
	notification: ChromeUtils.NotifySignal?,
	hideNotificationCountWhileOpen: boolean?,
	windowSize: WindowSizeSignal.WindowSizeSignal?,
	cachePosition: boolean?,
	startingWindowPosition: UDim2?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
	flashNotificationSource: boolean?,
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

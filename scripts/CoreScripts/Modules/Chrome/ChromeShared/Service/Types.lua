local Root = script:FindFirstAncestor("ChromeShared")

local ChromeUtils = require(Root.Service.ChromeUtils)
local WindowSizeSignal = require(Root.Service.WindowSizeSignal)

export type IntegrationComponents = {
	Icon: any?,
	Window: any?,
}

export type IntegrationId = string
export type IntegrationIdList = { [number]: string }
export type MenuConfig = { [number]: IntegrationIdList }

export type ShortcutId = string
export type ShortcutIdList = { [number]: ShortcutId }
export type ShortcutProps = {
	id: ShortcutId,
	keyCode: Enum.KeyCode,
	icon: string?,
	label: string?,
	displayPriority: number,
	integration: IntegrationId?,
	actionName: string?,
	activated: (() -> Enum.ContextActionResult?)?,
	availability: ChromeUtils.AvailabilitySignal,
}
export type ShortcutRegisterProps = {
	id: ShortcutId,
	keyCode: Enum.KeyCode,
	label: string?,
	displayPriority: number?,
	integration: IntegrationId?,
	actionName: string?,
	activated: (() -> Enum.ContextActionResult?)?,
	availability: ChromeUtils.AvailabilitySignal?,
}
export type ShortcutBarId = string
export type ShortcutBarProps = ShortcutIdList
export type ShortcutBarList = { [ShortcutBarId]: ShortcutBarProps }
export type ShortcutOverrideId = string

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
	isActivated: (() -> boolean)?,
	selected: ((IntegrationProps) -> ())?,
	notification: ChromeUtils.NotifySignal,
	hideNotificationCountWhileOpen: boolean,
	startingWindowPosition: UDim2?,
	windowDefaultOpen: boolean?,
	windowAnchorPoint: Vector2?,
	windowSize: WindowSizeSignal.WindowSizeSignal?,
	cachePosition: boolean?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
	flashNotificationSource: boolean?,
	persistWindowState: boolean?,
}

export type IntegrationRegisterProps = {
	id: IntegrationId,
	label: string,
	initialAvailability: number?,
	availability: ChromeUtils.AvailabilitySignal?,
	draggable: boolean?,
	components: IntegrationComponents?,
	activated: (IntegrationProps) -> ()?,
	isActivated: (() -> boolean)?,
	selected: ((IntegrationProps) -> ())?,
	notification: ChromeUtils.NotifySignal?,
	hideNotificationCountWhileOpen: boolean?,
	windowSize: WindowSizeSignal.WindowSizeSignal?,
	cachePosition: boolean?,
	startingWindowPosition: UDim2?,
	windowDefaultOpen: boolean?,
	windowAnchorPoint: Vector2?,
	hotkeyCodes: { [number]: Enum.KeyCode }?,
	secondaryAction: SecondaryAction?,
	flashNotificationSource: boolean?,
	persistWindowState: boolean?,
}

export type IntegrationComponentProps = {
	id: IntegrationId,
	component: any,
	integration: IntegrationProps,
	activated: () -> (),
	order: number,
	children: { [number]: IntegrationComponentProps },
	isDivider: boolean?,
}

export type IntegrationList = { [IntegrationId]: IntegrationProps }
export type MenuList = { [number]: IntegrationComponentProps }
export type WindowList = { [number]: IntegrationComponentProps }
export type ShortcutList = { [ShortcutId]: ShortcutProps }
export type ShortcutBarItems = { [number]: ShortcutProps }

export type ActivateProps = {
	fromShortcut: boolean?,
}

return nil

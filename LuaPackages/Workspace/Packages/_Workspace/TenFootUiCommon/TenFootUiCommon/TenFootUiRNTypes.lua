local Packages = script:FindFirstAncestor("TenFootUiCommon").Parent
local React = require(Packages.React)
local Action = require(Packages.Rodux).makeActionCreator

export type AnimationStyle = "XDirection" | "ZDirection" | "None"

local AnimationStyleEnum = {
	XDirection = "XDirection" :: "XDirection",
	ZDirection = "ZDirection" :: "ZDirection",
	None = "None" :: "None",
}

export type GlobalNavDisplayOption = "ShowAll" | "TabGroupOnly" | "OptionGroupOnly" | "HideAll"

local GlobalNavDisplayOption = {
	ShowAll = "ShowAll" :: "ShowAll",
	TabGroupOnly = "TabGroupOnly" :: "TabGroupOnly",
	OptionGroupOnly = "OptionGroupOnly" :: "OptionGroupOnly",
	HideAll = "HideAll" :: "HideAll",
}

export type RouteState = {
	key: string,
	routeName: string,
	params: { [any]: any }?,
} & ({ routes: nil } | { index: number, routes: { RouteState } })

export type NavigationState = {
	key: string,
	index: number,
	routes: { RouteState },
	isTransitioning: boolean?,
}

export type Action = typeof(Action(...))

export type NavigationObject = {
	state: NavigationState,
	getParam: (param: string, default: any) -> any,
	dispatch: (Action) -> (),
	addListener: (event: string, (e: any) -> ()) -> { remove: () -> () },
	_childrenNavigation: any?,
}

export type ScreenKind = "Default" | "FullScreen" | "Overlay"
local ScreenKind = {
	Default = "Default" :: "Default",
	FullScreen = "FullScreen" :: "FullScreen",
	Overlay = "Overlay" :: "Overlay",
}

type OverlayScreen = {
	sizeScale: Vector2?,
	positionOffset: Vector2?, -- relative to fullscreen canvas size
	absorbInput: boolean?,
	absorbInputCallback: (NavigationObject) -> ()?, -- only useful if absorbInput is true
}

export type SharedDescriptorOptions = {
	screenKind: ScreenKind,
	screenWrapper: React.ComponentType<any> | "CanvasGroup"?,
	animationStyle: AnimationStyle?,
	globalNavDisplayOption: GlobalNavDisplayOption?,
}

export type DescriptorOptions = SharedDescriptorOptions & OverlayScreen

export type Descriptor = {
	getComponent: () -> React.ComponentType<any>,
	key: string,
	options: DescriptorOptions,
	navigation: NavigationObject,
	state: NavigationState,
}

export type SwitchNavigatorConfig = {
	surfaceGuiContainer: Instance,
	worldContainer: Instance,
}

export type StackNavigatorConfig = {
	initialRouteKey: string,
	surfaceGuiContainer: Instance?,
	worldContainer: Instance?,
}

export type RouteArray = {
	{
		[string]: {
			screen: React.ComponentType<any>,
			navigationOptions: {
				screenKind: ScreenKind,
			}?,
		},
	}
}

export type ScreenProps = { [string]: any }

return {
	ScreenKind = ScreenKind,
	AnimationStyleEnum = AnimationStyleEnum,
	GlobalNavDisplayOption = GlobalNavDisplayOption,
}

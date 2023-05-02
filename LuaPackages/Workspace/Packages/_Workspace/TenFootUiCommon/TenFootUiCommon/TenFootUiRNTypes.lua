local Packages = script:FindFirstAncestor("TenFootUiCommon").Parent
local React = require(Packages.React)

export type ScreenKind = "Default" | "FullScreen" | "Overlay"

export type DefaultScreen = {
	screenKind: "Default",
}

export type FullScreen = {
	screenKind: "FullScreen",
}

export type OverlayScreen = {
	screenKind: "Overlay",
	transparency: number?,
	absorbInput: boolean?,
}

export type AnimationStyle = "XDirection" | "ZDirection" | "None"

local AnimationStyleEnum = {
	XDirection = "XDirection" :: "XDirection",
	ZDirection = "ZDirection" :: "ZDirection",
	None = "None" :: "None",
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

export type NavigationObject = {
	state: NavigationState,
	getParam: (param: string, default: any) -> any,
	dispatch: (any) -> (),
	addListener: (event: string, (e: any) -> ()) -> { remove: () -> () },
	_childrenNavigation: any?,
}

export type DescriptorOptions = {
	screenKind: ScreenKind,
	animationStyle: AnimationStyle?,
}

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
	AnimationStyleEnum = AnimationStyleEnum,
}

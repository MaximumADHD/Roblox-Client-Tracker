local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
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
}

export type Descriptor = {
	getComponent: () -> React.ComponentType<any>,
	key: string,
	options: {
		screenKind: ScreenKind,
	},
	navigation: NavigationObject,
	state: NavigationState,
}

export type SwitchNavigatorConfig = {
	surfaceGuiContainer: Instance,
	worldContainer: Instance,
}

export type StackNavigatorConfig = {
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

return {}

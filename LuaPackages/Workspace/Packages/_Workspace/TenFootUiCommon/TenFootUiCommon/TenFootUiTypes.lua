local Packages = script:FindFirstAncestor("TenFootUiCommon").Parent
local AppCommonLib = require(Packages.AppCommonLib)
local React = require(Packages.React)
local TenFootUiRNTypes = require(script.Parent.TenFootUiRNTypes)

export type GlobalNavItem = {
	titleLocalizationKey: string,
	page: string,
	pageComponent: (React.React_ComponentType<any> | React.FC<any>)?,
	icon: string?,
	iconComponent: (React.React_ComponentType<any> | React.FC<any>)?,
	actionType: Enum.AppShellActionType? | string?,
}

export type GlobalNavConfig = {
	tabs: { GlobalNavItem },
	options: { GlobalNavItem },
}

export type SwitchRouteConfig = {
	[string]: {
		screen: React.ComponentType<any>,
		navigationOptions: {
			screenKind: TenFootUiRNTypes.ScreenKind,
		},
	},
}

export type StackRouteConfig = {
	screenStack: TenFootUiRNTypes.RouteArray,
	navigationOptions: {
		screenKind: TenFootUiRNTypes.ScreenKind,
	},
	navigatorConfig: TenFootUiRNTypes.StackNavigatorConfig,
}

export type TenFootUiRouterConfig = {
	switchRoutes: { [number]: SwitchRouteConfig },
	stackRoutes: { [number]: { [string]: StackRouteConfig } },
	commonStackRoutes: TenFootUiRNTypes.RouteArray,
}

type Symbol = typeof(newproxy(true))

export type TenFootUiContext = {
	LuaAppEvents: { [string]: AppCommonLib.Signal },
	RoactAnalytics: Symbol,
	buttonClick: any,
	globalNavConfig: GlobalNavConfig,
	useRoactService: <T>(tag: Symbol) -> T,
	routerConfig: TenFootUiRouterConfig,
}

return {}

local Packages = script:FindFirstAncestor("TenFootUiCommon").Parent
local AppCommonLib = require(Packages.AppCommonLib)
local React = require(Packages.React)

export type GlobalNavItem = {
	titleLocalizationKey: string,
	page: string,
	icon: string?,
	iconComponent: (React.React_ComponentType<any> | React.FC<any>)?,
	actionType: Enum.AppShellActionType? | string?,
}

export type GlobalNavConfig = {
	tabs: { GlobalNavItem },
	options: { GlobalNavItem },
}

type Symbol = typeof(newproxy(true))

export type TenFootUiContext = {
	LuaAppEvents: { [string]: AppCommonLib.Signal },
	RoactAnalytics: Symbol,
	buttonClick: any,
	globalNavConfig: GlobalNavConfig,
	useRoactService: <T>(tag: Symbol) -> T,
}

return {}

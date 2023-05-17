local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local FocusNavigableWrapper = require(TenFootUiShell.Components.FocusNavigableWrapper)
local useFocusRegistryEntry = require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useFocusRegistryEntry
local useRegisterFocusNavigableSurface =
	require(TenFootUiShell.Hooks.FocusNavigableSurfaceRegistry).useRegisterFocusNavigableSurface
local FocusNavigableSurfaceIdentifierEnum = require(TenFootUiShell.Types.FocusNavigableSurfaceIdentifierEnum)
local useRootFocusNavigationBindings = require(TenFootUiShell.Hooks.useRootFocusNavigationBindings)
local SceneView = RoactNavigation.SceneView

type NavigationObject = TenFootUiCommon.NavigationObject
type ScreenProps = TenFootUiCommon.ScreenProps

--[[
	TODO: Remove in CLIXBOX-2955
]]

type Props = {
	isFocusable: boolean,
	navigation: NavigationObject,
	component: React.ComponentType<any>,
	screenProps: ScreenProps?,
}
local function SceneViewWithFocusRoot(props: Props)
	local screenInstance, setScreenInstance = React.useState(nil :: GuiObject?)
	local onSelectUp = useFocusRegistryEntry(FocusNavigableSurfaceIdentifierEnum.NavBar)
	local registerFocusNavigationRoot = useRegisterFocusNavigableSurface()
	local rootBindingsRef: React.Ref<Instance> = useRootFocusNavigationBindings(setScreenInstance)
	local focusable = props.isFocusable

	React.useEffect(function()
		if screenInstance and focusable then
			registerFocusNavigationRoot(FocusNavigableSurfaceIdentifierEnum.RouterView, screenInstance)
		end
	end, { screenInstance, focusable } :: { any })

	return React.createElement(
		FocusNavigableWrapper,
		{
			ref = rootBindingsRef,
			onSelectUp = onSelectUp,
		},
		React.createElement(
			SceneView,
			{ navigation = props.navigation, component = props.component, screenProps = props.screenProps }
		)
	)
end
return SceneViewWithFocusRoot

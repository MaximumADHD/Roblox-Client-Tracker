local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local SceneView = RoactNavigation.SceneView

local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local calculatePageContentAdorneeProps = SceneManagement.calculateAdorneeProps.calculatePageContentAdorneeProps

local Constants = require(script.Parent.Constants)
local TenFootUiNavigatorTypes = require(script.Parent.Parent.TenFootUiNavigatorTypes)

type NavigationObject = TenFootUiNavigatorTypes.NavigationObject
type NavigatorConfig = TenFootUiNavigatorTypes.NavigatorConfig
type Descriptor = TenFootUiNavigatorTypes.Descriptor
type NavigationState = TenFootUiNavigatorTypes.NavigationState

export type Props = {
	screenProps: { [any]: any }?,
	navigation: NavigationObject,
	navigationConfig: NavigatorConfig,
	descriptors: {
		[string]: Descriptor,
	},
}

local function TenFootUiSwitchView(props: Props)
	local descriptors = props.descriptors
	local navigationConfig = props.navigationConfig
	local screenProps = props.screenProps

	local navigation = props.navigation
	local state = navigation.state

	local dims: Vector3, cframe: CFrame = React.useMemo(function()
		return calculatePageContentAdorneeProps(Constants.PageContentHeightRatio, Constants.DefaultDistanceToCamera)
	end, {})

	local activeKey = state.routes[state.index].key
	local descriptor = descriptors[activeKey]

	return React.createElement(SurfaceGuiWithAdornee, {
		adorneeSize = dims,
		adorneeCFrame = cframe,
		canvasSize = Constants.PageContentCanvasSize,
		alwaysOnTop = true,
		isVisible = true,
		name = descriptor.key,
		adorneeParent = navigationConfig.worldContainer,
		surfaceGuiParent = navigationConfig.surfaceGuiContainer,
		children = React.createElement(SceneView, {
			component = descriptor.getComponent(),
			navigation = descriptor.navigation,
			screenProps = screenProps,
		}),
	})
end

return TenFootUiSwitchView

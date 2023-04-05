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
type SwitchNavigatorConfig = TenFootUiNavigatorTypes.SwitchNavigatorConfig
type Descriptor = TenFootUiNavigatorTypes.Descriptor

export type Props = {
	screenProps: { [any]: any }?,
	navigation: NavigationObject,
	navigationConfig: SwitchNavigatorConfig,
	descriptors: {
		[string]: Descriptor,
	},
}

local function TenFootUiSwitchView(props: Props)
	local visitedScreenKeys, setVisitedScreenKeys = React.useState({})

	local descriptors = props.descriptors
	local navigationConfig = props.navigationConfig
	local screenProps = props.screenProps

	local navigation = props.navigation
	local state = navigation.state

	local dims: Vector3, cframe: CFrame = React.useMemo(function()
		return calculatePageContentAdorneeProps(Constants.PageContentHeightRatio, Constants.DefaultDistanceToCamera)
	end, {})

	local activeKey = state.routes[state.index].key

	if not visitedScreenKeys[activeKey] then
		setVisitedScreenKeys(function(prevVisitedScreenKeys)
			local nextVisitedScreenKeys = table.clone(prevVisitedScreenKeys)
			nextVisitedScreenKeys[activeKey] = true
			return nextVisitedScreenKeys
		end)
	end

	local screens = {}
	for key, descriptor in descriptors do
		local isActiveKey = (key == activeKey)
		if visitedScreenKeys[key] == true then
			screens[key] = React.createElement(SurfaceGuiWithAdornee, {
				adorneeSize = dims,
				adorneeCFrame = cframe,
				canvasSize = Constants.PageContentCanvasSize,
				alwaysOnTop = isActiveKey,
				isVisible = isActiveKey,
				name = key,
				adorneeParent = navigationConfig.worldContainer,
				surfaceGuiParent = navigationConfig.surfaceGuiContainer,
				children = React.createElement(SceneView, {
					component = descriptor.getComponent(),
					navigation = descriptor.navigation,
					screenProps = screenProps,
				}),
			})
		end
	end

	return React.createElement("Folder", nil, { screens })
end

return TenFootUiSwitchView

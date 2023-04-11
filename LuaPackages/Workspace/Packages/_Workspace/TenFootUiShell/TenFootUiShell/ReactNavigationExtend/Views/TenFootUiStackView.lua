local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local SceneView = RoactNavigation.SceneView
local StackActions = RoactNavigation.StackActions

local SceneManagement = require(Packages.SceneManagement)
local SurfaceGuiWithAdornee = SceneManagement.SurfaceGuiWithAdornee
local calculatePageContentAdorneeProps = SceneManagement.calculateAdorneeProps.calculatePageContentAdorneeProps

local Constants = require(script.Parent.Constants)
local TenFootUiNavigatorTypes = require(script.Parent.Parent.TenFootUiNavigatorTypes)
local useStackScreens = require(ReactNavigationExtend.Hooks.useStackScreens)
type NavigationObject = TenFootUiNavigatorTypes.NavigationObject
type NavigatorConfig = TenFootUiNavigatorTypes.NavigatorConfig
type Descriptor = TenFootUiNavigatorTypes.Descriptor

export type Props = {
	screenProps: { [any]: any }?,
	navigation: NavigationObject,
	navigationConfig: NavigatorConfig,
	descriptors: {
		[string]: Descriptor,
	},
}

local function TenFootUiStackView(props: Props)
	local descriptors = props.descriptors
	local navigationConfig = props.navigationConfig
	local screenProps = props.screenProps

	local navigation = props.navigation
	local state = navigation.state

	local dims: Vector3, cframe: CFrame = React.useMemo(function()
		return calculatePageContentAdorneeProps(Constants.PageContentHeightRatio, Constants.DefaultDistanceToCamera)
	end, {})

	local completeTransition = React.useCallback(function(toChildKey: string?)
		navigation.dispatch(StackActions.completeTransition({
			key = state.key,
			toChildKey = toChildKey,
		}))
	end, { state })

	local cardStack = useStackScreens({
		navigationState = state,
		descriptors = descriptors,
		completeTransition = completeTransition,
	})

	local cards = {}
	for _, screenInfo in cardStack.screens do
		local cardKey = screenInfo.key
		local descriptor = screenInfo.descriptor

		table.insert(cards, {
			[cardKey] = React.createElement(SurfaceGuiWithAdornee, {
				adorneeSize = dims,
				adorneeCFrame = cframe,
				canvasSize = Constants.PageContentCanvasSize,
				alwaysOnTop = screenInfo.visible,
				isVisible = screenInfo.visible,
				name = cardKey,
				adorneeParent = navigationConfig.worldContainer,
				surfaceGuiParent = navigationConfig.surfaceGuiContainer,
				children = React.createElement(SceneView, {
					component = descriptor.getComponent(),
					navigation = descriptor.navigation,
					screenProps = screenProps,
				}),
			}),
		})
	end

	return React.createElement("Folder", nil, { cards })
end

return TenFootUiStackView

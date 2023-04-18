local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local RoactNavigation = require(Packages.RoactNavigation)
local StackActions = RoactNavigation.StackActions

local TenFootUiStackViewCard = require(ReactNavigationExtend.Views.Cards.TenFootUiStackViewCard)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local useStackScreens = require(ReactNavigationExtend.Hooks.useStackScreens)
type NavigationObject = TenFootUiCommon.NavigationObject
type StackNavigatorConfig = TenFootUiCommon.StackNavigatorConfig
type Descriptor = TenFootUiCommon.Descriptor

export type Props = {
	screenProps: { [any]: any }?,
	navigation: NavigationObject,
	navigationConfig: StackNavigatorConfig,
	descriptors: {
		[string]: Descriptor,
	},
}

local function TenFootUiStackView(props: Props)
	local descriptors = props.descriptors
	local navigatorConfig = props.navigationConfig
	local screenProps = props.screenProps

	local navigation = props.navigation
	local state = navigation.state

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

		local isVisible = screenInfo.visible
		if screenProps and screenProps.isVisible ~= nil then
			isVisible = isVisible and screenProps.isVisible
		end

		local adorneeParent
		if screenProps and screenProps.adorneeParent then
			adorneeParent = screenProps.adorneeParent
		elseif navigatorConfig.worldContainer then
			adorneeParent = navigatorConfig.worldContainer
		end

		local surfaceGuiParent
		if screenProps and screenProps.surfaceGuiParent then
			surfaceGuiParent = screenProps.surfaceGuiParent
		elseif navigatorConfig.surfaceGuiContainer then
			surfaceGuiParent = navigatorConfig.surfaceGuiContainer
		end

		if adorneeParent and surfaceGuiParent then
			table.insert(cards, {
				[cardKey] = React.createElement(TenFootUiStackViewCard, {
					isVisible = isVisible,
					descriptor = descriptor,
					adorneeParent = adorneeParent,
					surfaceGuiParent = surfaceGuiParent,
					screenProps = screenProps,
				}),
			})
		end
	end

	return React.createElement("Folder", nil, cards)
end

return TenFootUiStackView

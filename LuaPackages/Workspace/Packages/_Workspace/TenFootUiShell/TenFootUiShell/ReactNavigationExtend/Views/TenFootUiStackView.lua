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
type ScreenProps = TenFootUiCommon.ScreenProps

export type Props = {
	screenProps: ScreenProps?,
	navigation: NavigationObject,
	navigationConfig: StackNavigatorConfig,
	descriptors: {
		[string]: Descriptor,
	},
}

local function TenFootUiStackView(props: Props)
	local descriptors = props.descriptors
	local navigatorConfig = props.navigationConfig
	local screenProps: ScreenProps = props.screenProps or {}
	local isStackActive = screenProps.isActiveKey

	local navigation = props.navigation
	local state = navigation.state

	local completeTransition = React.useCallback(function(toChildKey: string?)
		navigation.dispatch(StackActions.completeTransition({
			key = state.key,
			toChildKey = toChildKey,
		}))
	end, { state })

	local prevScreenVisible, setPrevScreenVisible = React.useState({})

	local cardStack = useStackScreens({
		navigationState = state,
		descriptors = descriptors,
		completeTransition = completeTransition,
		isStackActive = screenProps.isActiveKey,
	})

	-- If stack is not active, don't update the visibliblity
	React.useEffect(function()
		if isStackActive then
			local willUpdate = false
			local next = {}
			for _, screenInfo in cardStack.screens do
				next[screenInfo.key] = screenInfo.visible
				if prevScreenVisible[screenInfo.key] ~= screenInfo.visible then
					willUpdate = true
				end
			end
			if willUpdate then
				setPrevScreenVisible(next)
			end
		end
	end, { isStackActive, prevScreenVisible, cardStack.screens } :: { any })

	local cards = {}
	for _, screenInfo in cardStack.screens do
		local cardKey = screenInfo.key
		local descriptor = screenInfo.descriptor

		local isVisible
		if screenProps.isActiveKey then
			isVisible = screenInfo.visible
		else
			isVisible = prevScreenVisible[cardKey] or false
		end

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
					viewState = screenInfo.viewState,
					descriptor = descriptor,
					adorneeParent = adorneeParent,
					surfaceGuiParent = surfaceGuiParent,
					screenProps = screenProps,
					setOpened = function()
						cardStack.setOpened(screenInfo)
					end,
					setClosed = function()
						cardStack.setClosed(screenInfo)
					end,
				}),
			})
		end
	end

	return React.createElement(React.Fragment, nil, cards)
end

return TenFootUiStackView

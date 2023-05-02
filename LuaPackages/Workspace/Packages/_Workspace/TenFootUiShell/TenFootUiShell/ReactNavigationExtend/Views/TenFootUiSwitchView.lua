local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiSwitchViewCard = require(ReactNavigationExtend.Views.Cards.TenFootUiSwitchViewCard)

type NavigationObject = TenFootUiCommon.NavigationObject
type SwitchNavigatorConfig = TenFootUiCommon.SwitchNavigatorConfig
type Descriptor = TenFootUiCommon.Descriptor

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
	local navigatorConfig = props.navigationConfig
	local screenProps = props.screenProps

	local navigation = props.navigation
	local state = navigation.state
	local index = state.index

	local activeKey = state.routes[index].key

	React.useEffect(function()
		if not visitedScreenKeys[activeKey] then
			setVisitedScreenKeys(function(prevVisitedScreenKeys)
				local nextVisitedScreenKeys = table.clone(prevVisitedScreenKeys)
				nextVisitedScreenKeys[activeKey] = true
				return nextVisitedScreenKeys
			end)
		end
	end, { activeKey, visitedScreenKeys } :: { any })

	local screens = {}
	for key, descriptor in descriptors do
		local isActiveKey = (key == activeKey)
		if visitedScreenKeys[key] ~= nil then
			screens[key] = React.createElement(TenFootUiSwitchViewCard, {
				isActiveKey = isActiveKey,
				index = index,
				descriptor = descriptor,
				adorneeParent = navigatorConfig.worldContainer,
				surfaceGuiParent = navigatorConfig.surfaceGuiContainer,
				screenProps = screenProps,
			})
		end
	end

	return React.createElement("Folder", nil, { screens })
end

return TenFootUiSwitchView

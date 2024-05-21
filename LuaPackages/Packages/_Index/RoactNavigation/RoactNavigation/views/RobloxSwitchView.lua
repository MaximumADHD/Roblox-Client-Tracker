local views = script.Parent
local root = views.Parent
local Packages = root.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local React = require(Packages.React)
local SceneView = require(views.SceneView)

local defaultNavigationConfig = {
	keepVisitedScreensMounted = false,
}

local RobloxSwitchView = React.Component:extend("RobloxSwitchView")

function RobloxSwitchView.getDerivedStateFromProps(nextProps, prevState)
	local navState = nextProps.navigation.state
	local activeKey = navState.routes[navState.index].key
	local descriptors = nextProps.descriptors

	local navigationConfig = Object.assign(table.clone(defaultNavigationConfig), nextProps.navigationConfig or {})
	local keepVisitedScreensMounted = navigationConfig.keepVisitedScreensMounted

	local visitedScreenKeys = {
		[activeKey] = true,
	}

	if keepVisitedScreensMounted then
		-- prune visited screen keys if they are not included in incoming descriptors
		if prevState.visitedScreenKeys then
			for prevKey in prevState.visitedScreenKeys do
				if descriptors[prevKey] ~= nil then
					visitedScreenKeys[prevKey] = true
				end
			end
		end
	end

	return {
		visitedScreenKeys = visitedScreenKeys,
	}
end

function RobloxSwitchView:init()
	self.state = {}
end

function RobloxSwitchView:render()
	local navState = self.props.navigation.state
	local screenProps = self.props.screenProps
	local descriptors = self.props.descriptors
	local visitedScreenKeys = self.state.visitedScreenKeys
	local activeKey = navState.routes[navState.index].key

	local screenElements = {}
	for key, descriptor in descriptors do
		local isActiveKey = (key == activeKey)

		if visitedScreenKeys[key] == true then
			screenElements["card_" .. key] = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = false,
				BorderSizePixel = 0,
				Visible = isActiveKey,
			}, {
				Content = React.createElement(SceneView, {
					component = descriptor.getComponent(),
					navigation = descriptor.navigation,
					screenProps = screenProps,
				}),
			})
		end
	end

	return React.createElement("Folder", nil, screenElements)
end

return RobloxSwitchView

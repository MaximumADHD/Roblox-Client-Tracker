local Cryo = require(script.Parent.Parent.Parent.Cryo)
local Roact = require(script.Parent.Parent.Parent.Roact)
local SceneView = require(script.Parent.SceneView)

local defaultNavigationConfig = {
	keepVisitedScreensMounted = false,
}

local RobloxSwitchView = Roact.Component:extend("RobloxSwitchView")

function RobloxSwitchView.getDerivedStateFromProps(nextProps, prevState)
	local navState = nextProps.navigation.state
	local activeKey = navState.routes[navState.index].key
	local descriptors = nextProps.descriptors

	local navigationConfig = Cryo.Dictionary.join(defaultNavigationConfig, nextProps.navigationConfig or {})
	local keepVisitedScreensMounted = navigationConfig.keepVisitedScreensMounted

	local visitedScreenKeys = {
		[activeKey] = true
	}

	if keepVisitedScreensMounted then
		-- prune visited screen keys if they are not included in incoming descriptors
		for prevKey in pairs(prevState.visitedScreenKeys or {}) do
			if descriptors[prevKey] ~= nil then
				visitedScreenKeys[prevKey] = true
			end
		end
	end

	return {
		visitedScreenKeys = visitedScreenKeys,
	}
end

function RobloxSwitchView:render()
	local navState = self.props.navigation.state
	local screenProps = self.props.screenProps
	local descriptors = self.props.descriptors
	local visitedScreenKeys = self.state.visitedScreenKeys
	local activeKey = navState.routes[navState.index].key

	local screenElements = {}
	for key, descriptor in pairs(descriptors) do
		local isActiveKey = (key == activeKey)

		if visitedScreenKeys[key] == true then
			screenElements["card_" .. key] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				BorderSizePixel = 0,
				Visible = isActiveKey,
			}, {
				Content = Roact.createElement(SceneView, {
					component = descriptor.getComponent(),
					navigation = descriptor.navigation,
					screenProps = screenProps,
				})
			})
		end
	end

	return Roact.createElement("Folder", nil, screenElements)
end

return RobloxSwitchView

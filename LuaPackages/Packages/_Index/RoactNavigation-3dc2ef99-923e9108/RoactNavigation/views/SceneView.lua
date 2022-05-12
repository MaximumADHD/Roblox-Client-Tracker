-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/views/SceneView.js

local Roact = require(script.Parent.Parent.Parent.Roact)
local NavigationContext = require(script.Parent.NavigationContext)

local SceneView = Roact.PureComponent:extend("SceneView")

function SceneView:render()
	local screenProps = self.props.screenProps
	local component = self.props.component
	local navigation = self.props.navigation

	return Roact.createElement(NavigationContext.Provider, {
		value = navigation,
	}, {
		Scene = Roact.createElement(component, {
			screenProps = screenProps,
			navigation = navigation,
		})
	})
end

return SceneView

local Roact = require(script.Parent.Parent.Parent.Roact)
local AppNavigationContext = require(script.Parent.AppNavigationContext)

local SceneView = Roact.PureComponent:extend("SceneView")

function SceneView:render()
	local screenProps = self.props.screenProps
	local component = self.props.component
	local navigation = self.props.navigation

	return Roact.createElement(AppNavigationContext.Provider, {
		navigation = navigation,
	}, {
		Scene = Roact.createElement(component, {
			screenProps = screenProps,
			navigation = navigation,
		})
	})
end

return SceneView

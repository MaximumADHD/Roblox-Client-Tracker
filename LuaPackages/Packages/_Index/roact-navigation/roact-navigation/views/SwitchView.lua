local Roact = require(script.Parent.Parent.Parent.Roact)
local SceneView = require(script.Parent.SceneView)

local SwitchView = Roact.Component:extend("SwitchView")

function SwitchView:render()
	local navState = self.props.navigation.state
	local screenProps = self.props.screenProps

	local activeKey = navState.routes[navState.index].key
	local descriptor = self.props.descriptors[activeKey]
	local childComponent = descriptor.getComponent()

	return Roact.createElement(SceneView, {
		component = childComponent,
		navigation = descriptor.navigation,
		screenProps = screenProps,
	})
end

return SwitchView

local Roact = require(script.Parent.Parent.Parent.Roact)

local StubComponent = Roact.Component:extend("BottomTabNavigator")

function StubComponent.render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0)
	})
end

return function(--[[routeConfigs, navigatorConfig]])
	-- TODO: Implement me.
	return StubComponent
end

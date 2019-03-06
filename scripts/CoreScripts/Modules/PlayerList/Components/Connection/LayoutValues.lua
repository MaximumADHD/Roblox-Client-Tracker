local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local LAYOUT_VALUES_KEY = "LayoutValues"

local LayoutValuesProvider = Roact.Component:extend("LayoutValuesProvider")

function LayoutValuesProvider:init(props)
	self._context[LAYOUT_VALUES_KEY] = props.layoutValues
end

function LayoutValuesProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local LayoutValuesConsumer = Roact.Component:extend("LayoutValuesConsumer")

function LayoutValuesConsumer:render()
	local layoutValues = self._context[LAYOUT_VALUES_KEY]

	return self.props.render(layoutValues)
end

local function WithLayoutValues(callback)
	return Roact.createElement(LayoutValuesConsumer, {
		render = callback
	})
end

return {
	Consumer = LayoutValuesConsumer,
	Provider = LayoutValuesProvider,
	WithLayoutValues = WithLayoutValues,
}
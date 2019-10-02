--[[
	LayoutValuesConsumer will extract the LayoutValues object
	from context and pass it into the given render callback
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local LayoutValuesKey = require(script.Parent.Parent.Parent.LayoutValuesKey)

local LayoutValuesConsumer = Roact.Component:extend("LayoutValuesConsumer")

function LayoutValuesConsumer:render()
	local service = self._context[LayoutValuesKey]

	return self.props.render(service)
end

return LayoutValuesConsumer
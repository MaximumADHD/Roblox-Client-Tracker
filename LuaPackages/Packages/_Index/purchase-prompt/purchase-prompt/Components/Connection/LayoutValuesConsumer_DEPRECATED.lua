--[[
	LayoutValuesConsumer will extract the LayoutValues object
	from context and pass it into the given render callback
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Roact = require(LuaPackages.Roact)

local LayoutValuesKey = require(script.Parent.Parent.Parent.LayoutValuesKey)

local LayoutValuesConsumer = Roact.Component:extend("LayoutValuesConsumer")

function LayoutValuesConsumer:render()
	local service = self._context[LayoutValuesKey]

	return self.props.render(service)
end

return LayoutValuesConsumer
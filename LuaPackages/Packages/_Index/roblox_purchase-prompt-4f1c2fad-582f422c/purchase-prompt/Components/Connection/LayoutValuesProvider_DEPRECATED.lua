--[[
	LayoutValuesProvider is a simple wrapper component that injects the
	specified services into context
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Roact = require(LuaPackages.Roact)

local LayoutValuesKey = require(script.Parent.Parent.Parent.LayoutValuesKey)

local LayoutValuesProvider = Roact.Component:extend("LayoutValuesProvider")

function LayoutValuesProvider:init(props)
	assert(type(props.layoutValues) == "table", "Expected required prop 'layoutValues' to be a table")
	assert(type(props.render) == "function", "Expected prop 'render' to be a function")

	self._context[LayoutValuesKey] = props.layoutValues
end

function LayoutValuesProvider:render()
	return self.props.render()
end

return LayoutValuesProvider
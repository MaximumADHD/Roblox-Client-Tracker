--[[
	LayoutValuesProvider is a simple wrapper component that injects the
	specified services into context
]]
local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Roact = require(LuaPackages.Roact)

local LayoutValues = require(Root.Services.LayoutValues)
local LayoutValuesKey = require(Root.LayoutValuesKey)

local connectToStore = require(Root.connectToStore)
local preloadImageAssets = require(Root.preloadImageAssets)

local Constants = require(Root.Misc.Constants)

local LayoutValuesProvider = Roact.Component:extend("LayoutValuesProvider")

function LayoutValuesProvider:init(props)
	assert(type(props.isTenFootInterface) == "boolean", "Expected required prop 'isTenFootInterface' to be a boolean")
	assert(type(props.render) == "function", "Expected prop 'render' to be a function")

	self.layoutValues = LayoutValues.new(self.props.isTenFootInterface, false)
	self._context[LayoutValuesKey] = self.layoutValues
end

function LayoutValuesProvider:didMount()
	preloadImageAssets(self.layoutValues.layout.Image)
end

function LayoutValuesProvider:render()
	return self.props.render()
end

function LayoutValuesProvider:didUpdate(previousProps)
	local abVars = self.props.abVariations
	if self.props.isTenFootInterface ~= previousProps.isTenFootInterface
			or abVars[Constants.ABTests.ROBUX_HEX_ICON] ~= previousProps.abVariations[Constants.ABTests.ROBUX_HEX_ICON] then
		self.layoutValues:update(self.props.isTenFootInterface,
			abVars[Constants.ABTests.ROBUX_HEX_ICON] == "Variation1")
	end
end

local function mapStateToProps(state)
	return {
		abVariations = state.abVariations,
	}
end

LayoutValuesProvider = connectToStore(
	mapStateToProps
)(LayoutValuesProvider)

return LayoutValuesProvider
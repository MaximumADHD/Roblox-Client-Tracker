--[[
	LayoutValuesProvider is a simple wrapper component that injects the
	specified services into context
]]
local Root = script.Parent.Parent.Parent

local ContentProvider = game:GetService("ContentProvider")

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local LayoutValues = require(Root.Services.LayoutValues)
local LayoutValuesKey = require(Root.Symbols.LayoutValuesKey)
local connectToStore = require(Root.connectToStore)

local LayoutValuesProvider = Roact.Component:extend("LayoutValuesProvider")

function LayoutValuesProvider:init(props)
	assert(type(props.isTenFootInterface) == "boolean", "Expected required prop 'isTenFootInterface' to be a boolean")
	assert(type(props.render) == "function", "Expected prop 'render' to be a function")

	self.layoutValues = LayoutValues.new(self.props.isTenFootInterface, false)
	self._context[LayoutValuesKey] = self.layoutValues
end

function LayoutValuesProvider:didMount()
	-- preload images
	spawn(function()
		local assets = {}

		for _, image in pairs(self.layoutValues.layout.Image) do
			local decal = Instance.new("Decal")
			decal.Texture = image.Path
			table.insert(assets, decal)
		end

		ContentProvider:PreloadAsync(assets)

		for _,asset in pairs(assets) do
			asset:Destroy()
		end
	end)
end

function LayoutValuesProvider:render()
	return self.props.render()
end

function LayoutValuesProvider:didUpdate(previousProps)
	if self.props.isTenFootInterface ~= previousProps.isTenFootInterface then
		self.layoutValues:update(self.props.isTenFootInterface)
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
local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local AppStyle = require(StyleRoot.AppStyle)
local validateStyle = require(StyleRoot.Validator.validateStyle)

local StyleProvider = Roact.Component:extend("StyleProvider")

local validateStyleProviderProps = t.strictInterface({
	-- The current style of the app.
	style = validateStyle,
	[Roact.Children] = t.table,
})

function StyleProvider:init()
	local style = self.props.style
	self.appStyle = AppStyle.new(style)
	self._context.AppStyle = self.appStyle
end

function StyleProvider:render()
	assert(validateStyleProviderProps(self.props))
	assert(self.props.style ~= nil, "StyleProvider style should not be nil.")
	return Roact.oneChild(self.props[Roact.Children])
end

function StyleProvider:didUpdate(previousProps)
	if self.props.style ~= previousProps.style then
		self.appStyle:update(self.props.style)
	end
end

return StyleProvider
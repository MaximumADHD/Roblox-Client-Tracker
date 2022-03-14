local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local validateStyle = require(StyleRoot.Validator.validateStyle)
local StyleContext = require(StyleRoot.StyleContext)

local StyleProvider = Roact.Component:extend("StyleProvider")

StyleProvider.validateProps = t.strictInterface({
	-- The initial style of the app.
	style = validateStyle,
	[Roact.Children] = t.table,
})

function StyleProvider:init()
	-- This is typically considered an anti-pattern, but it's the simplest
	-- way to preserve the behavior that these context solutions employed
	self:setState({
		style = self.props.style,
	})
end

function StyleProvider:render()
	assert(self.props.style ~= nil, "StyleProvider style should not be nil.")
	local styleObject = {
		style = self.state.style,
		update = function(_self, newStyle)
			if self.mounted then
				self:setState({ style = newStyle })
			end
		end,
	}
	return Roact.createElement(StyleContext.Provider, {
		value = styleObject,
	}, Roact.oneChild(self.props[Roact.Children]))
end

function StyleProvider:didMount()
	self.mounted = true
end

function StyleProvider:willUnmount()
	self.mounted = false
end

return StyleProvider

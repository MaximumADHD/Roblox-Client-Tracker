local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local AppStyle = UIBloxRoot.App.Style
local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local validateStyle = require(AppStyle.Validator.validateStyle)
local StyleContext = require(StyleRoot.StyleContext)

local Packages = UIBloxRoot.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

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

	local style = Object.assign({}, {
		Settings = {
			PreferredTransparency = 1,
			ReducedMotion = false,
		},
	}, self.state.style)

	local styleObject = {
		style = style,
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

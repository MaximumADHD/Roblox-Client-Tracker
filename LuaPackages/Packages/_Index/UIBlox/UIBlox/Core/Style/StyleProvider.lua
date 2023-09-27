local Style = script.Parent
local UIBlox = Style.Parent.Parent
local AppStyle = UIBlox.App.Style
local Roact = require(UIBlox.Parent.Roact)
local t = require(UIBlox.Parent.t)
local validateStyle = require(AppStyle.Validator.validateStyle)
local StyleContext = require(Style.StyleContext)

local StyleTypes = require(AppStyle.StyleTypes)
local Themes = require(AppStyle.Themes)
local Constants = require(AppStyle.Constants)
local Gotham = require(AppStyle.Fonts.Gotham)
local Tokens = require(AppStyle.Tokens)

local getTokens = Tokens.getTokens

local Packages = UIBlox.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

type DeviceType = Constants.DeviceType
type ThemeName = Constants.ThemeName

local StyleProvider = Roact.Component:extend("StyleProvider")

StyleProvider.validateProps = t.strictInterface({
	-- The initial style of the app.
	style = t.optional(validateStyle),
	[Roact.Children] = t.table,
})

-- We can't use defaultProps here because the props are nested into one object.
-- To ensure values for each of these we need to do a join / assign in the render.
local DEFAULT_STYLE = {
	Theme = Themes.DarkTheme,
	Font = Gotham,
	Settings = {
		PreferredTransparency = 1,
		ReducedMotion = false,
	},
}

function StyleProvider:init()
	-- This is typically considered an anti-pattern, but it's the simplest
	-- way to preserve the behavior that these context solutions employed
	self:setState({
		style = self.props.style,
	})
end

function StyleProvider:render()
	local style: StyleTypes.AppStyle = Object.assign({}, DEFAULT_STYLE, self.state.style)
	if style.Tokens == nil then
		-- If tokens were not passed in, fetch them with the style object now that defaults are applied.
		style.Tokens = getTokens(
			Constants.DefaultDeviceType :: DeviceType,
			if style.Theme == Themes.LightTheme then Constants.ThemeName.Light else Constants.ThemeName.Dark
		)
	end

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

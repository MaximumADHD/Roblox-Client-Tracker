local Style = script.Parent
local UIBlox = Style.Parent.Parent
local AppStyle = UIBlox.App.Style
local Roact = require(UIBlox.Parent.Roact)
local t = require(UIBlox.Parent.t)
local validateStyle = require(AppStyle.Validator.validateStyle)
local StyleContext = require(Style.StyleContext)
local getTextSizeOffset = require(UIBlox.Utility.getTextSizeOffset)

local StyleTypes = require(AppStyle.StyleTypes)
local Themes = require(AppStyle.Themes)
local Constants = require(AppStyle.Constants)
local getFontFromName = require(AppStyle.Fonts.getFontFromName)
local Tokens = require(AppStyle.Tokens)

local getTokens = Tokens.getTokens

local Packages = UIBlox.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local GetEngineFeatureSafe = require(Packages.UIBlox.Core.Utility.GetEngineFeatureSafe)
local EngineFeaturedPreferredTextSizeExists = GetEngineFeatureSafe("EnablePreferredTextSizeSetting")

type DeviceType = Constants.DeviceType
type ThemeName = Constants.ThemeName

local StyleProvider = Roact.Component:extend("StyleProvider")

StyleProvider.validateProps = t.strictInterface({
	-- The initial style of the app.
	style = t.optional(validateStyle),
	derivedValues = t.optional(t.table),
	[Roact.Children] = t.table,
})

-- We can't use defaultProps here because the props are nested into one object.
-- To ensure values for each of these we need to do a join / assign in the render.
local DEFAULT_STYLE = {
	Theme = Themes.DarkTheme,
	Settings = {
		PreferredTransparency = 1,
		ReducedMotion = false,
		PreferredTextSize = if EngineFeaturedPreferredTextSizeExists then Enum.PreferredTextSize.Medium else nil,
		Scale = 1,
	},
}

local DEFAULT_DERIVED_VALUES = {
	textSizeOffset = 0,
}

function StyleProvider:init()
	-- This is typically considered an anti-pattern, but it's the simplest
	-- way to preserve the behavior that these context solutions employed
	self:setState({
		style = self.props.style,
		derivedValues = self.props.derivedValues,
	})
end

function StyleProvider:updateTextSizeOffset(font)
	local success, newTextSizeOffset = getTextSizeOffset(font)
	if success then
		self:setState({
			derivedValues = {
				textSizeOffset = newTextSizeOffset,
			},
		})
	end
end

function StyleProvider:didUpdate(prevProps, prevState)
	if
		prevState.style
		and prevState.style.Settings.PreferredTextSize ~= self.state.style.Settings.PreferredTextSize
	then
		self:updateTextSizeOffset(self.state.style.Font.Body.Font)
	end
end

function StyleProvider:render()
	local style: StyleTypes.AppStyle = Object.assign({}, DEFAULT_STYLE, self.state.style)
	local derivedValues = Object.assign({}, DEFAULT_DERIVED_VALUES, self.state.derivedValues)

	if style.Tokens == nil then
		-- If tokens were not passed in, fetch them with the style object now that defaults are applied.
		style.Tokens = getTokens(
			Constants.DefaultDeviceType :: DeviceType,
			if style.Theme == Themes.LightTheme then Constants.ThemeName.Light else Constants.ThemeName.Dark,
			(style.Settings :: any).Scale
		)
	end

	if style.Font == nil then
		style.Font = getFontFromName(Constants.FontName.Gotham, style.Tokens)
	end

	local styleObject = {
		style = style,
		update = function(_self, newStyle)
			if self.mounted then
				self:setState({ style = newStyle })
			end
		end,
		derivedValues = derivedValues,
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

local StyleSheetRoot = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)
local React = require(Packages.React)
local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(StyleSheetRoot.Rules.Types)
local createStyleSheetRules = require(StyleSheetRoot.createStyleSheetRules)
local getOverrideAttributes = require(StyleSheetRoot.getOverrideAttributes)
local useGeneratedRules = require(Foundation.Utility.useGeneratedRules)

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local ThemeName = require(Foundation.Enums.ThemeName)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName
type TokenOverrides = Tokens.TokenOverrides
type StyleRule = Types.StyleRule
type StyleAttribute<T> = Types.StyleAttribute<T>
type AttributesCache = createStyleSheetRules.AttributesCache

type StyleSheetProps = {
	themeName: ThemeName?,
	colorMode: ColorMode,
	device: Device,
	scale: number?,
	tags: { [string]: boolean },
	derives: { StyleSheet }?,
	setStyleSheetRef: { current: ((StyleSheet?) -> ()) | nil }?,
	tokenOverrides: TokenOverrides?,
}

local function StyleSheet(props: StyleSheetProps)
	local sheet, setSheet = React.useState(nil :: StyleSheet?)
	local attributesCache = React.useRef({} :: AttributesCache)

	React.useLayoutEffect(function()
		if props.setStyleSheetRef and props.setStyleSheetRef.current then
			props.setStyleSheetRef.current(sheet)
		end
	end, { sheet })

	local rules =
		useGeneratedRules(if Flags.FoundationThemeName then props.themeName else nil, props.colorMode, props.device)

	local overrideAttributes = React.useMemo(
		function()
			return getOverrideAttributes(
				if Flags.FoundationThemeName then props.themeName else nil,
				props.colorMode,
				props.device,
				props.tokenOverrides
			)
		end,
		{
			if Flags.FoundationThemeName then props.themeName else nil,
			props.colorMode,
			props.device,
			props.tokenOverrides,
		} :: { unknown }
	)

	local styleRules = React.useMemo(function()
		if sheet then
			return createStyleSheetRules(
				rules,
				props.tags,
				sheet :: any,
				attributesCache.current,
				props.scale,
				overrideAttributes
			)
		else
			return nil
		end
	end, { sheet, rules, props.tags, props.scale, overrideAttributes } :: { unknown })

	return React.createElement(React.Fragment, nil, {
		FoundationStyleSheet = React.createElement("StyleSheet", {
			ref = setSheet,
		}, styleRules),
		FoundationStyleLink = React.createElement("StyleLink", {
			StyleSheet = sheet,
		}),
	})
end

return React.memo(StyleSheet)

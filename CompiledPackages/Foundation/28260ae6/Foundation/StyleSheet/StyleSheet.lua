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

local Device = require(Foundation.Enums.Device)
local Theme = require(Foundation.Enums.Theme)

type Theme = Theme.Theme
type Device = Device.Device
type TokenOverrides = Tokens.TokenOverrides
type StyleRule = Types.StyleRule
type StyleAttribute<T> = Types.StyleAttribute<T>
type AttributesCache = createStyleSheetRules.AttributesCache

type StyleSheetProps = {
	theme: Theme,
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

	local rules = useGeneratedRules(props.theme, props.device)

	-- Deprecated: remove as soon as StudioPlugins using this are migrated.
	-- https://roblox.atlassian.net/browse/STUDIOPLAT-38539
	React.useLayoutEffect(function()
		if sheet and not Flags.FoundationDisableStyleProviderDerives then
			sheet:SetDerives((props.derives or {}) :: { Instance })
		end
		-- There is no removeDerives, a new call overwrites the old one.
	end, { sheet, props.derives } :: { unknown })

	local overrideAttributes = React.useMemo(function()
		return getOverrideAttributes(props.theme, props.device, props.tokenOverrides)
	end, { props.theme, props.device, props.tokenOverrides } :: { unknown })

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

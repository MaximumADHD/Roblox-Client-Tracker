local StyleSheetRoot = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Types = require(StyleSheetRoot.Rules.Types)
local createStyleSheetRules = require(StyleSheetRoot.createStyleSheetRules)
local useGeneratedRules = require(Foundation.Utility.useGeneratedRules)
local Flags = require(Foundation.Utility.Flags)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)

type Theme = Theme.Theme
type Device = Device.Device
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
}

local function StyleSheet(props: StyleSheetProps)
	local sheet, setSheet, attributesCache

	if Flags.FoundationStyleTagsStyleSheetAttributes then
		sheet, setSheet = React.useState(nil :: StyleSheet?)
		attributesCache = React.useRef({} :: AttributesCache)
	else
		sheet = React.useRef(nil :: StyleSheet?)
	end

	React.useLayoutEffect(function()
		local styleSheet: any = if Flags.FoundationStyleTagsStyleSheetAttributes then sheet else sheet.current

		if props.setStyleSheetRef and props.setStyleSheetRef.current then
			props.setStyleSheetRef.current(styleSheet)
		end
	end, if Flags.FoundationStyleTagsStyleSheetAttributes then { sheet } else nil)

	local rules = useGeneratedRules(props.theme, props.device)

	-- Deprecated: remove as soon as StudioPlugins using this are migrated.
	-- https://roblox.atlassian.net/browse/STUDIOPLAT-38539
	React.useLayoutEffect(function()
		local styleSheet: any = if Flags.FoundationStyleTagsStyleSheetAttributes then sheet else sheet.current

		if styleSheet then
			styleSheet:SetDerives((props.derives or {}) :: { Instance })
		end
		-- There is no removeDerives, a new call overwrites the old one.
	end, if Flags.FoundationStyleTagsStyleSheetAttributes then { sheet :: any, props.derives } else { props.derives })

	local styleRules = if Flags.FoundationStyleTagsStyleSheetAttributes
		then React.useMemo(function()
			if sheet then
				return createStyleSheetRules(rules, props.tags, sheet :: any, attributesCache.current, props.scale)
			else
				return nil
			end
		end, { sheet :: any, rules, props.tags, props.scale })
		else createStyleSheetRules(rules, props.tags)

	return React.createElement(React.Fragment, nil, {
		FoundationStyleSheet = React.createElement("StyleSheet", {
			ref = if Flags.FoundationStyleTagsStyleSheetAttributes then setSheet else sheet,
		}, styleRules),
		FoundationStyleLink = React.createElement("StyleLink", {
			StyleSheet = sheet,
		}),
	})
end

return React.memo(StyleSheet)

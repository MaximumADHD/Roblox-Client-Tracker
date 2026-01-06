local StyleSheetRoot = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Types = require(StyleSheetRoot.Rules.Types)
local createStyleSheetRules = require(StyleSheetRoot.createStyleSheetRules)
local useGeneratedRules = require(Foundation.Utility.useGeneratedRules)

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
		if sheet then
			sheet:SetDerives((props.derives or {}) :: { Instance })
		end
		-- There is no removeDerives, a new call overwrites the old one.
	end, { sheet, props.derives } :: { unknown })

	local styleRules = React.useMemo(function()
		if sheet then
			return createStyleSheetRules(rules, props.tags, sheet :: any, attributesCache.current, props.scale)
		else
			return nil
		end
	end, { sheet, rules, props.tags, props.scale } :: { unknown })

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

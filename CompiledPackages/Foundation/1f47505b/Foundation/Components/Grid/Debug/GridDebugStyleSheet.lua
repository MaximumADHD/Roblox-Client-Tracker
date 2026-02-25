local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local useForwardRef = require(Packages.ReactUtils).useForwardRef
local StyleRule = require(Foundation.StyleSheet.StyleRule)
local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet
local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointShortName = require(Foundation.Enums.BreakpointShortName)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)

type Breakpoint = Breakpoint.Breakpoint
type BreakpointShortName = BreakpointShortName.BreakpointShortName

export type GridDebugStyleSheetProps = {
	breakpoint: Breakpoint?,
}

local function GridDebugStyleSheet(props: GridDebugStyleSheetProps, ref: React.Ref<StyleSheet>)
	local responsive = useResponsive()
	local styleSheet = useStyleSheet()
	local sheet, setSheet = React.useState(nil :: StyleSheet?)
	local sheetRef = useForwardRef(ref, setSheet)

	local breakpointConfig = responsive.config.breakpoint
	local gridConfig = responsive.config.grid

	local maxBreakpoint: Breakpoint = breakpointConfig.order[#breakpointConfig.order]
	local breakpoint: Breakpoint = props.breakpoint :: Breakpoint or maxBreakpoint

	local rules = React.useMemo(function()
		local shortName: BreakpointShortName = breakpointConfig.shortNames[breakpoint]
		local breakpointColCount = gridConfig.columns[breakpoint]
		local children: { [string]: React.ReactNode } = {}

		for i = 0, breakpointColCount do
			local selector = if shortName then `.{shortName}-col-{i}` else `.col-{i}`
			children[`DebugColColor${i}`] = React.createElement(StyleRule, {
				Selector = selector,
				properties = {
					-- selene: allow(roblox_internal_custom_color)
					BackgroundColor3 = Color3.fromRGB(
						math.floor(255 * (i / math.max(1, breakpointColCount))),
						math.floor(255 * (1 - (i / math.max(1, breakpointColCount)))),
						math.floor(255 * ((i % 3) / 2))
					),
				},
			})
		end

		return children
	end, { breakpoint, breakpointConfig, gridConfig } :: { unknown })

	React.useLayoutEffect(function()
		if sheet then
			sheet:SetDerives({ styleSheet :: StyleSheet })
		end
	end, { sheet, styleSheet } :: { unknown })

	return React.createElement(React.Fragment, nil, {
		GridDebugStyleSheet = React.createElement("StyleSheet", {
			ref = sheetRef,
		}, rules),
		GridDebugStyleLink = React.createElement("StyleLink", {
			StyleSheet = sheet,
		}),
	})
end

return React.memo(React.forwardRef(GridDebugStyleSheet))

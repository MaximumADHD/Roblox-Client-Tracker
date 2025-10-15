local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local useStyleSheet = require(Foundation.Providers.Style.StyleSheetContext).useStyleSheet
local withDefaults = require(Foundation.Utility.withDefaults)
local getGridMetrics = require(Foundation.Utility.getGridMetrics)
local useResponsive = require(Foundation.Providers.Responsive.useResponsive)
local Breakpoint = require(Foundation.Enums.Breakpoint)
local createGridStyleRules = require(script.Parent.createGridStyleRules)

type Breakpoint = Breakpoint.Breakpoint
type GridMetrics = getGridMetrics.GridMetrics

type GridStyleSheetProps = {
	breakpoint: Breakpoint?,
	containerWidth: number,
}

local defaultProps: GridStyleSheetProps = {
	containerWidth = 0,
}

local function GridStyleSheet(gridStyleSheetProps: GridStyleSheetProps)
	local props = withDefaults(gridStyleSheetProps, defaultProps)
	local sheet = React.useRef(nil)
	local responsive = useResponsive()
	local styleSheet = useStyleSheet()
	local breakpointConfig = responsive.config.breakpoint
	local gridConfig = responsive.config.grid

	local maxBreakpoint: Breakpoint = breakpointConfig.order[#breakpointConfig.order]
	local maxColCount = gridConfig.columns[maxBreakpoint]
	local breakpoint: Breakpoint = props.breakpoint :: Breakpoint or maxBreakpoint

	local containerWidth = math.max(1, props.containerWidth)

	local gridStyleRules = React.useMemo(function()
		return createGridStyleRules(responsive.config)
	end, { responsive.config })

	local styleRules = React.useMemo(function()
		return Dash.join(gridStyleRules.baseRules, gridStyleRules.rulesByBreakpoint[breakpoint])
	end, { gridStyleRules :: unknown, breakpoint })

	React.useLayoutEffect(function()
		if sheet.current then
			local breakpointColCount = gridConfig.columns[breakpoint]

			-- NB: Column attribute values are effectively shared across all breakpoints.
			-- We only derive "active" style rules for the current breakpoint.
			-- Ideally we would be able to support all breakpoints at once in order to support gaps in
			-- breakpoint styles, however, we currently can't match a breakpoint rule for the absence of a tag (`:not()`),
			-- nor partial/regex selection (`~=col-`). It's also unclear what the fallback behavior should be for missing values.
			for i = 0, maxColCount do
				local colCount = math.min(i, breakpointColCount)
				local gridMetrics = getGridMetrics(responsive.config, breakpoint, containerWidth, colCount)
				local sizeMin = Vector2.new(gridMetrics.cellWidth, 0)
				local sizeMax = Vector2.new(gridMetrics.cellWidth, math.huge)

				-- NB: These would ideally be React bindings, but Stylesheet attributes presently don't support them
				sheet.current:SetAttribute("Col" .. i, gridMetrics.cellSize)
				sheet.current:SetAttribute("ColMin" .. i, sizeMin)
				sheet.current:SetAttribute("ColMax" .. i, sizeMax)
			end
		end
	end, { responsive.config :: unknown, containerWidth, breakpoint })

	React.useLayoutEffect(function()
		if sheet.current then
			sheet.current:SetDerives({ styleSheet })
		end
	end, { styleSheet })

	return React.createElement(React.Fragment, nil, {
		GridStyleSheet = React.createElement("StyleSheet", {
			ref = sheet,
		}, styleRules),
		GridStyleLink = React.createElement("StyleLink", {
			StyleSheet = sheet.current,
		}),
	})
end

return React.memo(GridStyleSheet)

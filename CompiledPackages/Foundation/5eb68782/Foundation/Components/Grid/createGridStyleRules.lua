local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Breakpoint = require(Foundation.Enums.Breakpoint)
local BreakpointShortName = require(Foundation.Enums.BreakpointShortName)
local React = require(Packages.React)
local ResponsiveContext = require(Foundation.Providers.Responsive.ResponsiveContext)
local StyleRule = require(Foundation.StyleSheet.StyleRule)

type ResponsiveConfig = ResponsiveContext.ResponsiveConfig
type Breakpoint = Breakpoint.Breakpoint
type BreakpointShortName = BreakpointShortName.BreakpointShortName

local function createGridStyleRule(i: number, shortName: BreakpointShortName?)
	local selector = if shortName then `.{shortName}-col-{i}` else `.col-{i}`
	return React.createElement(StyleRule, {
		Selector = `{selector} ::UISizeConstraint`,
		properties = {
			MinSize = `$ColMin{i}`,
			MaxSize = `$ColMax{i}`,
		},
	})
end

local function createGridStyleRules(responsiveConfig: ResponsiveConfig)
	local breakpointConfig = responsiveConfig.breakpoint
	local gridConfig = responsiveConfig.grid
	local maxBreakpoint = breakpointConfig.order[#breakpointConfig.order]
	local maxColCount = gridConfig.columns[maxBreakpoint :: Breakpoint]
	local rulesByBreakpoint = {}

	local baseRules = {}
	for i = 0, maxColCount do
		baseRules[`Col{i}`] = createGridStyleRule(i)

		if i == 0 then
			baseRules[`ColVisible0`] = React.createElement(StyleRule, {
				Selector = `.col-0`,
				properties = {
					Visible = false,
				},
			})
		end
	end

	-- Create rules for each breakpoint
	for _, breakpoint: Breakpoint in breakpointConfig.order do
		local shortName: BreakpointShortName = breakpointConfig.shortNames[breakpoint]
		local breakpointColCount = gridConfig.columns[breakpoint]
		local rules = {}

		-- Create rules for each column count (including bare col-{i} for the first iteration)
		for i = 0, breakpointColCount do
			rules[`{breakpoint}Col{i}`] = createGridStyleRule(i, shortName)

			if i == 0 then
				rules[`{breakpoint}ColVisible0`] = React.createElement(StyleRule, {
					Selector = `.{shortName}-col-0`,
					properties = {
						Visible = false,
					},
				})
			end
		end

		rulesByBreakpoint[breakpoint] = rules
	end

	return {
		baseRules = baseRules,
		rulesByBreakpoint = rulesByBreakpoint,
	}
end

return createGridStyleRules

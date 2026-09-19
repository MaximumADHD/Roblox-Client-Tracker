--!strict
local Framework = script:FindFirstAncestor("UI").Parent

local Dash = require(Framework.Parent.Dash)

local FFlagDevFrameworkHighlighterHooks = require(Framework.SharedFlags.getFFlagDevFrameworkHighlighterHooks)()

local hooks = {
	TooltipSettings = require(script.useTooltip.TooltipSettings),
	useMenu = require(script.useMenu),
	useTooltip = require(script.useTooltip),
	useWidgets = require(script.useWidgets),
	useDialog = require(script.useDialog),
	useDialogDetailsAction = require(script.useDialogDetailsAction),
	useDialogWidget = require(script.useDialogWidget),
}

if FFlagDevFrameworkHighlighterHooks then
	hooks = Dash.join(hooks, {
		useStudioThemeColorsForHighlighter = require(Framework.Util.Highlighter.useStudioThemeColors),
	})
end

return hooks

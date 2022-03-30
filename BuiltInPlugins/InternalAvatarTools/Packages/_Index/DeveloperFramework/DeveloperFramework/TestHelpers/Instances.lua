local FFlagPivotEditorFixTests = game:GetFastFlag("PivotEditorFixTests")

local strict = require(script.Parent.Parent.Util.strict)

return strict({
	MockAnalyticsService = require(script.MockAnalyticsService),
	MockMouse = require(script.MockMouse),
	MockPlugin = require(script.MockPlugin),
	MockPluginToolbar = require(script.MockPluginToolbar),
	MockPluginToolbarButton = require(script.MockPluginToolbarButton),
	MockSelectionService = require(script.MockSelectionService),
	MockToastNotificationService = if FFlagPivotEditorFixTests then require(script.MockToastNotificationService) else nil,
})

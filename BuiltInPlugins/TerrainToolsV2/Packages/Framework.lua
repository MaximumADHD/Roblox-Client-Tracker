local strict = require(script.Util.strict)

return strict({
	ContextServices = require(script.ContextServices),
	Dash = game:GetFastFlag("EnableRoactInspector") and require(script.packages.Dash) or nil,
	DeveloperTools = game:GetFastFlag("EnableRoactInspector") and require(script.packages.DeveloperTools) or nil,
	ErrorReporter = require(script.ErrorReporter),
	Examples = require(script.Examples),
	Http = require(script.Http),
	Resources = require(script.Resources),
	RobloxAPI = require(script.RobloxAPI),
	StudioUI = require(script.StudioUI),
	Style = require(script.Style),
	TestHelpers = require(script.TestHelpers),
	UI = require(script.UI),
	Util = require(script.Util),
	UIData = require(script.UI.UIFolderData),
})
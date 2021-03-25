local strict = require(script.Util.strict)

return strict({
	ContextServices = require(script.ContextServices),
	Dash = require(script.packages.Dash),
	DeveloperTools = require(script.packages.DeveloperTools),
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
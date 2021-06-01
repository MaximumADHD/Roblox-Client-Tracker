local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local WarningAlertView = require(SocialLibraries.Components.AlertViews.WarningAlertView)

return Roact.createElement(WarningAlertView, {
	titleText = "Failed!",
	bodyText = "Process failed!",
	cancelText = "Nevermind",
	confirmText = "Do it",
	failedText = "Okay",

	displayFailed = true,

	confirmAction = function(props)

	end,
})

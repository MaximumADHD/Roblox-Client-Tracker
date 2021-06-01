local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local WarningAlertView = require(SocialLibraries.Components.AlertViews.WarningAlertView)

return Roact.createElement(WarningAlertView, {
	titleText = "Warning",
	bodyText = "This action you're about to do has permanent consequences, continue?",
	cancelText = "Nevermind",
	confirmText = "Do it",
	failedText = "Okay",

	confirmAction = function(props)

	end,
})

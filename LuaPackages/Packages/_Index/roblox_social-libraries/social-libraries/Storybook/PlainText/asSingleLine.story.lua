local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local PlainText = require(SocialLibraries.Components.PlainText)

return Roact.createElement(PlainText, {
	text = "Hello world",
	maxWidth = 150,
	innerPadding = 10,
})

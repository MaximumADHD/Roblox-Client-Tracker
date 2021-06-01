local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local PlainText = require(SocialLibraries.Components.PlainText)

return Roact.createElement(PlainText, {
	text = "좋은, 아침 早上好, 좋은, 아침 早上好",
	maxWidth = 150,
	innerPadding = 10,
})

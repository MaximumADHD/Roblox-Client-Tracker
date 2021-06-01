local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local ChatBubbleContainer = require(SocialLibraries.Components.ChatBubbleContainer)

return Roact.createElement(ChatBubbleContainer, {
	padding = 10,
	isIncoming = true,
	hasTail = true,
  }, {
	  element1 = Roact.createElement("TextLabel", {
		Text = "Hello",
		BackgroundColor3 = Color3.fromRGB(255, 204, 229),
		Size = UDim2.new(0, 50, 0, 30),
	  }),
  })

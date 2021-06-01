local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local ChatBubbleContainer = require(SocialLibraries.Components.ChatBubbleContainer)

return Roact.createElement(ChatBubbleContainer, {
	padding = 12,
  }, {
	  element1 = Roact.createElement("TextLabel", {
		Text = "50x50",
		BackgroundColor3 = Color3.fromRGB(255, 204, 229),
		Size = UDim2.new(0, 50, 0, 50),
	  }),
	  element2 = Roact.createElement("TextLabel", {
		Text = "100x100",
		BackgroundColor3 = Color3.fromRGB(255, 204, 229),
		Size = UDim2.new(0, 100, 0, 100),
	  }),
	  element3 = Roact.createElement("TextLabel", {
		Text = "200x200",
		BackgroundColor3 = Color3.fromRGB(255, 204, 229),
		Size = UDim2.new(0, 200, 0, 200),
	  }),
  })

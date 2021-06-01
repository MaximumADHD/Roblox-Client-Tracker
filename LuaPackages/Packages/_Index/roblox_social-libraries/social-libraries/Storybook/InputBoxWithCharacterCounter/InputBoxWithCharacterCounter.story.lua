local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local InputBoxWithCharacterCounter = require(SocialLibraries.Components.InputBoxWithCharacterCounter)

return Roact.createElement("Frame", {
	BackgroundTransparency = 0,
	BackgroundColor3 = Color3.fromRGB(242, 242, 242),
	Size = UDim2.new(0, 512, 0, 64),
}, {
	Roact.createElement(InputBoxWithCharacterCounter, {
		initialInputText = "My character counter",
	})
})

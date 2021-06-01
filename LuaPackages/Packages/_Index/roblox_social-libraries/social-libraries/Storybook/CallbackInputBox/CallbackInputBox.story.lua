local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local CallbackInputBox = require(SocialLibraries.Components.CallbackInputBox)

return Roact.createElement("Frame", {
	BackgroundTransparency = 0,
	Size = UDim2.new(0, 512, 0, 48),
}, {
	Roact.createElement(CallbackInputBox, {
		placeholderText = "Test placeholder text",
		clearIcon = "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png",

		clearButtonDisabled = nil,
		Size = UDim2.new(0, 512, 0, 48),
	})
})

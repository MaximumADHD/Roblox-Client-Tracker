local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local CallbackInputBoxWithIcon = require(SocialLibraries.Components.CallbackInputBoxWithIcon)

return Roact.createElement("Frame", {
	BackgroundTransparency = 0,
	Size = UDim2.new(0, 512, 0, 48),
}, {
	Roact.createElement(CallbackInputBoxWithIcon, {
		placeholderText = "Test placeholder text",
		clearIcon = "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png",
		iconImage = "rbxassetid://2610133241",
		clearButtonDisabled = nil,
		Size = UDim2.new(0, 512, 0, 48),
	})
})

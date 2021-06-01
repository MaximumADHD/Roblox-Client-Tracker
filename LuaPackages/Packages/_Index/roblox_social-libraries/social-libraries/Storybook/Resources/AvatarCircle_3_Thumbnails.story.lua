local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local AvatarCircle = require(SocialLibraries.Components.AvatarCircle)

return Roact.createElement("Frame", {
	BackgroundTransparency = 1,
	Size = UDim2.new(0, 64, 0, 64),
}, {
	Roact.createElement(AvatarCircle, {
		thumbnails = {
			"rbxassetid://2610133241",
			"rbxassetid://2610133241",
			"rbxassetid://2610133241",
		},
	})
})

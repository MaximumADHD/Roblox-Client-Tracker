local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)

local ProfileQRCodeEntryPoint = require(ProfileQRCode).ProfileQRCodeEntryPoint

return {
	controls = nil,
	stories = {
		ProfileQRCodeEntryPoint = function(storyProps)
			return React.createElement(ProfileQRCodeEntryPoint, storyProps)
		end,
	},
}

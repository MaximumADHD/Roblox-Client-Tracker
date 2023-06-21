local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local Constants = require(script.Parent.Parent.Unibar.Constants)

local ICON_SIZE = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE)

local RBXAssetProto = "rbxasset://"

function CommonIcon(icon)
	if typeof(icon) == "string" then
		if icon:sub(1, #RBXAssetProto) ~= RBXAssetProto then
			icon = Images[icon]
		end
	end

	return React.createElement(ImageSetLabel, {
		BackgroundTransparency = 1,
		Image = icon,
		Size = ICON_SIZE,
		ImageColor3 = Color3.new(1, 1, 1),
	})
end

return CommonIcon

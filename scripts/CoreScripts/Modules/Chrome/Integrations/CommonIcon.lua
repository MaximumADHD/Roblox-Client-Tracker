local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local Constants = require(script.Parent.Parent.Unibar.Constants)
local ChromeUtils = require(script.Parent.Parent.Service.ChromeUtils)

local useMappedSignal = require(script.Parent.Parent.Hooks.useMappedSignal)

local ICON_SIZE = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE)

local RBXAssetProto = "rbxasset://"

export type IconData = string | { [string]: any }

function CommonIcon(icon: IconData, iconOn: IconData?, activeSignalValue: ChromeUtils.MappedSignal<boolean>?)
	local active = activeSignalValue and useMappedSignal(activeSignalValue) or false

	if active and iconOn then
		icon = iconOn
	end

	if typeof(icon) == "string" then
		if icon:sub(1, #RBXAssetProto) ~= RBXAssetProto then
			icon = Images[icon]
		end
	end

	local style = useStyle()

	return React.createElement(ImageSetLabel, {
		BackgroundTransparency = 1,
		Image = icon,
		Size = ICON_SIZE,
		ImageColor3 = style.Theme.IconEmphasis.Color,
		ImageTransparency = style.Theme.IconEmphasis.Transparency,
	})
end

return CommonIcon

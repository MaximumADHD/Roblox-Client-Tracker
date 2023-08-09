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

function CommonIconComponent(props)
	local active = props.activeSignalValue and useMappedSignal(props.activeSignalValue) or false
	local icon = props.icon

	if active and props.iconOn then
		icon = props.iconOn
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

function CommonIcon(icon: IconData, iconOn: IconData?, activeSignalValue: ChromeUtils.MappedSignal<boolean>?)
	return React.createElement(CommonIconComponent, {
		icon = icon,
		iconOn = iconOn,
		activeSignalValue = activeSignalValue,
	} :: any)
end

return CommonIcon

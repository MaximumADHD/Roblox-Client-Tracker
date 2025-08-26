local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local SubMenuContext = require(Chrome.ChromeShared.Unibar.SubMenuContext)

local GetFFlagAnimateSubMenu = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAnimateSubMenu

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider

local useMappedSignal = require(Chrome.ChromeShared.Hooks.useMappedSignal)
local UnibarStyle = require(Chrome.ChromeShared.Unibar.UnibarStyle)

local RBXAssetProto = "rbxasset://"

export type IconData = string | { [string]: any }

function CommonIconComponent(props)
	local unibarStyle
	local iconSize
	if FFlagTokenizeUnibarConstantsWithStyleProvider then
		unibarStyle = UnibarStyle.use()
		iconSize = unibarStyle.ICON_SIZE
	else
		iconSize = Constants.ICON_SIZE
	end
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
	local submenuTransition = React.useContext(SubMenuContext)

	return React.createElement(ImageSetLabel, {
		BackgroundTransparency = 1,
		Image = icon,
		Size = UDim2.new(0, iconSize, 0, iconSize),
		ImageColor3 = style.Theme.IconEmphasis.Color,
		ImageTransparency = if GetFFlagAnimateSubMenu() and submenuTransition
			then submenuTransition:map(function(v)
				return style.Theme.IconEmphasis.Transparency + (1 - style.Theme.IconEmphasis.Transparency) * (1 - v)
			end)
			else style.Theme.IconEmphasis.Transparency,
	})
end

function CommonIcon(icon: IconData, iconOn: IconData?, activeSignalValue: ChromeUtils.MappedSignal<boolean>?)
	return React.createElement(
		CommonIconComponent,
		{
			icon = icon,
			iconOn = iconOn,
			activeSignalValue = activeSignalValue,
		} :: any
	)
end

return CommonIcon

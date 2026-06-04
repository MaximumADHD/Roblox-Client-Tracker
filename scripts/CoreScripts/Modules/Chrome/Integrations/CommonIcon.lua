local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)

local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local Images = UIBlox.App.ImageSet.Images
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local SubMenuContext = require(Chrome.ChromeShared.Unibar.SubMenuContext)
local IconVariant = Foundation.Enums.IconVariant
local IconSize = Foundation.Enums.IconSize
local IconName = Foundation.Enums.IconName

local ChromeSharedFlags = require(Chrome.ChromeShared.Flags)
local FFlagTokenizeUnibarConstantsWithStyleProvider = ChromeSharedFlags.FFlagTokenizeUnibarConstantsWithStyleProvider
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local useMappedSignal = ChromePackage.Hooks.useMappedSignal
local UnibarStyle = ChromePackage.UnibarStyle

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagAddIGMToSideSheet = SharedFlags.FFlagAddIGMToSideSheet

local RBXAssetProto = "rbxasset://"

local function isFoundationIconName(icon: any): boolean
	return IconName[icon] ~= nil
end

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

	local style = useStyle()
	local submenuTransition = React.useContext(SubMenuContext)
	local color = style.Theme.IconEmphasis.Color
	local transparency = style.Theme.IconEmphasis.Transparency

	if FFlagAddIGMToSideSheet and isFoundationIconName(props.icon) then
		local iconStyle = if submenuTransition
			then submenuTransition:map(function(v)
				return {
					Color3 = color,
					Transparency = transparency + (1 - transparency) * (1 - v),
				}
			end)
			else {
				Color3 = color,
				Transparency = transparency,
			}

		return React.createElement(Foundation.Icon, {
			name = IconName[props.icon],
			size = IconSize.Large,
			style = iconStyle,
			variant = if active then IconVariant.Filled else IconVariant.Regular,
		})
	end

	if typeof(icon) == "string" then
		if icon:sub(1, #RBXAssetProto) ~= RBXAssetProto then
			icon = Images[icon]
		end
	end

	return React.createElement(ImageSetLabel, {
		BackgroundTransparency = 1,
		Image = icon,
		Size = UDim2.new(0, iconSize, 0, iconSize),
		ImageColor3 = color,
		ImageTransparency = if submenuTransition
			then submenuTransition:map(function(v)
				return transparency + (1 - transparency) * (1 - v)
			end)
			else transparency,
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

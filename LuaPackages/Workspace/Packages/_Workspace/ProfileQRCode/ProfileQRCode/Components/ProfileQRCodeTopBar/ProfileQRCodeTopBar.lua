local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local HeaderBar = UIBlox.App.Bar.HeaderBar
local RoactUtils = require(Packages.RoactUtils)
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local useLocalization = RoactUtils.Hooks.useLocalization
local getFFlagProfileQRCodeEnable3DAvatarExperiment =
	require(ProfileQRCode.Flags.getFFlagProfileQRCodeEnable3DAvatarExperiment)

local NAV_BAR_SIZE = 56

export type Props = {
	layoutOrder: number,
	onClose: () -> (),
	isProfile3DAvatarEnabled: boolean?,
}

local ProfileQRCodeTopBar = function(props: Props)
	local localized = useLocalization({
		title = TextKeys.Title,
	})

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, NAV_BAR_SIZE),
		LayoutOrder = props.layoutOrder,
		ZIndex = 2,
	}, {
		headerBar = React.createElement(HeaderBar, {
			isSecondary = true,
			title = localized.title,
			backgroundTransparency = 1,
			barHeight = NAV_BAR_SIZE,
			renderLeft = if getFFlagProfileQRCodeEnable3DAvatarExperiment()
					and props.isProfile3DAvatarEnabled
				then HeaderBar.renderLeft.backButton(props.onClose)
				else function(_)
					return React.createElement(IconButton, {
						size = UDim2.fromOffset(0, 0),
						iconSize = IconSize.Medium,
						icon = Images["icons/navigation/close"],
						onActivated = props.onClose,
					})
				end,
		}),
	})
end

return ProfileQRCodeTopBar

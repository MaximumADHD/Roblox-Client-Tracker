local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local HeaderBar = UIBlox.App.Bar.HeaderBar
local RoactUtils = require(Packages.RoactUtils)
local TextKeys = require(ProfileQRCode.Common.TextKeys)
local useLocalization = RoactUtils.Hooks.useLocalization

local NAV_BAR_SIZE = 56

export type Props = {
	layoutOrder: number,
	onClose: () -> (),
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
			renderLeft = HeaderBar.renderLeft.backButton(props.onClose),
		}),
	})
end

return ProfileQRCodeTopBar

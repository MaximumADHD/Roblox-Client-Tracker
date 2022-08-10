local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local IconButton = UIBlox.App.Button.IconButton

local ShareInviteLinkButton = Roact.PureComponent:extend("ShareInviteLinkButton")

ShareInviteLinkButton.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number),
	onActivated = t.optional(t.callback),
	isDisabled = t.optional(t.boolean),
})

function ShareInviteLinkButton:render()
	return Roact.createElement(IconButton, {
		layoutOrder = self.props.layoutOrder,
		size = UDim2.fromOffset(0, 0),
		iconSize = IconSize.Medium,
		icon = Images["icons/actions/share"],
		onActivated = self.props.onActivated,
		isDisabled = self.props.isDisabled
	})
end

return ShareInviteLinkButton

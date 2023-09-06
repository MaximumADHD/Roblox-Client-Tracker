local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetButton = UIBlox.Core.ImageSet.Button

local PermissionButton = Roact.PureComponent:extend("PermissionButton")

local BUTTON_SIZE = 32

PermissionButton.validateProps = t.strictInterface({
	callback = t.callback,
	image = t.table,
	LayoutOrder = t.number,
	useNewMenuTheme = t.boolean,
	imageLabelProps = t.optional(t.table),
})

function PermissionButton:render()
	return Roact.createElement("ImageButton", {
		LayoutOrder = self.props.LayoutOrder,
		Image = if self.props.useNewMenuTheme then "rbxasset://textures/ui/TopBar/iconBase.png" else "rbxasset://textures/ui/dialog_white.png",
		ImageTransparency = if self.props.useNewMenuTheme then 0 else 0.85,
		BackgroundTransparency = 1,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(10, 10, 10, 10),
		Size = UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),
	}, {
		ImageLabel = Roact.createElement(ImageSetButton, {
			LayoutOrder = 2,
			Image = self.props.image,
			BackgroundTransparency = 1,
			Size = self.props.imageLabelProps and self.props.imageLabelProps.Size or UDim2.new(0, BUTTON_SIZE, 0, BUTTON_SIZE),
			Position = self.props.imageLabelProps and self.props.imageLabelProps.Position,
			[Roact.Event.Activated] = self.props.callback,
		})
	})
end

return PermissionButton
--[[
	Indicator bubble that accepts an icon and an onActivated function.

	This is shown when a user's device has given Roblox camera or microphone permissions.
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local Colors = UIBlox.App.Style.Colors

local DISABLED_BACKGROUND_COLOR = Colors.Ash
local DISABLED_ICON_COLOR = Colors.Flint
local DISABLED_ICON_TRANSPARENCY = 0.5
local BACKGROUND_COLOR = Colors.Graphite
local ICON_COLOR = Colors.White
local ICON_TRANSPARENCY = 0

local ControlBubble = Roact.PureComponent:extend("ControlBubble")

ControlBubble.validateProps = t.strictInterface({
	LayoutOrder = t.optional(t.number),
	icon = t.any,
	onActivated = t.callback,
	enabled = t.boolean,
	isImageSet = t.boolean,
})

function ControlBubble:render()
	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = UDim2.new(0, 44, 1, 0),
		LayoutOrder = self.props.LayoutOrder,
		Transparency = 1,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
		Contents = Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 0,
			BackgroundColor3 = if self.props.enabled then BACKGROUND_COLOR else DISABLED_BACKGROUND_COLOR,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			Icon = Roact.createElement(ImageSetButton, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				-- Icons from image set are a different size.
				Size = not self.props.isImageSet and UDim2.fromOffset(14, 18) or UDim2.fromOffset(28, 28),
				BackgroundTransparency = 1,
				ImageTransparency = if self.props.enabled then ICON_TRANSPARENCY else DISABLED_ICON_TRANSPARENCY,
				ImageColor3 = if self.props.enabled then ICON_COLOR else DISABLED_ICON_COLOR,
				BorderSizePixel = 0,
				Image = self.props.icon,
				[Roact.Event.Activated] = self.props.onActivated,
			})
		})
	})
end

return ControlBubble
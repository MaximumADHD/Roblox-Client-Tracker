--[[
	This is a temporary icon button until the entire side nav is replaced by uiBlox System Bar
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local ImageSetButton = UIBlox.Core.ImageSet.Button
local Images = UIBlox.App.ImageSet.Images

local HOME_ICON = Images['icons/menu/home_off']

local HomeButton = Roact.PureComponent:extend("HomeButton")

HomeButton.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	onActivated = t.callback,
})

function HomeButton:render()
	return Roact.createElement("Frame", {
		AnchorPoint = self.props.anchorPoint,
		BackgroundTransparency = 1,
		Position = self.props.position,
		Size = UDim2.fromOffset(64, 64),
		LayoutOrder = self.props.layoutOrder,
	}, {
		HomeButton = Roact.createElement(ImageSetButton, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = HOME_ICON,
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.fromOffset(32, 32),
			[Roact.Event.Activated] = self.props.onActivated,
		})
	})
end

return HomeButton
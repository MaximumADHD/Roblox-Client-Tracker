local Carousel = script.Parent
local Container = Carousel.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Style.withStyle)

local Core = UIBlox.Core
local IconSize = require(App.Constant.IconSize)
local Interactable = require(Core.Control.Interactable)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)

local ScrollButton = Roact.PureComponent:extend("ScrollButton")

ScrollButton.validateProps = t.strictInterface({
	-- The icon of the button
	icon = t.table,

	-- Callback action
	callback = t.callback,
})

function ScrollButton:render()
	return withStyle(function(style)
		return Roact.createElement(Interactable, {
			AutoButtonColor = false,
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			[Roact.Event.Activated] = self.props.callback,
			--Note State change is not being used right now.
			onStateChanged = function()end,
		}, {
			Icon = Roact.createElement(ImageSetComponent.Label, {
				Size = UDim2.fromOffset(IconSize.Regular, IconSize.Regular),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = self.props.icon,
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
			}),
		})

	end)
end

return ScrollButton
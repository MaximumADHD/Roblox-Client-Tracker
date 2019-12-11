local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local ImageSetButton = UIBlox.Core.ImageSet.Button

local MoreButton = Roact.PureComponent:extend("MoreButton")

MoreButton.validateProps = t.strictInterface({
	onActivated = t.callback,
	LayoutOrder = t.integer,
})

function MoreButton:render()
	return withStyle(function(style)
		return Roact.createElement(ImageSetButton, {
			Size = UDim2.new(0, 36, 0, 36),
			BackgroundTransparency = 1,
			Image = Assets.Images.MoreActions,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			LayoutOrder = self.props.LayoutOrder,

			[Roact.Event.Activated] = self.props.onActivated
		})
	end)
end

return MoreButton
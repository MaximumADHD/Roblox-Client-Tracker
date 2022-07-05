local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle

local Spacer = Roact.PureComponent:extend("Spacer")
local DEFAULT_HEIGHT = 4

function Spacer:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			BackgroundColor3 = style.Theme.BackgroundContrast.Color,
			Size = UDim2.new(1, 0, 0, DEFAULT_HEIGHT),
			LayoutOrder = self.props.layoutOrder or 0,
			AnchorPoint = self.props.anchorPoint,
			Position = self.props.position,
			BorderSizePixel = 0,
		})
	end)
end

return Spacer

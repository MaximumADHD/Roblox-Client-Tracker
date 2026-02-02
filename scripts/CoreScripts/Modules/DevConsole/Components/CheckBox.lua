local CorePackages = game:GetService("CorePackages")

local Constants = require(script.Parent.Parent.Constants)
local Roact = require(CorePackages.Packages.Roact)

local Checkbox = Roact.Component:extend("Checkbox")

function Checkbox:render()
	local size = self.props.Size
	local position = self.props.Position or UDim2.new(0, 0, 0, 0)
	local layoutOrder = self.props.LayoutOrder or 0

	local name = self.props.Name

	local selectedColor = self.props.SelectedColor or Constants.Color.SelectedBlue
	local unselectedColor = self.props.UnselectedColor or Constants.Color.UnselectedGray
	local onSelectedStateChanged = self.props.OnSelectedStateChanged

	local image = ""
	local borderSize = 1
	local backgroundColor = unselectedColor

	if self.props.IsSelected then
		image = Constants.Image.Check
		borderSize = 0
		backgroundColor = selectedColor
	end

	return Roact.createElement("ImageButton", {
		Size = size,
		Position = position,
		Image = image,
		BackgroundColor3 = backgroundColor,
		BackgroundTransparency = 0,
		BorderColor3 = Constants.Color.Text,
		BorderSizePixel = borderSize,
		LayoutOrder = layoutOrder,

		[Roact.Event.Activated] = function(rbx)
			if onSelectedStateChanged then
				onSelectedStateChanged(name, not self.props.IsSelected)
			end
		end,
	})
end

return Checkbox

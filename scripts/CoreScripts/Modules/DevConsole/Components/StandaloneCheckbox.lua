local CorePackages = game:GetService("CorePackages")

local Constants = require(script.Parent.Parent.Constants)
local Roact = require(CorePackages.Packages.Roact)

local StandaloneCheckbox = Roact.Component:extend("StandaloneCheckbox")

function StandaloneCheckbox:init()
	self:setState({
		IsSelected = self.props.IsSelected or false,
	})
end

function StandaloneCheckbox:render()
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

	if self.state.IsSelected then
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
			self:setState(function(state)
				local newSelectedState = not state.IsSelected

				if onSelectedStateChanged then
					onSelectedStateChanged(name, newSelectedState)
				end

				return {
					IsSelected = newSelectedState,
				}
			end)
		end,
	})
end

return StandaloneCheckbox

local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local DropDownButton = Roact.PureComponent:extend("DropDownButton")

function DropDownButton:render()
	return WithLayoutValues(function(layoutValues)
		local layoutOrder = self.props.layoutOrder
		local onActivated = self.props.onActivated
		local text = self.props.text

		return Roact.createElement("TextButton", {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, layoutValues.DropDownButtonSizeY),
			BackgroundTransparency = layoutValues.BackgroundTransparency,
			BackgroundColor3 = layoutValues.BackgroundColor,
			AutoButtonColor = true,
			BorderSizePixel = 0,

			Text = text,
			TextSize = layoutValues.PlayerNameTextSize,
			TextColor3 = layoutValues.TextColor,
			TextStrokeTransparency = layoutValues.TextStrokeTransparency,
			TextStrokeColor3 = layoutValues.TextStrokeColor,
			Font = layoutValues.PlayerEntryFont,

			[Roact.Event.Activated] = onActivated,
		})
	end)
end

return DropDownButton
local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local Checkbox = require(script.Parent.Checkbox)
local NumRowsLine = Roact.PureComponent:extend("NumRowsLine")

function NumRowsLine:render()
	local function isEnabled()
		return self.props.NumRows > 0 and self.props.Checked
	end

	return Theming.withTheme(function(theme)
		local children = {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 5),
			}),

			Label = Roact.createElement("TextLabel", {
				TextXAlignment = "Left",
				TextYAlignment = "Center",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(0, 100, 0, 20),
				Text = self.props.PreText..tostring(self.props.NumRows).." rows",
				TextColor3 = isEnabled() and self.props.EnabledColor or self.props.DisabledColor,
			}),
		}

		if self.props.NumRows > 0 then
			children.Checkbox = Roact.createElement(Checkbox, {
				LayoutOrder = 2,
				Checked = self.props.Checked,
				OnClicked = self.props.OnClicked,
			})
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 20),
			LayoutOrder = self.props.LayoutOrder,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, children)
	end)
end

return NumRowsLine

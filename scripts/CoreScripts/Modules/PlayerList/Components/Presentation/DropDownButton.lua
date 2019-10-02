local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local DropDownButton = Roact.PureComponent:extend("DropDownButton")

DropDownButton.validateProps = t.strictInterface({
	text = t.string,
	layoutOrder = t.integer,
	onActivated = t.callback,
})

function DropDownButton:init()
	self.state = {
		isHovered = false
	}
end

function DropDownButton:render()
	return WithLayoutValues(function(layoutValues)
		local layoutOrder = self.props.layoutOrder
		local onActivated = self.props.onActivated
		local text = self.props.text

		local backgroundStyle = layoutValues.BackgroundStyle.Default
		if self.state.isHovered and layoutValues.BackgroundStyle.Hovered then
			backgroundStyle = layoutValues.BackgroundStyle.Hovered
		end

		return Roact.createElement("TextButton", {
			LayoutOrder = layoutOrder,
			Size = UDim2.new(1, 0, 0, layoutValues.DropDownButtonSizeY),
			BackgroundTransparency = backgroundStyle.Transparency,
			BackgroundColor3 = backgroundStyle.Color,
			AutoButtonColor = false,
			BorderSizePixel = 0,

			Text = text,
			TextSize = layoutValues.PlayerNameTextSize,
			TextColor3 = layoutValues.TextStyle.Default.Color,
			TextStrokeTransparency = layoutValues.TextStyle.Default.StrokeTransparency,
			TextStrokeColor3 = layoutValues.TextStyle.Default.StrokeColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = layoutValues.PlayerEntryFont,

			[Roact.Event.Activated] = onActivated,

			[Roact.Event.MouseEnter] = function()
				self:setState({
					isHovered = true,
				})
			end,

			[Roact.Event.MouseLeave] = function()
				self:setState({
					isHovered = false,
				})
			end,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, layoutValues.DropDownTextPadding),
			}),
		})
	end)
end

return DropDownButton
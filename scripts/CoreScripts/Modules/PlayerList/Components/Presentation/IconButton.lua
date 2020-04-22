local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local IconButton = Roact.PureComponent:extend("IconButton")

IconButton.validateProps = t.strictInterface({
	size = t.UDim2,
	position = t.UDim2,
	backgroundColor = t.Color3,
	icon = t.union(t.string, t.table),
	showBackground = t.boolean,
	onActivated = t.optional(t.callback),
})

function IconButton:init()
	self.state = {
		isHovered = false,
		isPressed = false,
	}
end

function IconButton:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local overlayStyle = {
				Transparency = 1,
				Color = Color3.new(1, 1, 1),
			}
			if self.props.onActivated then
				if self.state.isPressed then
					overlayStyle = style.Theme.BackgroundOnPress
				elseif self.state.isHovered then
					overlayStyle = style.Theme.BackgroundOnHover
				end
			end

			return Roact.createElement("TextButton", {
				Text = "",
				BorderSizePixel = 0,
				BackgroundTransparency = self.props.showBackground and layoutValues.IconButtonBackgroundTransparency or 1,
				BackgroundColor3 = self.props.backgroundColor,
				Position = self.props.position,
				Size = self.props.size,


				[Roact.Event.Activated] = self.props.onActivated,

				[Roact.Event.MouseButton1Down] = function()
					self:setState({
						isPressed = true,
					})
				end,
				[Roact.Event.MouseButton1Up] = function()
					self:setState({
						isPressed = false,
					})
				end,

				[Roact.Event.MouseEnter] = function()
					self:setState({
						isHovered = true,
					})
				end,

				[Roact.Event.MouseLeave] = function()
					self:setState({
						isHovered = false,
						isPressed = false,
					})
				end,
			}, {
				HoverBackground = Roact.createElement("Frame", {
					ZIndex = 1,
					Size = UDim2.new(1, 0, 1, 0),

					BackgroundTransparency = overlayStyle.Transparency,
					BackgroundColor3 = overlayStyle.Color,
					BorderSizePixel = 0,
				}),

				ImageButton = Roact.createElement(ImageSetLabel, {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, layoutValues.DropDownIconSize , 0, layoutValues.DropDownIconSize),
					Image = self.props.icon,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					ZIndex = 2,
				}),
			})
		end)
	end)
end

return IconButton
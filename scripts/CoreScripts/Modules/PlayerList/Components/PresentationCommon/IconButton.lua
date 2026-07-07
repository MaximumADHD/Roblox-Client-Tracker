--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local IconSize = Foundation.Enums.IconSize

local withFoundationOrUIBloxStyle = require(CorePackages.Workspace.Packages.CoreGuiCommon).withFoundationOrUIBloxStyle

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

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
		return withFoundationOrUIBloxStyle(function(tokens)
			return {
				Theme = {
					BackgroundOnHover = {
						Color = tokens.Color.State.Hover.Color3,
						Transparency = tokens.Color.State.Hover.Transparency,
					},
					BackgroundOnPress = {
						Color = tokens.Color.State.Press.Color3,
						Transparency = tokens.Color.State.Press.Transparency,
					},
					IconEmphasis = {
						Color = tokens.Color.Content.Emphasis.Color3,
						Transparency = tokens.Color.Content.Emphasis.Transparency,
					},
				},
			}
		end, function(style)
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

			local iconElement
			if FFlagCoreUiMigrateUIBloxToFoundation then
				local iconProp = self.props.icon
				if typeof(iconProp) == "string" then
					iconElement = Roact.createElement("Frame", {
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, layoutValues.DropDownIconSize, 0, layoutValues.DropDownIconSize),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						ZIndex = 2,
					}, {
						Icon = Roact.createElement(Foundation.Icon, {
							name = iconProp,
							size = IconSize.Medium,
							style = {
								Color3 = style.Theme.IconEmphasis.Color,
								Transparency = style.Theme.IconEmphasis.Transparency,
							},
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
						}),
					})
				else
					iconElement = Roact.createElement(Foundation.Image, {
						Image = iconProp.Image,
						imageRect = { offset = iconProp.ImageRectOffset, size = iconProp.ImageRectSize },
						Size = UDim2.new(0, layoutValues.DropDownIconSize, 0, layoutValues.DropDownIconSize),
						imageStyle = {
							Color3 = style.Theme.IconEmphasis.Color,
							Transparency = style.Theme.IconEmphasis.Transparency,
						},
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						BackgroundTransparency = 1,
						ZIndex = 2,
					})
				end
			else
				iconElement = Roact.createElement(ImageSetLabel, {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, layoutValues.DropDownIconSize, 0, layoutValues.DropDownIconSize),
					Image = self.props.icon,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					ZIndex = 2,
				})
			end

			return Roact.createElement("TextButton", {
				Text = "",
				BorderSizePixel = 0,
				BackgroundTransparency = self.props.showBackground and layoutValues.IconButtonBackgroundTransparency
					or 1,
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

				ImageButton = iconElement,
			})
		end)
	end)
end

return IconButton

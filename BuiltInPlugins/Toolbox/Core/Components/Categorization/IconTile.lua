--[[
	A generic icon tile with a background colour and gradient.

	Required Props:
		string BackgroundColor: The background color.
		string Image: Image URL or rbxasset to render.
		UDim2 Size: The size of the component.
		string Title: The text beneath the image.

	Optional Props:
		integer LayoutOrder: The LayoutOrder of the component.
		string Key: A Key to send as a parmater to the OnClick function.
		callback OnClick: Function called when the user clicks the component.
]]
local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Framework = require(Libs.Framework)
local Roact = require(Libs.Roact)

local ContextServices = Framework.ContextServices
local HoverArea = Framework.UI.HoverArea

local withContext = ContextServices.withContext

local BOTTOM_PADDING = 3
local CORNER_RADIUS = 5
local GRADIENT_TRANSPARENCY = 0.7
local HOVERED_IMAGE_SIZE = 75
local HOVERED_GRADIENT_TRANSPARENCY = 0.85
local IMAGE_CONTAINER_SIZE = 75
local IMAGE_SIZE = 63
local IMAGE_PADDING = 6

local IconTile = Roact.PureComponent:extend("IconTile")

function IconTile:init()
	self.state = {
		isHovered = false
	}

	self.onMouseEnter = function()
		self:setState(function(prevState)
			if not prevState.isHovered then
				return {
					isHovered = true
				}
			end
		end)
	end

	self.onMouseLeave = function()
		self:setState(function(prevState)
			if prevState.isHovered then
				return {
					isHovered = false
				}
			end
		end)
	end

	self.onClick = function()
		local props = self.props
		if props.OnClick then
			props.OnClick(props.Key)
		end
	end
end

function IconTile:render()
	local props = self.props
	local theme = props.Stylizer

	local backgroundColor = props.BackgroundColor
	local layoutOrder = props.LayoutOrder
	local image = props.Image
	local onClick = props.OnClick
	local size = props.Size
	local title = props.Title

	local iconTileTheme = theme.iconTile
	local isHovered = self.state.isHovered

	local gradientTransparency
	local imageSize
	local textColor
	if isHovered then
		gradientTransparency = HOVERED_GRADIENT_TRANSPARENCY
		imageSize = HOVERED_IMAGE_SIZE
		textColor = iconTileTheme.textColorHovered
	else
		gradientTransparency = GRADIENT_TRANSPARENCY
		imageSize = IMAGE_SIZE
		textColor = iconTileTheme.textColor
	end

	return Roact.createElement("TextButton", { -- TextButton used for Activated support
		AutoButtonColor = false,
		BackgroundColor3 = backgroundColor,
		ClipsDescendants = true,
		LayoutOrder = layoutOrder,
		Size = size,
		Text = "",

		[Roact.Event.MouseEnter] = self.onMouseEnter,
		[Roact.Event.MouseLeave] = self.onMouseLeave,
		[Roact.Event.Activated] = self.onClick,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, CORNER_RADIUS),
		}),

		Contents = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			ImageContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 0,
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 0, IMAGE_CONTAINER_SIZE),
				ZIndex = 1,
			}, {
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, BOTTOM_PADDING),
					PaddingLeft = UDim.new(0, IMAGE_PADDING),
					PaddingRight = UDim.new(0, IMAGE_PADDING),
					PaddingTop = UDim.new(0, IMAGE_PADDING),
				}),
				ImageIcon = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = image,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, imageSize, 0, imageSize),
				}),
			}),

			Title = Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(0, 1),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Font = iconTileTheme.font,
				LayoutOrder = 1,
				Position = UDim2.new(0, 0, 1, -BOTTOM_PADDING),
				Size = UDim2.new(1, 0, 0, 0),
				Text = title,
				TextColor3 = textColor,
				TextSize = iconTileTheme.textSize,
				TextWrapped = true,
				ZIndex = 2,
			}),
		}),

		UIGradientContainer = Roact.createElement("Frame", {
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = gradientTransparency,
			ClipsDescendants = true,
			Size = UDim2.new(1, 0, 1, 0),
		}, {
			UIGradient = Roact.createElement("UIGradient", {
				Transparency =  NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0),
					NumberSequenceKeypoint.new(1, 1),
				}),
				Rotation = -90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, iconTileTheme.gradientColor),
					ColorSequenceKeypoint.new(1, backgroundColor),
				}),
			}),
		}),

		HoverArea = onClick and Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
			Size = UDim2.new(1, 0, 1, 0),
		}),
	})
end

IconTile = withContext({
	Stylizer = ContextServices.Stylizer,
})(IconTile)

return IconTile

--[[
	(USES STYLESHEETS, REQUIRES CHANGES)
	This component will be deprecated in future in favor of a stylesheet for the plain ImageLabel instance.
	An image.

	Optional Props:
		string Image: The image asset itself.
		Color3 ImageColor3: The color tint of the image.
		number ImageTransparency: The transparency of the image.
		Vector2 ImageRectSize: Partial pixel size of the image.
		Vector2 ImageRectOffset: Pixel offset for rendering part of image.
		Enum.ScaleType ScaleType: The ScaleType of the image (Fit, Crop, etc).
		Rect SliceCenter: The SliceCenter rect of the image, if it is ScaleType Slice.
		number SliceScale: The scale factor for 9-slice images.
		Vector2 TileSize: The size of the repeating tile for tiled images.
		Enum.ResamplerMode ResampleMode: The resampling mode for the image.
		Color3 BackgroundColor3: The background color of the image.
		number BackgroundTransparency: The transparency of the background.
		Enum.SizeConstraint SizeConstraint: The direction(s) that the image can be resized in.
		Vector2 AnchorPoint: The anchor point of the image.
		UDim2 Position: Position of the image.
		UDim2 Size: Size of the image.
		number Rotation: Rotation of the image.
		number LayoutOrder: LayoutOrder of the component.
		callback OnMouseEnter: Function that's called when the mouse enters the image.
		callback OnMouseLeave: Function that's called when the mouse leaves the image.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		string React.Tag: Tags for style sheets (if using style sheets).

	Style Values:
		string Image: The image asset itself.
		Color3 Color: The color tint of the image.
		number Transparency: The transparency of the image.
		Vector2 ImageRectSize: Partial pixel size of the image.
		Vector2 ImageRectOffset: Pixel offset for rendering part of image.
		Enum.ScaleType ScaleType: The ScaleType of the image (Fit, Crop, etc).
		Rect SliceCenter: The SliceCenter rect of the image, if it is ScaleType Slice.
		number SliceScale: The scale factor for 9-slice images.
		Vector2 TileSize: The size of the repeating tile for tiled images.
		Enum.ResamplerMode ResampleMode: The resampling mode for the image.
		Color3 BackgroundColor3: The background color of the image.
		number BackgroundTransparency: The transparency of the background.
		Enum.SizeConstraint SizeConstraint: The direction(s) that the image can be resized in.
		Vector2 AnchorPoint: The anchor point of the image.
		UDim2 Position: Position of the image.
		UDim2 Size: Size of the image.
		number Rotation: Rotation of the image.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local prioritize = require(Framework.Util.prioritize)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local Typecheck = require(Framework.Util.Typecheck)

local Image = Roact.PureComponent:extend("Image")
Typecheck.wrap(Image, script)

local DEFAULT_SIZE = UDim2.fromScale(0, 0)

function Image:render()
	local props = self.props
	local style = if supportsStyleSheets then (props.Style or {}) else props.Stylizer
	local tags = if supportsStyleSheets then props[React.Tag] else nil

	local image = prioritize(props.Image, style.Image)
	local color = prioritize(props.ImageColor3, style.Color)
	local transparency = prioritize(props.ImageTransparency, style.Transparency)
	local imageRectSize = prioritize(props.ImageRectSize, style.ImageRectSize)
	local imageRectOffset = prioritize(props.ImageRectOffset, style.ImageRectOffset)
	local scaleType = prioritize(props.ScaleType, style.ScaleType)
	local sizeConstraint = prioritize(props.SizeConstraint, style.SizeConstraint)
	local sliceCenter = prioritize(props.SliceCenter, style.SliceCenter)
	local sliceScale = prioritize(props.SliceScale, style.SliceScale)
	local tileSize = prioritize(props.TileSize, style.TileSize)
	local resampleMode = prioritize(props.ResampleMode, style.ResampleMode)
	local backgroundColor = prioritize(props.BackgroundColor3, style.BackgroundColor3)
	local backgroundTransparency = prioritize(props.BackgroundTransparency, style.BackgroundTransparency, 1)
	local anchorPoint = prioritize(props.AnchorPoint, style.AnchorPoint)
	local position =
		prioritize(props.Position, style.Position, (if supportsStyleSheets then nil else UDim2.new(0, 0, 0, 0)))
	local size = prioritize(props.Size, style.Size, (if supportsStyleSheets then nil else UDim2.new(1, 0, 1, 0)))
	local rotation = prioritize(props.Rotation, style.Rotation)
	local layoutOrder = props.LayoutOrder
	local onMouseEnter = props.OnMouseEnter
	local onMouseLeave = props.OnMouseLeave

	return Roact.createElement(
		"ImageLabel",
		join(
			{
				AnchorPoint = anchorPoint,
				Size = size,
				Position = position,
				BackgroundTransparency = backgroundTransparency,
				BackgroundColor3 = backgroundColor,
				ImageTransparency = transparency,
				ImageColor3 = color,
				BorderSizePixel = 0,
				Rotation = rotation,
				Image = image,
				ImageRectSize = imageRectSize,
				ImageRectOffset = imageRectOffset,
				ScaleType = scaleType,
				SliceCenter = sliceCenter,
				SliceScale = sliceScale,
				TileSize = tileSize,
				ResampleMode = resampleMode,
				SizeConstraint = sizeConstraint,
				LayoutOrder = layoutOrder,
				[Roact.Event.MouseEnter] = onMouseEnter,
				[Roact.Event.MouseLeave] = onMouseLeave,
			},
			if supportsStyleSheets
				then {
					[React.Tag] = joinTags(
						"Component-Image",
						tags,
						if size == DEFAULT_SIZE then "X-DefaultSize" else nil
					),
				}
				else nil
		),
		props[Roact.Children]
	)
end

if not supportsStyleSheets then
	Image = withContext({
		Stylizer = ContextServices.Stylizer,
	})(Image)
end

return Image

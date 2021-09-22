--[[
	The visual editor of the plugin that displays the selected object's image,
	background grid, image size, and four dragging sliders on top of the image.

	Props:
		selectedObject -- selected object either an image label or an image button
		pixelDimensions (Vector2) -- dimensions of the image in pixels
		sliceRect -- current slice ordered in { X0, X1, Y0, Y1 } format
		setSliceRect -- callback to change sliceRect in SliceEditor
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local Constants = require(Plugin.Src.Util.Constants)
local Orientation = require(Plugin.Src.Util.Orientation)
local MouseCursorUtil = require(Plugin.Src.Util.MouseCursorUtil)
local ImageDragger = require(Plugin.Src.Components.ImageDragger)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel

local ImageEditor = Roact.PureComponent:extend("ImageEditor")

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()
local UNDEFINED = Orientation.Undefined.rawValue()

function ImageEditor:init(props)
	local pixelDimensions = props.pixelDimensions
	local setSliceRect = props.setSliceRect
	local sliceRect = props.sliceRect

	self.draggerHandlingMovement = false -- red dragger not currently handling drag
	self.dragOrientation = UNDEFINED -- no current orientation
	self.dragging = false

	self.leftPos = math.clamp(sliceRect[LEFT] / pixelDimensions.X, 0, 1)
	self.rightPos =  math.clamp(sliceRect[RIGHT] / pixelDimensions.X, 0, 1)
	self.topPos = math.clamp(sliceRect[TOP] / pixelDimensions.Y, 0, 1)
	self.bottomPos =  math.clamp(sliceRect[BOTTOM] / pixelDimensions.Y, 0, 1)

	self.onDragBegin = function(obj, orientation, mousePosition, draggerPosition)
		-- when onInputBegan for red draggers
		self.obj = obj
		self.draggerHandlingMovement = true
		self.dragOrientation = orientation
		self.mousePosition = mousePosition
		self.draggerPosition = draggerPosition
	end

	self.onDragging = function(inputPosition, dragOrientation)
		-- when onInputChanged for red draggers
		if self.dragOrientation == UNDEFINED then
			-- if dragging is being handled by background
			return
		end

		self.dragging = true
		self.draggerHandlingMovement = true
		self.dragOrientation = dragOrientation

		self.updateDraggedPosition(inputPosition)
	end

	self.onDragEnd = function(input, orientation)
		-- when onInputEnded for red draggers
		local slice = self.props.sliceRect
		if (input.UserInputType == Enum.UserInputType.MouseButton1) then
			local newSliceRect
			if self.dragOrientation == LEFT then
				local newSliceValue = math.round(self.leftPos * pixelDimensions.X)
				newSliceRect = {newSliceValue, slice[RIGHT], slice[TOP], slice[BOTTOM]}

			elseif self.dragOrientation == RIGHT then
				local newSliceValue = math.round(self.rightPos * pixelDimensions.X)
				newSliceRect = {slice[LEFT], newSliceValue, slice[TOP], slice[BOTTOM]}

			elseif self.dragOrientation == TOP then
				local newSliceValue = math.round(self.topPos * pixelDimensions.Y)
				newSliceRect = {slice[LEFT], slice[RIGHT], newSliceValue, slice[BOTTOM]}

			elseif self.dragOrientation == BOTTOM then
				local newSliceValue = math.round(self.bottomPos * pixelDimensions.Y)
				newSliceRect = {slice[LEFT], slice[RIGHT], slice[TOP], newSliceValue}
			end
			setSliceRect(newSliceRect, true)
			self.dragging = false
		end
		if not self.dragging then
			MouseCursorUtil.resetMouseCursor()
		end
		self.draggerHandlingMovement = false
	end

	self.onBackgroundInputChanged = function(_, input)
		-- When input changes on background grid, check if background should handle drag

		if self.dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			-- if drag is being handled by red draggers, then don't update
			if self.draggerHandlingMovement then
				return
			end

			-- update mouse cursor icon if needed
			if MouseCursorUtil.currentIconPath == "" then
				if self.dragOrientation == LEFT or self.dragOrientation == RIGHT then
					MouseCursorUtil.setMouseCursor(Constants.MOUSE_CURSORS.EW)

				elseif self.dragOrientation == TOP or self.dragOrientation == BOTTOM then
					MouseCursorUtil.setMouseCursor(Constants.MOUSE_CURSORS.NS)
				end
			end

			self.updateDraggedPosition(input.Position)
		end
	end

	self.fitImageSize = nil
	self.getFitImageSize = function()
		if not self.fitImageSize then
			self.fitImageSize = pixelDimensions / math.max(pixelDimensions.X, pixelDimensions.Y) * Constants.IMAGE_SIZE
		end
		return self.fitImageSize
	end

	self.updateFitImageSize = function()
		self.fitImageSize = nil
		self.getFitImageSize()
	end

	self.updateDraggedPosition = function(inputPosition)
		-- calculates new dragged location
		local slice = self.props.sliceRect
		local deltaPosition = Vector2.new(inputPosition.X, inputPosition.Y) - self.mousePosition
		local imageDimension = self.getFitImageSize()
		self.newPosition = self.draggerPosition + deltaPosition / imageDimension

		-- set corresponding position and clamp values to dragger bounds and whole pixel locations
		if self.dragOrientation == LEFT then
			local upperBound = slice[RIGHT] / pixelDimensions.X
			self.leftPos = math.clamp(self.newPosition.X, 0, upperBound)
			self.obj.Position = UDim2.fromScale(self.leftPos, self.obj.Position.Y.Scale)

		elseif self.dragOrientation == RIGHT then
			local lowerBound = slice[LEFT] / pixelDimensions.X
			self.rightPos = math.clamp(self.newPosition.X, lowerBound, 1)
			self.obj.Position = UDim2.fromScale(self.rightPos, self.obj.Position.Y.Scale)

		elseif self.dragOrientation == TOP then
			local upperBound = slice[BOTTOM] / pixelDimensions.Y
			self.topPos = math.clamp(self.newPosition.Y, 0, upperBound)
			self.obj.Position = UDim2.fromScale(self.obj.Position.X.Scale, self.topPos)

		elseif self.dragOrientation == BOTTOM then
			local lowerBound = slice[TOP] / pixelDimensions.Y
			self.bottomPos = math.clamp(self.newPosition.Y, lowerBound, 1)
			self.obj.Position = UDim2.fromScale(self.obj.Position.X.Scale, self.bottomPos)
		end
	end
end

function ImageEditor:createDragger(orientation)
	-- Helper function for creating the four ImageDraggers
	return Roact.createElement(ImageDragger, {
			orientation = orientation,
			pixelDimensions = self.props.pixelDimensions,
			sliceRect = self.props.sliceRect,
			onDragBegin = self.onDragBegin,
			onDragging = self.onDragging,
			onDragEnd = self.onDragEnd,
		})
end

function ImageEditor:render()
	--[[
		Renders image pixel size label + grid background as parent
		to selected image with four image draggers
	]]--
	local props = self.props
	local selectedObject = props.selectedObject
	local pixelDimensions = props.pixelDimensions
	local localization = props.Localization
	local imageSizeText = localization:getText("ImageEditor", "ImageSize")

	-- if the pixelDimensions have not been loaded, print an error msg
	if not selectedObject.IsLoaded then
		imageSizeText = localization:getText("ImageEditor", "ImageSizeError")
	else
		imageSizeText = imageSizeText .. (": %dx%d"):format(pixelDimensions.X, pixelDimensions.Y)
	end

	self.updateFitImageSize()
	local fitImageSize = self.getFitImageSize()
	
	return Roact.createElement("ImageButton", {
		-- also the coding logic background for draggers
		BackgroundTransparency = 1,
		Image = Constants.IMAGES.BACKGROUND_GRID,
		Position = UDim2.fromOffset(Constants.BACKGROUND_FROMEDGE_PADDING, Constants.BACKGROUND_FROMEDGE_PADDING),
		ScaleType = Enum.ScaleType.Tile,
		Size = UDim2.fromOffset(Constants.BACKGROUND_SIZE, Constants.BACKGROUND_SIZE),
		TileSize = UDim2.fromOffset(Constants.BACKGROUND_TILE_SIZE, Constants.BACKGROUND_TILE_SIZE),
		[Roact.Event.InputChanged] = self.onBackgroundInputChanged,
	}, {
		imageLabel = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = selectedObject.Image,
			ImageColor3 = selectedObject.ImageColor3,
			Position = UDim2.fromScale(0.5, 0.5),
			ScaleType = Enum.ScaleType.Fit,
			ResampleMode = selectedObject.ResampleMode,
			Size = UDim2.fromOffset(fitImageSize.X, fitImageSize.Y),
		}, {
			LeftDragSlider = self:createDragger(LEFT),
			RightDragSlider = self:createDragger(RIGHT),
			TopDragSlider = self:createDragger(TOP),
			BottomDragSlider = self:createDragger(BOTTOM),
		}),
		PixelText = Roact.createElement(TextLabel, {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, Constants.PIXEL_YPOSITION),
			Text = imageSizeText,
			TextSize = Constants.TEXTSIZE,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),
	})
end

ImageEditor = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(ImageEditor)

return ImageEditor

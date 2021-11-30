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
local MouseCursorManager = require(Plugin.Src.Util.MouseCursorManager)
local ImageDragger = require(Plugin.Src.Components.ImageDragger)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel
local Pane = UI.Pane

local ImageEditor = Roact.PureComponent:extend("ImageEditor")

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()
local UNDEFINED = Orientation.Undefined.rawValue()

function ImageEditor:init(props)
	self.draggerHandlingMovement = false -- red dragger not currently handling drag
	self.dragOrientation = UNDEFINED -- no current orientation

	self:setState({
		hoveringDraggerOrientation = -1,
	})
	
	if math.max(props.pixelDimensions.X, props.pixelDimensions.Y) <= 0 then
		self.leftPos = 0
		self.rightPos = 1
		self.topPos = 0
		self.bottomPos = 1
	else
		local pixelDimensions = props.pixelDimensions
		assert(pixelDimensions.X > 0)
		assert(pixelDimensions.Y > 0)

		local sliceRect = props.sliceRect
		self.leftPos = math.clamp(sliceRect[LEFT] / pixelDimensions.X, 0, 1)
		self.rightPos =  math.clamp(sliceRect[RIGHT] / pixelDimensions.X, 0, 1)
		self.topPos = math.clamp(sliceRect[TOP] / pixelDimensions.Y, 0, 1)
		self.bottomPos =  math.clamp(sliceRect[BOTTOM] / pixelDimensions.Y, 0, 1)
	end

	self.onDragging = function(inputPosition, dragOrientation)
		-- when onInputChanged for red draggers
		if self.dragOrientation == UNDEFINED then
			-- if dragging is being handled by background
			return
		end

		self.draggerHandlingMovement = true
		self.dragOrientation = dragOrientation

		self.updateDraggedPosition(inputPosition)
	end

	self.disconnectMouseMoveInputObject = function()
		if self.mouseMoveInputObjectConnection then
			self.mouseMoveInputObjectConnection:Disconnect()
			self.mouseMoveInputObjectConnection = nil
		end
	end

	self.setDraggingState = function(value: boolean)
		self.dragging = value
		self:setState({
			dragging = value, -- Mirror the value to Roact
		})
	end

	self.setDraggingState(false)

	self.onDragBegin = function(obj, orientation, mousePosition, draggerPosition)
		-- when onInputBegan for red draggers
		self.obj = obj
		self.draggerHandlingMovement = true
		self.dragOrientation = orientation
		self.mousePosition = mousePosition
		self.draggerPosition = draggerPosition

		self.setDraggingState(true)

		MouseCursorManager.setLocked(self.props.Mouse, true)

		local inputObj = self.lastMouseMoveInputObject
		if inputObj ~= nil then
			self.disconnectMouseMoveInputObject()

			self.mouseMoveInputObjectConnection = inputObj:GetPropertyChangedSignal("Position"):Connect(function()
				if self.dragging then
					self.onDragging(inputObj.Position, orientation)
				end
			end)
		end
	end

	self.onDragEnd = function(input, orientation)
		-- when onInputEnded for red draggers
		local slice = self.props.sliceRect
		local pixelDimensions = self.props.pixelDimensions

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

			if newSliceRect then
				self.props.setSliceRect(newSliceRect, true)
			end

			self.disconnectMouseMoveInputObject()
			self.setDraggingState(false)
			self.uncertainDragStarted = false
			self.updateHoverDragger()
			MouseCursorManager.setLocked(self.props.Mouse, false)
		end
		
		self.draggerHandlingMovement = false
	end

	self.priorityDragCandidates = {}
	self.getBestPriorityDragCandidate = function()
		local bestPriority = nil
		local bestCandidate = nil
		for orientation, item in pairs(self.priorityDragCandidates) do
			if bestPriority == nil or item.priority > bestPriority then
				bestPriority = item.priority
				bestCandidate = item
			end
		end

		return bestCandidate
	end

	-- Uncertain dragging and hovering:
	self.uncertainDragCandidates = {}
	self.getBestUncertainDragCandidate = function()
		local bestPriority = nil
		for _, item in pairs(self.uncertainDragCandidates) do
			if bestPriority == nil or item.priority > bestPriority then
				bestPriority = item.priority
			end
		end

		local bestDistance = nil
		local bestCandidate = nil
		for _, item in pairs(self.uncertainDragCandidates) do
			if item.priority == bestPriority and (bestDistance == nil or item.distance < bestDistance) then
				bestDistance = item.distance
				bestCandidate = item
			end
		end

		return bestCandidate
	end

	self.uncertainDragStarted = false
	self.startUncertainDrag = function(mousePosition)
		if self.uncertainDragStarted then
			return
		end

		self.uncertainDragStarted = true
		local candidate = self.getBestUncertainDragCandidate()
		if candidate then
			local obj = candidate.instance
			local draggerPosition = Vector2.new(obj.Position.X.Scale, obj.Position.Y.Scale)
			self.onDragBegin(obj, candidate.orientation, mousePosition, draggerPosition)
			self.draggerHandlingMovement = false
		end
	end

	self.priorityHoverOrientation = nil
	self.updateHoverDragger = function(orientation, priority)
		if self.dragging then
			return
		end

		local hoverDragger = -1

		local priorityCandidate = self.getBestPriorityDragCandidate()
		if priorityCandidate then
			hoverDragger = priorityCandidate.orientation
		else
			local candidate = self.getBestUncertainDragCandidate()
			if candidate then
				hoverDragger = candidate.orientation
			end
		end

		self:setState({
			hoveringDraggerOrientation = hoverDragger,
		})

		if hoverDragger == LEFT or hoverDragger == RIGHT then
			MouseCursorManager.setCursor(self.props.Mouse, Constants.MOUSE_CURSORS.EW)
		elseif hoverDragger == TOP or hoverDragger == BOTTOM then
			MouseCursorManager.setCursor(self.props.Mouse, Constants.MOUSE_CURSORS.NS)
		end

		if hoverDragger == -1 then
			MouseCursorManager.resetCursor(self.props.Mouse)
		end
	end

	-- TODO: Remove addDragCandidate, removeDragCandidate with flag FFlag9SliceEditorNewDraggers
	self.addDragCandidate = function(draggerOrientation, distance, instance)
		self.uncertainDragCandidates[draggerOrientation] = {
			distance = distance,
			instance = instance,
			orientation = draggerOrientation,
			priority = 0,
		}
		self.updateHoverDragger()
	end

	self.addDragCandidateWithId = function(id, draggerOrientation, distance, instance, priority)
		self.uncertainDragCandidates[id] = {
			distance = distance,
			instance = instance,
			orientation = draggerOrientation,
			priority = priority or 0
		}
		self.updateHoverDragger()
	end

	self.removeDragCandidate = function(draggerOrientation)
		self.uncertainDragCandidates[draggerOrientation] = nil
		self.updateHoverDragger()
	end

	self.removeDragCandidateWithId = function(id)
		self.uncertainDragCandidates[id] = nil
		self.updateHoverDragger()
	end

	self.onBackgroundInputChanged = function(_, input)
		-- When input changes on background grid, check if background should handle drag

		if self.dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			-- if drag is being handled by red draggers, then don't update
			if self.draggerHandlingMovement then
				return
			end

			self.updateDraggedPosition(input.Position)
		end
	end

	self.onBackgroundInputEnded = function(obj, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if self.uncertainDragStarted then
				self.onDragEnd(input, self.dragOrientation)
			end
		end
	end

	self.updateDraggedPosition = function(inputPosition)
		-- calculates new dragged location
		local slice = self.props.sliceRect
		local deltaPosition = Vector2.new(inputPosition.X, inputPosition.Y) - self.mousePosition
		local imageDimension = self.state.fitImageSize
		self.newPosition = self.draggerPosition + deltaPosition / imageDimension
		local pixelDimensions = self.props.pixelDimensions

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

	self.addPriorityDragCandidate = function(orientation, priority, instance)
		self.priorityDragCandidates[orientation] = {
			priority = priority,
			instance = instance,
			orientation = orientation,
		}
		self.updateHoverDragger()
	end

	self.removePriorityDragCandidate = function(orientation)
		self.priorityDragCandidates[orientation] = nil
		self.updateHoverDragger()
	end

	self.setMostRecentMouseMoveInputObject = function(inputObj: InputObject)
		self.lastMouseMoveInputObject = inputObj
	end
end

function ImageEditor.getDerivedStateFromProps(nextProps, lastState)
	local fitImageSize = Vector2.new(1, 1)

	local pixelDimensions = nextProps.pixelDimensions
	local largestDimension = math.max(pixelDimensions.X, pixelDimensions.Y)
	
	if largestDimension > 0 then
		fitImageSize = pixelDimensions / largestDimension * Constants.IMAGE_SIZE
	end
	
	return {
		fitImageSize = fitImageSize,
	}
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
			-- TODO: Remove addDragCandidate, removeDragCandidate with flag FFlag9SliceEditorNewDraggers
			addDragCandidate = self.addDragCandidate,
			removeDragCandidate = self.removeDragCandidate,
			addDragCandidateWithId = self.addDragCandidateWithId,
			removeDragCandidateWithId = self.removeDragCandidateWithId,
			isHovering = (self.state.hoveringDraggerOrientation == orientation),
			isDragging = self.state.dragging,
			addPriorityDragCandidate = self.addPriorityDragCandidate,
			removePriorityDragCandidate = self.removePriorityDragCandidate,
			startUncertainDrag = self.startUncertainDrag,
			setMostRecentMouseMoveInputObject = self.setMostRecentMouseMoveInputObject,
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

	local fitImageSize = self.state.fitImageSize
	if selectedObject then
		-- if the pixelDimensions have not been loaded, print an error msg
		if not selectedObject.IsLoaded then
			imageSizeText = localization:getText("ImageEditor", "ImageSizeError")
		else
			imageSizeText = imageSizeText .. (": %dx%d"):format(pixelDimensions.X, pixelDimensions.Y)
		end
	end
	
	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Position = props.position,
		Size = UDim2.fromOffset(Constants.BACKGROUND_SIZE, Constants.BACKGROUND_SIZE + Constants.TEXTSIZE),
	}, {
		BackgroundCheckboardImage = Roact.createElement("ImageButton", {
			-- also the coding logic background for draggers
			BackgroundTransparency = 1,
			Image = Constants.IMAGES.BACKGROUND_GRID,
			
			ScaleType = Enum.ScaleType.Tile,
			Size = UDim2.fromOffset(Constants.BACKGROUND_SIZE, Constants.BACKGROUND_SIZE),
			TileSize = UDim2.fromOffset(Constants.BACKGROUND_TILE_SIZE, Constants.BACKGROUND_TILE_SIZE),
			[Roact.Event.InputChanged] = self.onBackgroundInputChanged,
			[Roact.Event.InputEnded] = self.onBackgroundInputEnded,
			ZIndex = 1,
			LayoutOrder = props.layoutOrder,
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
				AnchorPoint = Vector2.new(0, 0),
				Position = UDim2.new(0, 0, 0, Constants.PIXEL_YPOSITION),
				Size = UDim2.new(1, 0, 0, Constants.TEXTSIZE),
				Text = imageSizeText,
				TextSize = Constants.TEXTSIZE,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Top,
			}),
		}),
	})
end

ImageEditor = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
	Mouse = ContextServices.Mouse,
})(ImageEditor)

return ImageEditor

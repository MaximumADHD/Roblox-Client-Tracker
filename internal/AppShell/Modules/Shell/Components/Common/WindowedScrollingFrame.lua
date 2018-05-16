--[[
		Creates a Roact component for inifinite scrolling
		Props:
			scrollingFrameProps : dictionary - props for the scrolling frame
				.Selectable : bool - Whether or not this object should be selectable using joysticks (controller).
				.ClipsDescendants : bool - Determines whether Roblox will render any portions of its GUI descendants that are outside of its own borders.
			items : Array - An array of the input item data which is used to construct item component.
			itemSize : Vector2 - The size for each item in the scrolling frame.
			itemsPaddingOffset : int - The padding between each item.
			scrollingDirection : Enum.ScrollingDirection - The scrolling direction of the scrolling frame, can't be Enum.ScrollingDirection.XY.
			stiffness : The stiffness of the scrolling motion.
			damping : The damping of the scrolling motion.
			itemOffset: Vector2 - The minimum distance of the selected guiobject to the window border.
			customScrollDist: dictionary - Custom distances to trigger the scroll.
			generateKey : function() - Used to generate a name for the item.
			renderItem : function() -
				Input: item data, item index and an onSelectionGained callback
				Output: a Roact Component
		State:
			viewStart: int - The item start index.
			viewSize: int - The number of items can be put in the window.
			paddingStart: int - The padding to apply on the top / left side of the scrolling frame.
			canvasPos: UDim - The location within the canvas, in pixels, that should be drawn at the top left of the scroll frame.
			motionStyle: string - Determine the simplemotion type.
			onRested: function() - Callback when the motion finished.
]]

local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactMotion = require(Modules.LuaApp.RoactMotion)
local WindowedScrollingFrame = Roact.PureComponent:extend("WindowedScrollingFrame")

function WindowedScrollingFrame:init()
	self.state = {
		viewStart = 1,
		viewSize = 1,
		paddingStart = 0,
		canvasPos = Vector2.new(0, 0),
		motionStyle = "Instant",
		onRested = function() end
	}

	self.scrollingFrameRef = function(rbx)
		self.scrollingFrame = rbx
	end

	self.updateViewBoundsCallback = function(...)
		return self:updateViewBounds(...)
	end
end

function WindowedScrollingFrame:updateViewBounds(selectedItem)
	if not self.scrollingFrame then
		return
	end

	local scrollingFrame = self.scrollingFrame
	local itemSize = self.props.itemSize
	local itemsPaddingOffset = self.props.itemsPaddingOffset or 0
	local scrollingDirection = self.props.scrollingDirection or Enum.ScrollingDirection.Y
	local absoluteWindowSize = scrollingFrame.AbsoluteWindowSize
	local canvasPosition = scrollingFrame.CanvasPosition
	local itemOffset = self.props.itemOffset or Vector2.new(0, 0)
	local customScrollDist = self.props.customScrollDist or {}

	local axisKey = "X"
	if scrollingDirection == Enum.ScrollingDirection.Y then
		axisKey = "Y"
	end

	-- If our scrolling frame has zero height / width, let's not bother trying to
	-- recompute our sizing
	if absoluteWindowSize[axisKey] == 0 then
		return
	end

	local function clipCanvasPosition(canvasPos)
		local canvasPosX = canvasPos.X
		local canvasPosY = canvasPos.Y
		canvasPosX = math.min(canvasPosX, scrollingFrame.CanvasSize.X.Offset - scrollingFrame.AbsoluteWindowSize.X)
		canvasPosX = math.max(0, canvasPosX)
		canvasPosY = math.min(canvasPosY, scrollingFrame.CanvasSize.Y.Offset - scrollingFrame.AbsoluteWindowSize.Y)
		canvasPosY = math.max(0, canvasPosY)
		return Vector2.new(canvasPosX, canvasPosY)
	end

	--Adjust canvas position based on selected obejct/ new absolute size
	local function makeMotion(canvasPos, motionStyle, onRested)
		canvasPos = clipCanvasPosition(canvasPos)
		--Note: Must set an empty function to replace an existing callback
		onRested = onRested or function() end

		local itemTotalSize = (itemSize[axisKey] + itemsPaddingOffset)
		local viewSize = math.ceil(absoluteWindowSize[axisKey] / itemTotalSize) + 1
		local viewStart = math.floor(canvasPos[axisKey] / itemTotalSize)
		local paddingStart = math.max(0, (viewStart - 1) * itemTotalSize)
		self:setState({
			viewStart = viewStart,
			viewSize = viewSize,
			paddingStart = paddingStart,
			canvasPos = canvasPos,
			motionStyle = motionStyle,
			onRested = onRested
		})
	end

	local newCanvasPosition = canvasPosition
	if selectedItem then
		--If the selected guiobject is off-window, we move it back into the window instantly
		--Then make the motion
		if scrollingDirection == Enum.ScrollingDirection.Y then
			local topDistance = selectedItem.AbsolutePosition.Y - scrollingFrame.AbsolutePosition.Y
			local bottomDistance = (scrollingFrame.AbsolutePosition + scrollingFrame.AbsoluteWindowSize - selectedItem.AbsolutePosition - selectedItem.AbsoluteSize).Y

			local newCanvasPositionY = scrollingFrame.CanvasPosition.Y
			local minDistTop = itemOffset.X
			local minDistBottom = itemOffset.Y

			if topDistance < (customScrollDist.Top or minDistTop) then
				if topDistance < 0 then
					makeMotion(Vector2.new(newCanvasPosition.X, newCanvasPositionY + topDistance), "Instant", function()
						makeMotion(Vector2.new(newCanvasPosition.X, newCanvasPositionY - (minDistTop - topDistance)), "Spring")
					end)
				else
					makeMotion(Vector2.new(newCanvasPosition.X, newCanvasPositionY - (minDistTop - topDistance)), "Spring")
				end
			elseif bottomDistance < (customScrollDist.Bottom or minDistBottom) then
				if bottomDistance < 0 then
					makeMotion(Vector2.new(newCanvasPosition.X, newCanvasPositionY - bottomDistance), "Instant", function()
						makeMotion(Vector2.new(newCanvasPosition.X, newCanvasPositionY + minDistBottom - bottomDistance), "Spring")
					end)
				else
					makeMotion(Vector2.new(newCanvasPosition.X, newCanvasPositionY + minDistBottom - bottomDistance), "Spring")
				end
			end
		elseif scrollingDirection == Enum.ScrollingDirection.X then
			local leftDistance = selectedItem.AbsolutePosition.X - scrollingFrame.AbsolutePosition.X
			local rightDistance = (scrollingFrame.AbsolutePosition + scrollingFrame.AbsoluteWindowSize - selectedItem.AbsolutePosition - selectedItem.AbsoluteSize).X

			local newCanvasPositionX = scrollingFrame.CanvasPosition.X
			local minDistLeft = itemOffset.X
			local minDistRight = itemOffset.Y

			if leftDistance < (customScrollDist.Left or minDistLeft) then
				if leftDistance < 0 then
					makeMotion(Vector2.new(newCanvasPositionX + leftDistance, newCanvasPosition.Y), "Instant", function()
						makeMotion(Vector2.new(newCanvasPositionX - (minDistLeft - leftDistance), newCanvasPosition.Y), "Spring")
					end)
				else
					makeMotion(Vector2.new(newCanvasPositionX - (minDistLeft - leftDistance), newCanvasPosition.Y), "Spring")
				end
			elseif rightDistance < (customScrollDist.Right or minDistRight) then
				if rightDistance < 0 then
					makeMotion(Vector2.new(newCanvasPositionX - rightDistance, newCanvasPosition.Y), "Instant", function()
						makeMotion(Vector2.new(newCanvasPositionX + minDistRight - rightDistance, newCanvasPosition.Y), "Spring")
					end)
				else
					makeMotion(Vector2.new(newCanvasPositionX + minDistRight - rightDistance, newCanvasPosition.Y), "Spring")
				end
			end
		end
	else
		makeMotion(newCanvasPosition, "Instant")
	end
end

function WindowedScrollingFrame:render()
	local items = self.props.items
	local generateKey = self.props.generateKey
	local renderItem = self.props.renderItem
	local itemSize = self.props.itemSize
	local itemsPaddingOffset = self.props.itemsPaddingOffset or 0
	local scrollingDirection = self.props.scrollingDirection or Enum.ScrollingDirection.Y
	assert(scrollingDirection ~= Enum.ScrollingDirection.XY, "Can't set ScrollingDirection as XY.")

	local children = {}

	children["UIListLayout"] = Roact.createElement("UIListLayout", {
		Padding = UDim.new(0, itemsPaddingOffset),
		SortOrder = Enum.SortOrder.LayoutOrder,
		FillDirection = scrollingDirection == Enum.ScrollingDirection.Y and Enum.FillDirection.Vertical or Enum.FillDirection.Horizontal
	})

	if scrollingDirection == Enum.ScrollingDirection.Y then
		children["UIPadding"] = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, self.state.paddingStart)
		})
	elseif scrollingDirection == Enum.ScrollingDirection.X then
		children["UIPadding"] = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, self.state.paddingStart)
		})
	end

	local lowerBound = math.max(1, self.state.viewStart)
	local upperBound = math.min(#items, self.state.viewStart + self.state.viewSize)

	for i = lowerBound, upperBound do
		local key = generateKey and generateKey(i) or i
		children[key] = renderItem(items[i], i, self.updateViewBoundsCallback)
	end

	local scrollingFrameProps = self.props.scrollingFrameProps or {}
	local canvasSize = nil
	if scrollingDirection == Enum.ScrollingDirection.Y then
		canvasSize = UDim2.new(1, 0, 0, #items * itemSize.Y + (#items - 1) * itemsPaddingOffset)
	elseif scrollingDirection == Enum.ScrollingDirection.X then
		canvasSize = UDim2.new(0, #items * itemSize.X + (#items - 1) * itemsPaddingOffset, 1, 0)
	end

	local defaultStyle = {}
	local style = {}
	local canvasPositionX = self.state.canvasPos.X
	local canvasPositionY = self.state.canvasPos.Y
	local motionStyle = self.state.motionStyle
	local onRested = self.state.onRested
	local stiffness = self.props.stiffness or 150
	local damping = self.props.damping or 30
	if scrollingDirection == Enum.ScrollingDirection.Y then
		defaultStyle = { canvasPositionY = canvasPositionY }
		style = { canvasPositionY = motionStyle == "Instant" and canvasPositionY or RoactMotion.spring(canvasPositionY, stiffness, damping) }
	elseif scrollingDirection == Enum.ScrollingDirection.X then
		defaultStyle = { canvasPositionX = canvasPositionX }
		style = { canvasPositionX = motionStyle == "Instant" and canvasPositionX or RoactMotion.spring(canvasPositionX, stiffness, damping) }
	end

	return Roact.createElement(RoactMotion.SimpleMotion, {
		defaultStyle = defaultStyle,
		style = style,
		onRested = onRested or function() end,
		render = function(values)
			return Roact.createElement("ScrollingFrame", {
				Size = UDim2.new(1, 0, 1, 0),
				ScrollingEnabled = false, --Don't let the default select logic affect canvas position
				CanvasSize = canvasSize,
				CanvasPosition = Vector2.new(values.canvasPositionX, values.canvasPositionY),
				Selectable = scrollingFrameProps.Selectable or false,
				ScrollBarThickness = 0,
				ClipsDescendants = scrollingFrameProps.ClipsDescendants,
				BackgroundTransparency = 1,
				ScrollingDirection = scrollingDirection,
				[Roact.Ref] = self.scrollingFrameRef,
				[Roact.Change.AbsoluteSize] = function() self:updateViewBounds() end,
			}, children)
		end
	})
end

function WindowedScrollingFrame:didMount()
	self:updateViewBounds()
end

function WindowedScrollingFrame:didUpdate(prevProps, prevState)
	if self.props == prevProps then
		return
	end

	self:updateViewBounds()
end

return WindowedScrollingFrame
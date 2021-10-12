local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller
local ComplexThing = require(script.Parent.ComplexThing)

local TextService = game:GetService("TextService")

local debugScroller = Roact.PureComponent:extend("debugScroller")

local COLORS = {
	DEFAULT = Color3.fromRGB(188, 188, 188),
	WHITE = Color3.fromRGB(244, 244, 244),
	BLACK = Color3.fromRGB(0, 0, 0),
	TRUE = Color3.fromRGB(188, 222, 188),
	FALSE = Color3.fromRGB(222, 188, 188),

	FOCUS_INDEX = Color3.fromRGB(0, 255, 0),
	ANCHOR_LOCATION = Color3.fromRGB(0, 127, 255),
	DRAG_BUFFER = Color3.fromRGB(222, 0, 222),
	CANVAS = Color3.fromRGB(244, 188, 66),
	LEAD_INDEX = Color3.fromRGB(0, 255, 0),
	TRAIL_INDEX = Color3.fromRGB(255, 0, 0),
	ANCHOR_INDEX = Color3.fromRGB(255, 255, 0),
	PADDING = Color3.fromRGB(145, 88, 222),
}

local COMPLEX_THING_SIZE = 128

local LAYOUT_ORDER_INDEX = 0
function getNextLayout()
	LAYOUT_ORDER_INDEX = LAYOUT_ORDER_INDEX + 1
	return LAYOUT_ORDER_INDEX
end

function makeLabel(text, value, color)
	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, 20),
		Text = string.format("%s: %s", text, tostring(value)),
		TextColor3 = color or COLORS.WHITE,
		TextXAlignment = Enum.TextXAlignment.Left,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		LayoutOrder = getNextLayout(),
	})
end

function makeButton(text, func, color)
	color = color or COLORS.DEFAULT
	return Roact.createElement("TextButton", {
		Size = UDim2.fromOffset(110, 30),
		BackgroundColor3 = color,
		TextWrapped = true,
		Text = text,
		[Roact.Event.Activated] = func,
		LayoutOrder = getNextLayout(),
	})
end

function debugScroller:makeToggleButton(value)
	local function doToggle()
		self:setState({
			[value] = not self.state[value]
		})
	end
	return makeButton(value, doToggle, self.state[value] and COLORS.TRUE or COLORS.FALSE)
end

function makeLabelLine(text, position, color, pointsRight)
	color = color or COLORS.BLACK
	local LINE_WIDTH = 20

	local textSize = TextService:GetTextSize(text, 8, Enum.Font.Legacy, Vector2.new())
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(textSize.X + LINE_WIDTH, textSize.Y),
		Position = position,
		AnchorPoint = pointsRight and Vector2.new(1, 0.5) or Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
	}, {
		Roact.createFragment({
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			labelLine = Roact.createElement("Frame", {
				Position = position,
				Size = UDim2.fromOffset(LINE_WIDTH, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = color,
				LayoutOrder = 2,
			}),
			label = Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(1, -LINE_WIDTH, 0, 8),
				Text = text,
				TextColor3 = color,
				BackgroundTransparency = 1,
				LayoutOrder = pointsRight and 1 or 3
			})
		})
	})
end

debugScroller.defaultProps = {
	anchorLocation = UDim.new(1, 0),
	mountingBuffer = 150,
	dragBuffer = 0,
	focusIndex = 1,

	Size = UDim2.new(1, -20, 0, 100),
	numItems = 20,
}

function debugScroller:init()
	self.initialState = {
		items = {},
		-- Scroller props. These can be changed by debugger buttons
		focusLock = 1,
		orientation = Scroller.Orientation.Up,
		clipsDescendants = false,
		nestedLayer = 1,

		-- Scroller internals. Don't change these manually, meant for DISPLAY ONLY
		canvasPosition = 0,
		canvasSize = 0,
		paddingSize = -1,
		paddingPosition = 0,
		anchorLinePositionY = 0,
		leadIndex = -1,
		trailIndex = -1,
		anchorIndex = -1,
	}

	self.mutableState = {
		loadPreviousEnabled = false,
		loadNextEnabled = false,
	}

	for i = 1,self.props.numItems do
		table.insert(self.initialState.items, {id = i})
	end

	self.state = Cryo.Dictionary.join(self.initialState, self.mutableState)

	-- horsecat storybooks have a Y-offset that we need to address before using absolutePosition
	self.initialY, self.updateInitialY = Roact.createBinding(0)

	self.ref = Roact.createRef()
end

function debugScroller:render()
	return Roact.createElement("Frame", {
		Size=UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Change.AbsolutePosition] = function(rbx)
			self.updateInitialY(rbx.AbsolutePosition.Y)
		end
	}, {
		layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}),
		visibilityFrame = Roact.createElement("Frame", {
			LayoutOrder = 1,
			Size = UDim2.new(0, 200, 1, 0),
			BackgroundTransparency = 1,
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			anchorLocationLabel = makeLabel("anchorLocation", self.props.anchorLocation, COLORS.ANCHOR_LOCATION),
			anchorIndexLabel = makeLabel("anchorIndex", self.state.anchorIndex, COLORS.ANCHOR_INDEX),
			leadIndexLabel = makeLabel("leadIndex", self.state.leadIndex, COLORS.LEAD_INDEX),
			trailIndexLabel = makeLabel("trailIndex", self.state.trailIndex, COLORS.TRAIL_INDEX),
			canvasPositionLabel = makeLabel("canvasPosition", self.state.canvasPosition, COLORS.CANVAS),
			canvasSizeLabel = makeLabel("canvasSize", self.state.canvasSize, COLORS.CANVAS),
			paddingSizeLabel = makeLabel("size of padding Frame", self.state.paddingSize, COLORS.PADDING),

			whiteSpace = Roact.createElement("Frame", { Size = UDim2.fromOffset(0, 20), BackgroundTransparency = 1, LayoutOrder = getNextLayout()}),

			disableLoadPrevious = self:makeToggleButton("loadPreviousEnabled"),
			disableLoadNext = self:makeToggleButton("loadNextEnabled"),
			clipsDescendants = self:makeToggleButton("clipsDescendants"),
		}),

		scrollerFrame = Roact.createElement("Frame", {
			LayoutOrder = 2,
			Size = UDim2.new(0, 160, 0, 300),
			BackgroundTransparency = 1,
		}, {
			scroller = Roact.createElement(Scroller, {
				ElasticBehavior = Enum.ElasticBehavior.Always,
				ClipsDescendants = self.state.clipsDescendants,
				Position = UDim2.fromOffset(0, 200),
				BackgroundColor3 = Color3.fromRGB(111, 111, 111),
				Size = self.props.Size,

				orientation = self.state.orientation,
				padding = UDim.new(),
				itemList = self.state.items,
				focusIndex = self.props.focusIndex,
				focusLock = self.state.focusLock,
				anchorLocation = self.props.anchorLocation,
				dragBuffer = self.props.dragBuffer,
				mountingBuffer = self.props.mountingBuffer,
				estimatedItemSize = self.state.nestedLayer ~= 1 and COMPLEX_THING_SIZE or 20,
				[Roact.Ref] = self.ref,
				identifier = function(item)
					return item.id
				end,
				--recyclingDisabledFor={"ComplexThing"},
				renderItem = function(item, _)
					if self.state.nestedLayer ~= 1 then
						return Roact.createElement(ComplexThing, {
							Size = UDim2.fromOffset(COMPLEX_THING_SIZE, COMPLEX_THING_SIZE),
							nestedLayer = self.state.nestedLayer,
						})
					else
						local r = 88+88*math.sin(math.rad(8*item.id+90))
						local g = 88+44*math.sin(math.rad(8*item.id+0))
						local b = 88+88*math.sin(math.rad(8*item.id+180))

						local leadIndexId = self.state.items[self.state.leadIndex] and self.state.items[self.state.leadIndex].id
						local trailIndexId = self.state.items[self.state.trailIndex] and self.state.items[self.state.trailIndex].id
						local anchorIndexId = self.state.items[self.state.anchorIndex] and self.state.items[self.state.anchorIndex].id

						return Roact.createElement("Frame", {
							Size = UDim2.new(0, 20, 0, 20),
							BackgroundColor3 = Color3.fromRGB(r, g, b),
						}, {
							["INDEX" .. tostring(item.id)] = Roact.createElement("TextLabel", {
								Size = UDim2.new(1, 0, 1, 0),
								Text = item.id,
								TextColor3 = Color3.new(1, 1, 1),
								BackgroundTransparency = 1,
							}, {
								item.id == leadIndexId and makeLabelLine("leadIndex ",
									UDim2.fromScale(1, 0),
									COLORS.LEAD_INDEX,
									false),
								item.id == trailIndexId and makeLabelLine("trailIndex ",
									UDim2.fromScale(1, 0),
									COLORS.TRAIL_INDEX,
									false),
								item.id == anchorIndexId and makeLabelLine("anchorIndex ",
									UDim2.new(),
									COLORS.ANCHOR_INDEX,
									true)
							}),
						})
					end
				end,

				loadPrevious = function()
					if not self.state.loadPreviousEnabled then
						return
					end
					local newItems = {}
					local n = self.state.items[1].id
					for i = n-10, n-1 do
						table.insert(newItems, {
							id = i,
						})
					end
					self:setState({
						items = Cryo.List.join(newItems, self.state.items)
					})
				end,

				loadNext = function()
					if not self.state.loadNextEnabled then
						return
					end
					local newItems = {}
					local n = self.state.items[#self.state.items].id
					for i = n+1, n+10 do
						table.insert(newItems, {
							id = i,
						})
					end
					self:setState({
						items = Cryo.List.join(self.state.items, newItems)
					})
				end,

				[Roact.Change.CanvasPosition] = function()
					if not self.ref.current then
						return
					end

					local rbx = self.ref.current

					-- this feels dirty, but allows us to visualize the padding frame
					local padding_rbx = rbx:FindFirstChild("padding")

					local anchorLinePositionY = rbx.AbsolutePosition.Y - self.props.anchorLocation.Offset
					if self.state.orientation == Scroller.Orientation.Down then
						anchorLinePositionY = anchorLinePositionY + (1 - self.props.anchorLocation.Scale) * rbx.AbsoluteSize.Y
					elseif self.state.orientation == Scroller.Orientation.Up then
						anchorLinePositionY = anchorLinePositionY + self.props.anchorLocation.Scale * rbx.AbsoluteSize.Y
					else
						anchorLinePositionY = 0
					end

					self:setState({
						canvasPosition = rbx.CanvasPosition.Y,
						canvasSize = rbx.CanvasSize.Y.Offset,
						paddingSize = padding_rbx.Size.Y.Offset,

						anchorLinePositionY = anchorLinePositionY,
						paddingPosition = padding_rbx.AbsolutePosition.Y,
					})
				end,

				onScrollUpdate = function(indices)
					self.state.leadIndex = indices.leadIndex
					self.state.anchorIndex = indices.anchorIndex
					self.state.trailIndex = indices.trailIndex
				end
			}),

			anchorLine = self.ref.current and makeLabelLine("anchorLocation ",
				UDim2.fromOffset(20, self.state.anchorLinePositionY - self.initialY:getValue()),
				COLORS.ANCHOR_LOCATION,
				true),

			dragBuffer1 = self.ref.current and self.props.dragBuffer ~= 0 and makeLabelLine("dragBuffer ",
				UDim2.fromOffset(20, self.props.dragBuffer + self.ref.current.AbsolutePosition.Y - self.initialY:getValue()),
				COLORS.DRAG_BUFFER,
				true),

			dragBuffer2 = self.ref.current and self.props.dragBuffer ~= 0 and makeLabelLine("dragBuffer ",
				UDim2.fromOffset(20, self.ref.current.AbsoluteSize.Y - self.props.dragBuffer + self.ref.current.AbsolutePosition.Y - self.initialY:getValue()),
				COLORS.DRAG_BUFFER,
				true),

			mountingBuffer1 = self.ref.current and makeLabelLine("mountingBuffer ",
				UDim2.fromOffset(20, -self.props.mountingBuffer + self.ref.current.AbsolutePosition.Y - self.initialY:getValue()),
				COLORS.WHITE,
				true),

			mountingBuffer2 = self.ref.current and makeLabelLine("mountingBuffer ",
			UDim2.fromOffset(20, self.ref.current.AbsoluteSize.Y + self.props.mountingBuffer + self.ref.current.AbsolutePosition.Y - self.initialY:getValue()),
			COLORS.WHITE,
			true),

			canvasEstimate = self.ref.current and Roact.createElement("Frame", {
				Size = UDim2.fromOffset(40, self.state.canvasSize),
				Position = UDim2.fromOffset(20, self.state.paddingPosition - self.initialY:getValue()),
				BackgroundColor3 = COLORS.CANVAS,
				BorderSizePixel = 0,
				ZIndex = -10,
			}),

			paddingEstimate = self.ref.current and Roact.createElement("Frame", {
				Size = UDim2.fromOffset(30, self.state.paddingSize),
				Position = UDim2.fromOffset(0, self.state.paddingPosition - self.initialY:getValue()),
				BackgroundColor3 = COLORS.PADDING,
				BorderSizePixel = 0,
				ZIndex = -9,
			}),
		}),
		operationsFrame = Roact.createElement("Frame", {
			LayoutOrder = 3,
			Size = UDim2.new(0, 100, 1, 0),
			BackgroundTransparency = 1,
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			reset = makeButton("Reset ItemList", function()
				local newState = Cryo.Dictionary.join(self.initialState, {
					focusLock = self.state.focusLock + 1,
					loadNext = self.state.loadNext,
					loadPrev = self.state.loadPrev,
					clipsDescendants = self.state.clipsDescendants,
				})
				self:setState(newState)
			end),

			-- Reversing the Orientation currently does not call resize, does not update the anchorLocation
			-- reverse = makeButton("Reverse Orientation", function()
			-- 	local newOrientation
			-- 	if self.state.orientation == Scroller.Orientation.Down then
			-- 		newOrientation = Scroller.Orientation.Up
			-- 	else
			-- 		newOrientation = Scroller.Orientation.Down
			-- 	end
			-- 	self:setState({
			-- 		orientation = newOrientation,
			-- 		focusLock = self.state.focusLock + 1,
			-- 	})
			-- end),

			rotateForward = makeButton("Rotate Forward", function()
				local nextItems = {}
				local numItems = #self.state.items
				local a = self.state.items[numItems]
				table.insert(nextItems, a)
				for i = 1, numItems-1 do
					table.insert(nextItems, self.state.items[i])
				end

				self:setState({
					focusLock = self.state.focusLock + 1,
					items = nextItems,
				})
			end),

			rotateBack = makeButton("Rotate Backward", function()
				local nextItems = {}
				local a = self.state.items[1]
				for i = 2, #self.state.items do
					table.insert(nextItems, self.state.items[i])
				end
				table.insert(nextItems, a)

				self:setState({
					focusLock = self.state.focusLock + 1,
					items = nextItems,
				})
			end),

			insertFront = makeButton("Insert Front", function()
				local nextItems = {}
				table.insert(nextItems, {id = self.state.items[1].id-1 })
				for k, v in pairs(self.state.items) do
					table.insert(nextItems, v)
				end

				self:setState({
					focusLock = self.state.focusLock + 1,
					items = nextItems,
				})
			end),

			insertBack = makeButton("Insert Back", function()
				local nextItems = {}
				for k, v in pairs(self.state.items) do
					table.insert(nextItems, v)
				end
				table.insert(nextItems, {id = self.state.items[#self.state.items].id+1 })

				self:setState({
					focusLock = self.state.focusLock + 1,
					items = nextItems,
				})
			end),

			removeFront = makeButton("Remove Front", function()
				local nextItems = {}
				local numItems = #self.state.items
				for i = 2, numItems do
					table.insert(nextItems, self.state.items[i])
				end

				self:setState({
					focusLock = self.state.focusLock + 1,
					items = nextItems,
				})
			end),

			removeBack = makeButton("Remove Back", function()
				local nextItems = {}
				local numItems = #self.state.items
				for i = 1, numItems-1 do
					table.insert(nextItems, self.state.items[i])
				end

				self:setState({
					focusLock = self.state.focusLock + 1,
					items = nextItems,
				})
			end),


			reverseList = makeButton("Reverse List", function()
				local nextItems = {}
				local numItems = #self.state.items
				for i = 1, numItems do
					nextItems[i] = self.state.items[numItems - i + 1]
				end

				self:setState({
					focusLock = self.state.focusLock + 1,
					items = nextItems,
				})
			end),

			scrollUpOnce = makeButton("Scroll Up 1px", function()
				if self.ref.current then
					self.ref.current.CanvasPosition = self.ref.current.CanvasPosition - Vector2.new(0, 1)
				end
			end),

			scrollDownOnce = makeButton("Scroll Down 1px", function()
				if self.ref.current then
					self.ref.current.CanvasPosition = self.ref.current.CanvasPosition + Vector2.new(0, 1)
				end
			end),

			toggleComplexity = makeButton("Toggle Complexity", function()
				self:setState({
					nestedLayer = self.state.nestedLayer%5 + 1
				})
			end),
		})
	})
end

return debugScroller

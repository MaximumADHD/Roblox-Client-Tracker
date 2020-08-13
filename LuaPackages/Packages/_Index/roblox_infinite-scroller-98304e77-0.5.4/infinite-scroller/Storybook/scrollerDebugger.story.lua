local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local TextService = game:GetService("TextService")

local debugScroller = Roact.PureComponent:extend("debugScroller")

local COLORS = {
	WHITE = Color3.fromRGB(244, 244, 244),
	BLACK = Color3.fromRGB(0, 0, 0),
	FOCUS_INDEX = Color3.fromRGB(0, 255, 0),
	ANCHOR_LOCATION = Color3.fromRGB(0, 127, 255),
	CANVAS = Color3.fromRGB(244, 188, 66),
	LEAD_INDEX = Color3.fromRGB(0, 255, 0),
	TRAIL_INDEX = Color3.fromRGB(255, 0, 0),
	ANCHOR_INDEX = Color3.fromRGB(255, 255, 0),
	PADDING = Color3.fromRGB(145, 88, 222),
}

local LABEL_LAYOUT = 0
function makeLabel(text, value, color)
	LABEL_LAYOUT = LABEL_LAYOUT + 1
	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, 20),
		Text = string.format("%s: %s", text, tostring(value)),
		TextColor3 = color or COLORS.WHITE,
		TextXAlignment = Enum.TextXAlignment.Left,
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		LayoutOrder = LABEL_LAYOUT,
	})
end

function makeLabelLine(text, position, color, pointsRight)
	color = color or COLORS.BLACK
	local LINE_WIDTH = 20

	local textSize = TextService:GetTextSize(text, 8, Enum.Font.Legacy, Vector2.new())
	return Roact.createElement("Frame", {
		Size = UDim2.fromOffset(textSize.X + LINE_WIDTH),
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
				Size = UDim2.new(0, LINE_WIDTH, 0, 1),
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
	anchorLocation = UDim.new(0.5, 0),
	mountingBuffer = 50,
	focusIndex = 1,

	numItems = 10,
}

function debugScroller:init()
	self.state = {
		items = {},
		-- Scroller props. These can be changed by debugger buttons
		focusLock = 1,

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

	for i = 1,self.props.numItems do
		table.insert(self.state.items, {id = i})
	end

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
		valuesFrame = Roact.createElement("Frame", {
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
		}),
		scrollerFrame = Roact.createElement("Frame", {
			LayoutOrder = 2,
			Size = UDim2.new(0, 120, 1, 0),
			BackgroundTransparency = 1,
		}, {
			scroller = Roact.createElement(Scroller, {
				ClipsDescendants = false,
				Position = UDim2.new(0, 20, 0, 300),
				BackgroundColor3 = Color3.fromRGB(111, 111, 111),
				Size = UDim2.new(0, 100, 0, 100),
				padding = UDim.new(),
				itemList = self.state.items,
				focusIndex = self.props.focusIndex,
				focusLock = self.state.focusLock,
				anchorLocation = self.props.anchorLocation,
				mountingBuffer = self.props.mountingBuffer,
				estimatedItemSize = 10,
				[Roact.Ref] = self.ref,
				identifier = function(item)
					return item.id
				end,
				renderItem = function(item, _)
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
				end,

				loadNext = function()
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
					padding_rbx.Size = UDim2.new(padding_rbx.Size.X.Scale, 30, padding_rbx.Size.Y.Scale, padding_rbx.Size.Y.Offset)
					padding_rbx.BackgroundTransparency = 0
					padding_rbx.BackgroundColor3 = COLORS.PADDING

					self:setState({
						canvasPosition = rbx.CanvasPosition.Y,
						canvasSize = rbx.CanvasSize.Y.Offset,
						paddingSize = padding_rbx.Size.Y.Offset,

						anchorLinePositionY = rbx.AbsolutePosition.Y + self.props.anchorLocation.Scale * rbx.AbsoluteSize.Y,
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

			mountingBuffer = self.ref.current and makeLabelLine("mountingBuffer ",
				UDim2.fromOffset(20, -self.props.mountingBuffer + self.ref.current.AbsolutePosition.Y - self.initialY:getValue()),
				COLORS.WHITE,
				true),

			canvasEstimate = self.ref.current and Roact.createElement("Frame", {
				Size = UDim2.fromOffset(40, self.state.canvasSize),
				Position = UDim2.fromOffset(20, self.state.paddingPosition - self.initialY:getValue()),
				BackgroundColor3 = COLORS.CANVAS,
				BorderSizePixel = 0,
				ZIndex = -10,
			})
		}),
		buttonsFrame = Roact.createElement("Frame", {
			LayoutOrder = 3,
			Size = UDim2.new(0, 100, 1, 0),
			BackgroundTransparency = 1,
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			shuffle = Roact.createElement("TextButton", {
				Size = UDim2.new(0, 100, 0, 50),
				AnchorPoint = Vector2.new(1, 0),
				Text = "Shuffle",
				[Roact.Event.Activated] = function()
					local nextItems = {}
					for k, v in pairs(self.state.items) do
						table.insert(nextItems, v)
					end
					local a = table.remove(nextItems)
					table.insert(nextItems, 1, a)
					for k, v in pairs(nextItems) do
						print(k, v.id)
					end

					self:setState({
						focusLock = self.state.focusLock + 1,
						items = nextItems,
					})
				end,
			}),
		})
	})
end

return debugScroller

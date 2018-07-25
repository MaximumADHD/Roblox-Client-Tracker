local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)

local HEADER_NAMES = Constants.NetworkFormatting.ChartHeaderNames
local CELL_WIDTHS = Constants.NetworkFormatting.ChartCellWidths
local CELL_PADDING = Constants.NetworkFormatting.CellPadding
local HEADER_HEIGHT = Constants.NetworkFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = Constants.NetworkFormatting.EntryFrameHeight
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor

local FONT_SIZE = Constants.DefaultFontSize.MainWindow
local MAIN_FONT = Constants.Font.MainWindow
local RESPONSE_STR_TEXT_HEIGHT = Constants.NetworkFormatting.ResponseStrHeight
local RESPONSE_WIDTH_RATIO = Constants.NetworkFormatting.ResponseWidthRatio

local Components = script.Parent.Parent.Parent.Components
local HeaderButton = require(Components.HeaderButton)
local NetworkChartEntry = require(script.Parent.NetworkChartEntry)

local totalEntryWidth = 0
for _, cellWidth in pairs(CELL_WIDTHS) do
	totalEntryWidth = totalEntryWidth + cellWidth
end

-- create table of offsets and sizes for each cell
-- each of the first 5 cells has a fixed size
local currOffset = 0
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

for _, cellWidth in ipairs(CELL_WIDTHS) do
	table.insert(cellOffset,UDim2.new(0, currOffset + CELL_PADDING, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, cellWidth - CELL_PADDING, 0, HEADER_HEIGHT))
	table.insert(entryCellSize, UDim2.new(0, cellWidth - CELL_PADDING, 0, ENTRY_HEIGHT))
	currOffset = currOffset + cellWidth
end

-- cell 1-5 are defined widths,
-- cell 6 pads out the remaining width in the row
table.insert(cellOffset,UDim2.new(0, currOffset + CELL_PADDING, 0, 0))
table.insert(headerCellSize, UDim2.new(1, -totalEntryWidth - CELL_PADDING, 0, HEADER_HEIGHT))
table.insert(entryCellSize, UDim2.new(1, -totalEntryWidth - CELL_PADDING, 0, ENTRY_HEIGHT))

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(offset.X.Scale, offset.X.Offset - CELL_PADDING,
		offset.Y.Scale, offset.Y.Offset)
end

local NetworkChart = Roact.Component:extend("NetworkChart")

function NetworkChart:init()
	self.getOnExpandEntry = function (name)
		return function(rbx, input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or
				(input.UserInputType == Enum.UserInputType.Touch and
				input.UserInputState == Enum.UserInputState.End) then
				self:setState({
					expandIndex = self.state.expandIndex ~= name and name
				})
			end
		end
	end

	self.onCanvasPosChanged = function()
		local canvasPos = self.scrollingRef.current.CanvasPosition
		if self.state.canvasPos ~= canvasPos then
			self:setState({
				absScrollSize = self.scrollingRef.current.AbsoluteSize,
				canvasPos = canvasPos,
			})
		end
	end

	self.ref = Roact.createRef()
	self.scrollingRef = Roact.createRef()

	self.state = {
		expandIndex = false,
	}
end

function NetworkChart:willUpdate()
	if self.canvasPosConnector then
		self.canvasPosConnector:Disconnect()
	end
end

function NetworkChart:didUpdate()
	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)
	end
end

function NetworkChart:didMount()
	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)

		self:setState({
			absScrollSize = self.scrollingRef.current.AbsoluteSize,
			canvasPos = self.scrollingRef.current.CanvasPosition,
		})
	end
end

function NetworkChart:render()
	local httpEntryList = self.props.httpEntryList or {}
	local summaryHeight = self.props.summaryHeight
	local width = self.props.width
	local searchTerm = self.props.searchTerm
	local layoutOrder = self.props.layoutOrder
	local reverseSort = self.props.reverseSort

	local onSortChanged = self.props.onSortChanged

	local expandIndex = self.state.expandIndex
	local absScrollSize = self.state.absScrollSize
	local canvasPos = self.state.canvasPos

	local headerCells = {}
	for ind, name in ipairs(HEADER_NAMES) do
		headerCells[name] = Roact.createElement(HeaderButton, {
			text = name,
			size = headerCellSize[ind],
			pos = cellOffset[ind],

			sortfunction = onSortChanged,
		})
	end

	for i = 2, #verticalOffsets do
		local key = string.format("VerticalLine_%d",i)
		headerCells[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 0, ENTRY_HEIGHT),
			Position = verticalOffsets[i],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	local entries = {}
	local canvasHeight = 0
	local paddingHeight = -1
	local usedFrameSpace = 0

	local totalEntries = #httpEntryList
	entries["UIListLayout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	if canvasPos and absScrollSize then
		for ind, entry in ipairs(httpEntryList) do
			local valid = true
			if searchTerm ~= "" then
				valid = string.find(entry.RequestType:lower(), searchTerm:lower()) ~= nil or
						string.find(entry.Url:lower(), searchTerm:lower()) ~= nil
			end

			if not (entry.RequestType == "Default") and valid then
				-- insert header elements into a frame so that we can use the UIListLayout to keep everything in order
				local showResponse = expandIndex == entry.Num
				local frameHeight = ENTRY_HEIGHT
				local responseBodyHeight = 0

				if showResponse then
					frameHeight = frameHeight + RESPONSE_STR_TEXT_HEIGHT
					if self.ref.current then
						local fSize = Vector2.new(
							self.ref.current.AbsoluteSize.X * RESPONSE_WIDTH_RATIO,
							100000000)
						local DisSize = TextService:GetTextSize(entry.Response, FONT_SIZE, MAIN_FONT, fSize)

						responseBodyHeight = RESPONSE_STR_TEXT_HEIGHT + DisSize.Y
						frameHeight = frameHeight + responseBodyHeight
					end
				end

				if canvasHeight + frameHeight >= canvasPos.Y then
					if usedFrameSpace < absScrollSize.Y then
						local layoutOrder = reverseSort and totalEntries - ind or ind

						entries[ind] = Roact.createElement(NetworkChartEntry, {
							size = UDim2.new(1, 0, 0, frameHeight),
							entry = entry,
							entryCellSize = entryCellSize,
							cellOffset = cellOffset,
							verticalOffsets = verticalOffsets,
							showResponse = showResponse,
							responseBodyHeight = responseBodyHeight,

							layoutOrder = layoutOrder + 1,

							onButtonPress = self.getOnExpandEntry(entry.Num),
						})
					end
					if paddingHeight < 0 then
						paddingHeight = canvasHeight
					else
						usedFrameSpace = usedFrameSpace + frameHeight
					end
				end
				canvasHeight = canvasHeight + frameHeight
			end
			entries["WindowingPadding"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, paddingHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			})
		end
	end

	if totalEntries == 0 then
		return Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, -summaryHeight),
			Text = "No Network Entries Found",
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Header = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			},headerCells),

			HorizontalLine_1 = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LINE_WIDTH),
				BackgroundColor3 = LINE_COLOR,
				BorderSizePixel = 0,
				BackgroundTransparency = 0,
				LayoutOrder = 2,
			}),
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -summaryHeight),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,

		[Roact.Ref] = self.ref,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Header = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		},headerCells),

		HorizontalLine_1 = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, LINE_WIDTH),
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
			BackgroundTransparency = 0,
			LayoutOrder = 2,
		}),

		scrollingFrameEntries = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
			CanvasSize = UDim2.new(0, width, 0, canvasHeight),
			ScrollBarThickness = 6,
			BackgroundTransparency = 1,
			LayoutOrder = 3,

			[Roact.Ref] = self.scrollingRef
		}, entries),
	})
end

return NetworkChart
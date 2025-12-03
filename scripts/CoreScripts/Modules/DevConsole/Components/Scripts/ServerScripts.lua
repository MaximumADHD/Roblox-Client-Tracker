--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(script.Parent.Parent.Parent.Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)

local ServerScriptsEntry = require(script.Parent.ServerScriptsEntry)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LINE_WIDTH = Constants.GeneralFormatting.LineWidth
local LINE_COLOR = Constants.GeneralFormatting.LineColor
local CELL_WIDTHS = Constants.ServerScriptsFormatting.ChartCellWidths
local HEADER_NAMES = Constants.ServerScriptsFormatting.ChartHeaderNames
local HEADER_HEIGHT = Constants.ServerScriptsFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = Constants.ServerScriptsFormatting.EntryFrameHeight
local CELL_PADDING = Constants.ServerScriptsFormatting.CellPadding

local GRAPH_HEIGHT = Constants.GeneralFormatting.LineGraphHeight

local NO_DATA_MSG = "Awaiting Server Scripts Information."
local NO_RESULT_SEARCH_STR = Constants.GeneralFormatting.NoResultSearchStr

local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

local currOffset = 0

for _, cellWidth in ipairs(CELL_WIDTHS) do
	table.insert(cellOffset, UDim2.new(currOffset, CELL_PADDING, 0, 0))
	table.insert(headerCellSize, UDim2.new(cellWidth, -CELL_PADDING, 0, HEADER_HEIGHT))
	table.insert(entryCellSize, UDim2.new(cellWidth, -CELL_PADDING, 0, ENTRY_HEIGHT))
	currOffset = currOffset + cellWidth
end

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(offset.X.Scale, offset.X.Offset - CELL_PADDING, offset.Y.Scale, offset.Y.Offset)
end

local ServerScripts = Roact.Component:extend("ServerScripts")

local function constructHeader(onSortChanged)
	local header = {}
	-- NameButton
	for i = 1, #HEADER_NAMES do
		header[HEADER_NAMES[i]] = Roact.createElement(HeaderButton, {
			text = HEADER_NAMES[i],
			size = headerCellSize[i],
			pos = cellOffset[i],
			sortfunction = onSortChanged,
		})
	end

	header["upperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	header["verticalLine1"] = Roact.createElement("Frame", {
		Size = UDim2.new(0, LINE_WIDTH, 1, 0),
		Position = verticalOffsets[2],
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	header["verticalLine2"] = Roact.createElement("Frame", {
		Size = UDim2.new(0, LINE_WIDTH, 1, 0),
		Position = verticalOffsets[3],
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	header["lowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
		BackgroundTransparency = 1,
	}, header)
end

local function getX(entry)
	return entry.time
end

local function getActivity(entry)
	return entry.data[1]
end

local function getRate(entry)
	return entry.data[2]
end

local function formatScriptsData(data)
	return string.format("%.3f", data)
end

function ServerScripts:init(props)
	local currScriptsData = props.ServerScriptsData:getCurrentData()

	self.onSortChanged = function(sortType)
		local currSortType = props.ServerScriptsData:getSortType()
		if sortType == currSortType then
			self:setState({
				reverseSort = not self.state.reverseSort,
			})
		else
			props.ServerScriptsData:setSortType(sortType)
			self:setState({
				reverseSort = false,
			})
		end
	end

	self.getOnButtonPress = function(name)
		return function(rbx, input)
			self:setState({
				expandIndex = self.state.expandIndex ~= name and name,
			})
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

	self.scrollingRef = Roact.createRef()

	self.state = {
		serverScriptsData = currScriptsData,
		expandIndex = nil,
	}
end

function ServerScripts:willUpdate()
	if self.canvasPosConnector then
		self.canvasPosConnector:Disconnect()
	end
end

function ServerScripts:didUpdate()
	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)
	end
end

function ServerScripts:didMount()
	self.statsConnector = self.props.ServerScriptsData:Signal():Connect(function(data)
		self:setState({
			serverScriptsData = data,
		})
	end)

	if self.scrollingRef.current then
		local signal = self.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition")
		self.canvasPosConnector = signal:Connect(self.onCanvasPosChanged)

		self:setState({
			absScrollSize = self.scrollingRef.current.AbsoluteSize,
			canvasPos = self.scrollingRef.current.CanvasPosition,
		})
	end
end

function ServerScripts:willUnmount()
	self.statsConnector:Disconnect()
	self.statsConnector = nil
end

function ServerScripts:render()
	local searchTerm = self.props.searchTerm
	local scriptFilters = self.props.scriptFilters
	local layoutOrder = self.props.layoutOrder
	local size = self.props.size

	local scriptData = self.state.serverScriptsData
	local reverseSort = self.state.reverseSort
	local absScrollSize = self.state.absScrollSize
	local canvasPos = self.state.canvasPos

	local entries = {}
	local totalEntries = #scriptData

	if totalEntries == 0 then
		return Roact.createElement("TextLabel", {
			Size = size,
			Position = UDim2.new(0, 0, 0, 0),
			Text = NO_DATA_MSG,
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		})
	end

	local canvasHeight = 0
	local paddingHeight = -1
	local usedFrameSpace = 0
	local searchCount = 0

	if canvasPos and absScrollSize then
		for ind, scriptData in pairs(scriptData) do
			if not searchTerm or string.find(scriptData.name:lower(), searchTerm:lower()) ~= nil then
				searchCount = searchCount + 1
				local includeEntry = true
				local isActiveChecked = scriptFilters["Active"]
				local isInactiveChecked = scriptFilters["Inactive"]
				local currEntry = scriptData.dataStats.dataSet:back()
				--[[
					this conditional determines if the script is rendered or not depending on the
					the state of the active/inactive checkboxes.
					if neither are checked, render all
					if Active is checked, only render active scripts
					if Inactive is check, only render inactive scripts
					if Both are checked, render all
				]]
				--

				if isActiveChecked ~= isInactiveChecked then
					if currEntry.data[1] > 0 and isInactiveChecked then
						includeEntry = false
					elseif currEntry.data[1] == 0 and isActiveChecked then
						includeEntry = false
					end
				end

				if includeEntry then
					local showGraph = self.state.expandIndex == scriptData.name
					local frameHeight = showGraph and ENTRY_HEIGHT + (2 * GRAPH_HEIGHT) or ENTRY_HEIGHT

					if canvasHeight + frameHeight >= canvasPos.Y then
						if usedFrameSpace < absScrollSize.Y then
							local activityBoxColor = currEntry.data[1] > 0 and Constants.Color.ActiveBox
								or Constants.Color.InactiveBox
							local layoutOrder = reverseSort and totalEntries - ind or ind
							local newElement = Roact.createElement(ServerScriptsEntry, {
								scriptData = scriptData,
								frameHeight = frameHeight,
								showGraph = showGraph,
								layoutOrder = layoutOrder,
								activityBoxColor = activityBoxColor,

								entryCellSize = entryCellSize,
								cellOffset = cellOffset,
								verticalOffsets = verticalOffsets,

								onButtonPress = self.getOnButtonPress(scriptData.name),

								formatScriptsData = formatScriptsData,
								getX = getX,
								getActivity = getActivity,
								getRate = getRate,
								stringFormatY = formatScriptsData,
							})
							entries[ind] = newElement
						end

						if paddingHeight < 0 then
							paddingHeight = canvasHeight
						else
							usedFrameSpace = usedFrameSpace + frameHeight
						end
					end
					canvasHeight = canvasHeight + frameHeight
				end
			end
		end
		if searchCount > 0 then
			entries["WindowingPadding"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, paddingHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			})
		else
			local emptySearchStr = string.format(NO_RESULT_SEARCH_STR, searchTerm)
			entries["emptySearch"] = Roact.createElement("TextLabel", {
				Size = size,
				Text = emptySearchStr,
				TextColor3 = Constants.Color.Text,
				BackgroundTransparency = 1,
			})
		end
	end

	entries["UIListLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {

		Header = constructHeader(self.onSortChanged),

		Entries = Roact.createElement("ScrollingFrame", {
			Position = UDim2.new(0, 0, 0, HEADER_HEIGHT),
			Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = 1,
			ScrollBarThickness = 5,
			CanvasSize = UDim2.new(1, 0, 0, canvasHeight),

			[Roact.Ref] = self.scrollingRef,
		}, entries),
	})
end

return DataConsumer(ServerScripts, "ServerScriptsData")

--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol

local Components = script.Parent.Parent.Parent.Components
local BannerButton = require(Components.BannerButton)
local BoxButton = require(Components.BoxButton)
local CellCheckbox = require(Components.CellCheckbox)
local CellLabel = require(Components.CellLabel)
local DataConsumer = require(Components.DataConsumer)
local HeaderButton = require(Components.HeaderButton)

local Constants = require(script.Parent.Parent.Parent.Constants)
local GeneralFormatting = Constants.GeneralFormatting
local LINE_WIDTH = GeneralFormatting.LineWidth
local LINE_COLOR = GeneralFormatting.LineColor

local DebugVisualizationsFormatting = Constants.DebugVisualizationsFormatting
local HEADER_NAMES = DebugVisualizationsFormatting.ChartHeaderNames
local CELL_WIDTHS = DebugVisualizationsFormatting.ChartCellWidths
local HEADER_HEIGHT = DebugVisualizationsFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = DebugVisualizationsFormatting.EntryFrameHeight
local CELL_PADDING = DebugVisualizationsFormatting.CellPadding
local MIN_FRAME_WIDTH = DebugVisualizationsFormatting.MinFrameWidth
local LEARN_MORE_WIDTH = DebugVisualizationsFormatting.LearnMoreWidth

local NON_FOUND_ENTRIES_STR = "No DebugVisualizations Found"

-- create table of offsets and sizes for each cell
local totalCellWidth = 0
for _, cellWidth in ipairs(CELL_WIDTHS) do
	totalCellWidth = totalCellWidth + cellWidth
end

local currOffset = -totalCellWidth
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

currOffset = currOffset / 2
table.insert(cellOffset, UDim2.fromOffset(CELL_PADDING, 0))
table.insert(headerCellSize, UDim2.new(.5, currOffset - CELL_PADDING, 0, HEADER_HEIGHT))
table.insert(entryCellSize, UDim2.new(.5, currOffset - CELL_PADDING, 0, ENTRY_HEIGHT))

for _, cellWidth in ipairs(CELL_WIDTHS) do
	table.insert(cellOffset,UDim2.new(.5, currOffset + CELL_PADDING, 0, 0))
	table.insert(headerCellSize, UDim2.fromOffset(cellWidth - CELL_PADDING, HEADER_HEIGHT))
	table.insert(entryCellSize, UDim2.fromOffset(cellWidth - CELL_PADDING, ENTRY_HEIGHT))
	currOffset = currOffset + cellWidth
end

table.insert(cellOffset,UDim2.new(.5, currOffset + CELL_PADDING, 0, 0))
table.insert(headerCellSize, UDim2.new(.5, (-totalCellWidth / 2) - CELL_PADDING, 0, HEADER_HEIGHT))
table.insert(entryCellSize, UDim2.new(.5, (-totalCellWidth / 2) - CELL_PADDING, 0, ENTRY_HEIGHT))

-- Update this if adding / removing columns
local expectedColumnCount = 4
assert(#CELL_WIDTHS == 2, "DebugVisualizationsChart expected DebugVisualizationsFormatting CELL_WIDTHS to have a length of 2")
assert(#cellOffset == expectedColumnCount, "DebugVisualizationsChart expected cellOffset to have length " .. expectedColumnCount)
assert(#headerCellSize == expectedColumnCount, "DebugVisualizationsChart expected headerCellSize to have length " .. expectedColumnCount)
assert(#entryCellSize == expectedColumnCount, "DebugVisualizationsChart expected entryCellSize to have length " .. expectedColumnCount)

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(
		offset.X.Scale,
		offset.X.Offset - CELL_PADDING,
		offset.Y.Scale,
		offset.Y.Offset)
end

local DebugVisualizationsChart = Roact.Component:extend("DebugVisualizationsChart")

local function constructHeader(onSortChanged, width)
	local header = {}

	for ind, name in ipairs(HEADER_NAMES) do
		header[name] = Roact.createElement(HeaderButton, {
			text = name,
			size = headerCellSize[ind],
			pos = cellOffset[ind],
			sortfunction = onSortChanged,
		})
	end

	header["upperHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	header["lowerHorizontalLine"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 1, -LINE_WIDTH),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	for ind = 2, #verticalOffsets do
		local key = string.format("VerticalLine_%d",ind)
		header[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LINE_WIDTH, 1, 0),
			Position = verticalOffsets[ind],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, width, 0, HEADER_HEIGHT),
		BackgroundTransparency = 1,
	}, header)
end

local function constructEntry(entry, width, frameHeight, layoutOrder, isExpanded, expandCallback, learnMoreCallback)
	local name = entry.name
	local settingInfo = entry.settingInfo

	-- the last element is special cased because the data in the
	-- string is passed in as value in the table
	-- use tostring to convert the enum into an actual string also because it's used twice
	local enumStr = tostring(settingInfo["Name"])

	local row = {}
	for i = 2,#verticalOffsets do
		local key = string.format("line_%d",i)
		row[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0,LINE_WIDTH,1,0),
			Position = verticalOffsets[i],
			BackgroundColor3 = LINE_COLOR,
			BorderSizePixel = 0,
		})
	end

	row[name] = Roact.createElement(CellLabel, {
		text = enumStr,
		size = entryCellSize[1],
		pos = cellOffset[1],
	})

	row.checkbox = Roact.createElement(CellCheckbox, {
		name = enumStr,
		isSelected = settingInfo["Value"],
		size = entryCellSize[2],
		pos = cellOffset[2],
		OnCheckBoxClicked = entry.valueChangeCallback,
	})

	row.visualType = Roact.createElement(CellLabel, {
		text = settingInfo["Type"],
		size = entryCellSize[3],
		pos = cellOffset[3],
	})

	row.tags = Roact.createElement(CellLabel, {
		text = tostring(settingInfo["Tagstring"]),
		size = entryCellSize[4],
		pos = cellOffset[4],
	})

	row.lowerHorizontalLine = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LINE_WIDTH),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LINE_COLOR,
		BorderSizePixel = 0,
	})

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, width,  0, frameHeight),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Button = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, ENTRY_HEIGHT),
			pos = UDim2.new(),
			isExpanded = isExpanded,

			onButtonPress = expandCallback(name)
		}, row),

		DescriptionText = isExpanded and Roact.createElement(CellLabel, {
			pos = UDim2.new(0, CELL_PADDING, 0, ENTRY_HEIGHT + CELL_PADDING),
			size = UDim2.new(0, width - LEARN_MORE_WIDTH - CELL_PADDING * 2, 0, ENTRY_HEIGHT),
			text = tostring(settingInfo["Description"]),
		}),
		LearnMoreButton = isExpanded and Roact.createElement(BoxButton, {
			text = "Learn More",
			size = UDim2.new(0, LEARN_MORE_WIDTH, 0, ENTRY_HEIGHT),
			pos = UDim2.new(0, width - LEARN_MORE_WIDTH - CELL_PADDING, 0, ENTRY_HEIGHT + CELL_PADDING),
			onClicked = learnMoreCallback(name),
		}),
	})
end

function populateEntries(searchTerm, typeFilters, entryList, reverseSort, canvasPos, absScrollSize, frameWidth,
		expandedEntry, getOnButtonPress, getLearnMorePress)
	local entries = {}

	entries["UIListLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	local activeFilters = {}
	for key, value in pairs(typeFilters) do
		if value then
			table.insert(activeFilters, key)
		end
	end

	local totalEntries = #entryList
	local canvasHeight = 0

	if absScrollSize and canvasPos then
		local paddingHeight = -1
		local usedFrameSpace = 0
		local count = 0

		for ind, entry in ipairs(entryList) do
			local foundTerm = false
			if searchTerm then
				local enumStr = tostring(entry.settingInfo["Name"])
				foundTerm = string.find(enumStr:lower(), searchTerm:lower()) ~= nil
				foundTerm = foundTerm or string.find(entry.name:lower(), searchTerm:lower()) ~= nil
			end
			if #activeFilters > 0 then
				local filterMatched = false
				for _, filterKey in pairs(activeFilters) do
					if table.find(entry.settingInfo["Tags"], filterKey) ~= nil then
						filterMatched = true
						break
					end
				end
				if not searchTerm then
					searchTerm = true
					foundTerm = filterMatched
				else
					foundTerm = foundTerm and filterMatched
				end
			end

			if not searchTerm or foundTerm then
				local isExpanded = expandedEntry == entry.name
				local frameHeight = isExpanded and ENTRY_HEIGHT * 2 + CELL_PADDING * 2 or ENTRY_HEIGHT
				if canvasHeight + ENTRY_HEIGHT >= canvasPos.Y then
					if usedFrameSpace < absScrollSize.Y then
						local entryLayoutOrder = reverseSort and (totalEntries - ind) or ind
						entries[ind] = constructEntry(entry,
							frameWidth,
							frameHeight,
							entryLayoutOrder + 1,
							isExpanded,
							getOnButtonPress,
							getLearnMorePress)
					end
					if paddingHeight < 0 then
						paddingHeight = canvasHeight
					else
						usedFrameSpace = usedFrameSpace + ENTRY_HEIGHT
					end
					count = count + 1
				end

				canvasHeight = canvasHeight + frameHeight
			end
		end

		if count == 0 then
			entries["NoneFound"] = Roact.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 1),
				Text = NON_FOUND_ENTRIES_STR,
				TextColor3 = LINE_COLOR,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			})
		else
			entries["WindowingPadding"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, paddingHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			})
		end
	end

	return entries, canvasHeight
end

function DebugVisualizationsChart:init(props)
	local initVisualizations = props.DebugVisualizationsData:getCurrentData()

	self.getOnButtonPress = function(name)
		return function(rbx, input)
			self:setState({
				expandedEntry = self.state.expandedEntry ~= name and name
			})
		end
	end

	self.getLearnMorePress = function(name)
		return function(rbx, input)
			local linking = LinkingProtocol.default
			local baseurl = "https://create.roblox.com/docs/reference/engine/classes/PhysicsSettings#"
			local fullurl = baseurl .. name
			linking:openURL(fullurl)
		end
	end

	self.onSortChanged = function(sortType)
		local currSortType = props.DebugVisualizationsData:getSortType()
		if sortType == currSortType then
			self:setState(function(oldState)
				local newReverseSort = not oldState.reverseSort
				return {
					reverseSort = newReverseSort,
				}
			end)
		else
			props.DebugVisualizationsData:setSortType(sortType)
			self:setState({
				reverseSort = false,
			})
		end

	end

	self.onCanvasPosChanged = function()
		local canvasPos = self.scrollingRef.current.CanvasPosition
		self:setState({
			canvasPos = canvasPos,
		})
	end

	self.scrollingRef = Roact.createRef()

	self.state = {
		visualizationEntries = initVisualizations,
		reverseSort = false,
		expandedEntry = nil,
	}
end

function DebugVisualizationsChart:didUpdate()
	if self.scrollingRef.current then
		local absSize = self.scrollingRef.current.AbsoluteSize
		local currAbsSize = self.state.absScrollSize
		if absSize ~= currAbsSize then
			self:setState({
				absScrollSize = absSize,
			})
		end
	end
end

function DebugVisualizationsChart:didMount()
	self.visualizationsUpdated = self.props.DebugVisualizationsData:Signal():Connect(function(visualizationData)
		self:setState({
			visualizationEntries = visualizationData
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

function DebugVisualizationsChart:willUnmount()
	self.visualizationsUpdated:Disconnect()
	self.visualizationsUpdated = nil
	self.canvasPosConnector:Disconnect()
	self.canvasPosConnector = nil
end

function DebugVisualizationsChart:render()
	local absScrollSize = self.state.absScrollSize
	local frameWidth = absScrollSize and math.max(absScrollSize.X, MIN_FRAME_WIDTH) or MIN_FRAME_WIDTH

	local entries, canvasHeight = populateEntries(self.props.searchTerm,
		self.props.typeFilters,
		self.state.visualizationEntries,
		self.state.reverseSort,
		self.state.canvasPos,
		absScrollSize,
		frameWidth,
		self.state.expandedEntry,
		self.getOnButtonPress,
		self.getLearnMorePress)

	local size = self.props.size
	local layoutOrder = self.props.layoutOrder

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		LayoutOrder = layoutOrder,
	}, {
		Header = constructHeader(self.onSortChanged, frameWidth),
		MainChart = Roact.createElement("ScrollingFrame", {
			Position = UDim2.fromOffset(0, HEADER_HEIGHT),
			Size = UDim2.new(1, 0, 1, - HEADER_HEIGHT),
			CanvasSize = UDim2.fromOffset(frameWidth, canvasHeight),
			ScrollBarThickness = 6,
			BackgroundColor3 = Constants.Color.BaseGray,
			BackgroundTransparency = 1,

			[Roact.Ref] = self.scrollingRef
		}, entries),
	})
end

return DataConsumer(DebugVisualizationsChart, "DebugVisualizationsData")

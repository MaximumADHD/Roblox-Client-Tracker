local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local HEADER_HEIGHT = Constants.NetworkFormatting.HeaderFrameHeight
local ENTRY_HEIGHT = Constants.NetworkFormatting.EntryFrameHeight
local SUMMARY_HEIGHT = Constants.NetworkFormatting.SummaryButtonHeight
local MIN_WIDTH = Constants.NetworkFormatting.MinFrameWidth

local BANNER_FONT_SIZE = Constants.DefaultFontSize.MainWindow
local BANNER_FONT = Constants.Font.MainWindowHeader

local INDENT = 30

local Components = script.Parent.Parent.Parent.Components
local BannerButton = require(Components.BannerButton)
local NetworkSummary = require(Components.Network.NetworkSummary)
local NetworkChart = require(Components.Network.NetworkChart)

local NetworkView = Roact.Component:extend("NetworkView")

function NetworkView:init(props)
	assert(props.targetNetworkData, "Make sure the NetworkData is assigned for this NetworkView")

	local currentData = props.targetNetworkData:getCurrentData()

	self.onSortChanged = function(sortType)
		local currSortType = props.targetNetworkData:getSortType()
		if sortType == currSortType then
			self:setState({
				reverseSort = not self.state.reverseSort
			})
		else
			props.targetNetworkData:setSortType(sortType)
			self:setState({
				reverseSort = false,
			})
		end
	end

	self.onSummaryButton = function(rbx, input)
		self:setState({
			summaryExpanded = not self.state.summaryExpanded,
		})
	end

	self.onDetailButton = function(rbx, input)
		self:setState({
			entriesExpanded = not self.state.entriesExpanded,
		})
	end

	self.ref = Roact.createRef()

	self.state = {
		httpSummaryTable = currentData.summaryTable,
		httpSummaryCount = currentData.summaryCount,
		httpEntryList = currentData.entryList,
		summaryExpanded = true,
		entriesExpanded = true,
		indexOfEntryExpanded = 0,
		reverseSort = false,
		absWidth = 0,
	}
end

function NetworkView:didUpdate()
	if self.ref.current then
		if self.state.absWidth ~= self.ref.current.AbsoluteSize.X then
			self:setState({
				absWidth = self.ref.current.AbsoluteSize.X,
			})
		end
	end
end

function NetworkView:didMount()
	local networkDataSignal = self.props.targetNetworkData:Signal()
	self.httpEntryAddedConnector = networkDataSignal:Connect(function(summaryTable, summaryCount, entryList)
		self:setState({
			httpSummaryTable = summaryTable,
			httpSummaryCount = summaryCount,
			httpEntryList = entryList,
		})
	end)

	if self.ref.current then
		self:setState({
			absWidth = self.ref.current.AbsoluteSize.X,
		})
	end
end

function NetworkView:willUnmount()
	self.httpEntryAddedConnector:Disconnect()
	self.httpEntryAddedConnector = nil
end

function NetworkView:render()
	local layoutOrder = self.props.layoutOrder
	local searchTerm = self.props.searchTerm
	local size = self.props.size

	local summaryExpanded = self.state.summaryExpanded
	local entriesExpanded = self.state.entriesExpanded
	local reverseSort = self.state.reverseSort
	local httpSummaryTable = self.state.httpSummaryTable
	local httpEntryList = self.state.httpEntryList
	local httpSummaryCount = self.state.httpSummaryCount

	local absWidth = math.max(MIN_WIDTH, self.state.absWidth)

	-- for both the detail button and summary button
	local summaryHeight = SUMMARY_HEIGHT * 2
	if summaryExpanded then
		summaryHeight = summaryHeight + httpSummaryCount * ENTRY_HEIGHT + HEADER_HEIGHT
	end
	local chartHeight
	if self.ref.current then
		chartHeight = self.ref.current.AbsoluteSize.Y - summaryHeight
	else
		chartHeight = size.Y.Offset - summaryHeight
	end
	chartHeight = math.max(0, chartHeight)

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		ClipsDescendants = true,

		LayoutOrder = layoutOrder,

		[Roact.Ref] = self.ref,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		SummaryButton = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, SUMMARY_HEIGHT),
			pos = UDim2.new(),
			isExpanded = summaryExpanded,
			onButtonPress = self.onSummaryButton,
			layoutOrder = 1,
		}, {
			Text = Roact.createElement("TextLabel", {
				Text = "Summary",
				TextColor3 = Constants.Color.Text,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = BANNER_FONT_SIZE,
				Font = BANNER_FONT,

				Size = UDim2.new(1,-INDENT,0,SUMMARY_HEIGHT),
				Position = UDim2.new(0, INDENT, 0, 0),
				BackgroundTransparency = 1,
			})
		}),
		Summary = summaryExpanded and Roact.createElement(NetworkSummary, {
			width = absWidth,
			httpSummaryTable = httpSummaryTable,
			layoutOrder = 2,
		}),
		DetailsButton = Roact.createElement(BannerButton, {
			size = UDim2.new(1, 0, 0, SUMMARY_HEIGHT),
			pos = UDim2.new(),
			isExpanded = entriesExpanded,
			onButtonPress = self.onDetailButton,
			layoutOrder = 3,
		}, {
			Text = Roact.createElement("TextLabel", {
				Text = "Details",
				TextColor3 = Constants.Color.Text,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = BANNER_FONT_SIZE,
				Font = BANNER_FONT,

				Size = UDim2.new(1,-INDENT,0,SUMMARY_HEIGHT),
				Position = UDim2.new(0, INDENT, 0, 0),
				BackgroundTransparency = 1,
			})
		}),
		Entries = entriesExpanded and Roact.createElement(NetworkChart, {
			httpEntryList = httpEntryList,
			chartHeight = chartHeight,
			width = absWidth,
			searchTerm = searchTerm,
			reverseSort = reverseSort,
			layoutOrder = 4,

			onSortChanged = self.onSortChanged
		})
	})
end

return NetworkView
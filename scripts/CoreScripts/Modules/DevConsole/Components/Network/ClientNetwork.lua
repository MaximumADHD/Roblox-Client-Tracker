local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local HeaderFrameHeight = Constants.ClientNetworkFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.ClientNetworkFormatting.EntryFrameHeight

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local NetworkSummary = require(Components.Network.NetworkSummary)
local NetworkChart = require(Components.Network.NetworkChart)

local ClientNetwork = Roact.Component:extend("ClientNetwork")

function ClientNetwork:init(props)
	local currentData = props.ClientNetworkData:getCurrentData()
	self.state = {
		httpSummaryTable = currentData.summaryTable,
		httpSummaryCount = currentData.summaryCount,
		httpEntryList = currentData.entryList,
		httpEntryCount = currentData.entryCount,
		summaryExpanded = true,
		indexOfEntryExpanded = 0
	}
end

function ClientNetwork:didMount()
	local networkDataSignal = self.props.ClientNetworkData:Signal()
	self.httpEntryAddedConnector = networkDataSignal:Connect(function(summaryTable, summaryCount, entryList, entryCount)
		self:setState({
			httpSummaryTable = summaryTable,
			httpSummaryCount = summaryCount,
			httpEntryList = entryList,
			httpEntryCount = entryCount,
		})
	end)
end

function ClientNetwork:willUnmount()
	self.httpEntryAddedConnector:Disconnect()
	self.httpEntryAddedConnector = nil
end

function ClientNetwork:render()
	local layoutOrder = self.props.layoutOrder

	local httpSummaryTable = self.state.httpSummaryTable
	local httpEntryList = self.state.httpEntryList
	local httpSummaryCount = self.state.httpSummaryCount

	-- we make the assumption that every entry is not expanded
	local summaryHeight = httpSummaryCount * EntryFrameHeight + HeaderFrameHeight

	return Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Constants.Color.BaseGray,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Summary = Roact.createElement(NetworkSummary, {
				httpSummaryTable = httpSummaryTable,
			}),
			Entries = Roact.createElement(NetworkChart,{
				httpEntryList = httpEntryList,
				summaryHeight = summaryHeight,
			})
		})
end

return DataConsumer(ClientNetwork, "ClientNetworkData")
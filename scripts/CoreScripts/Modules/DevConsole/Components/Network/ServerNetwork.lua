local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local DataConsumer = require(script.Parent.Parent.Parent.Components.DataConsumer)

local Constants = require(script.Parent.Parent.Parent.Constants)

local HeaderFrameHeight = Constants.ClientNetworkFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.ClientNetworkFormatting.EntryFrameHeight

local NetworkSummary = require(script.Parent.Parent.Parent.Components.Network.NetworkSummary)
local NetworkChart = require(script.Parent.Parent.Parent.Components.Network.NetworkChart)

local ServerNetwork = Roact.Component:extend("ServerNetwork")

function ServerNetwork:init()
	local currentData = self.props.ServerNetworkData:getCurrentData()
	self.state = {
		httpSummaryTable = currentData.summaryTable,
		httpSummaryCount = currentData.summaryCount,
		httpEntryList = currentData.entryList,
		httpEntryCount = currentData.entryCount,
		summaryExpanded = true,
		indexOfEntryExpanded = 0
	}
end

function ServerNetwork:didMount()
	local dataNetworkSignal = self.props.ServerNetworkData:Signal()
	self.httpEntryAddedConnector = dataNetworkSignal:Connect(function(summaryTable, summaryCount, entryList, entryCount)
		self:setState({
			httpSummaryTable = summaryTable,
			httpSummaryCount = summaryCount,
			httpEntryList = entryList,
			httpEntryCount = entryCount,
		})
	end)
end

function ServerNetwork:willUnmount()
	self.httpEntryAddedConnector:Disconnect()
	self.httpEntryAddedConnector = nil
end

function ServerNetwork:render()
	local layoutOrder = self.props.layoutOrder
	local searchTerm = self.props.searchTerm

	local httpSummaryTable = self.state.httpSummaryTable
	local httpEntryList = self.state.httpEntryList
	local httpSummaryCount = self.state.httpSummaryCount

	if #httpSummaryTable == 0 then
		return Roact.createElement("TextLabel",{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Text = "Awaiting Server Http",
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		})
	end

	-- we make the assumption that every entry is not expanded
	local summaryHeight = httpSummaryCount * EntryFrameHeight + HeaderFrameHeight

	return Roact.createElement("Frame", {
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
				summaryHeight = summaryHeight,
			}),
			Entries = Roact.createElement(NetworkChart,{
				httpEntryList = httpEntryList,
				summaryHeight = summaryHeight,
				searchTerm = searchTerm,
			})
		})

end

return DataConsumer(ServerNetwork, "ServerNetworkData")
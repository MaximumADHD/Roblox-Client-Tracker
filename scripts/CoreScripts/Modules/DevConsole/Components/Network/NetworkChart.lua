local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)

local ChartHeaderNames = Constants.ClientNetworkFormatting.ChartHeaderNames
local ChartCellWidths = Constants.ClientNetworkFormatting.ChartCellWidths
local HeaderFrameHeight = Constants.ClientNetworkFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.ClientNetworkFormatting.EntryFrameHeight

local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local GraphPadding = Constants.ClientNetworkFormatting.GraphPadding

local HeaderButton = require(script.Parent.Parent.Parent.Components.HeaderButton)
local CellLabel = require(script.Parent.Parent.Parent.Components.CellLabel)

local totalEntryWidth = 0
for _, cellWidth in pairs(ChartCellWidths) do
	totalEntryWidth = totalEntryWidth + cellWidth
end

-- create table of offsets and sizes for each cell
-- each of the first 5 cells has a fixed size
local currOffset = 0
local cellOffset = {}
local headerCellSize = {}
local entryCellSize = {}

for _, cellWidth in ipairs(ChartCellWidths) do
	table.insert(cellOffset,UDim2.new(0, currOffset + GraphPadding, 0, 0))
	table.insert(headerCellSize, UDim2.new(0, cellWidth - GraphPadding, 0, HeaderFrameHeight))
	table.insert(entryCellSize, UDim2.new(0, cellWidth - GraphPadding, 0, EntryFrameHeight))
	currOffset = currOffset + cellWidth
end

-- cell 1-5 are defined widths,
-- cell 6 pads out the remaining width in the row
table.insert(cellOffset,UDim2.new(0, currOffset + GraphPadding, 0, 0))
table.insert(headerCellSize, UDim2.new(1, -totalEntryWidth - GraphPadding, 0, HeaderFrameHeight))
table.insert(entryCellSize, UDim2.new(1, -totalEntryWidth - GraphPadding, 0, EntryFrameHeight))

local verticalOffsets = {}
for i, offset in ipairs(cellOffset) do
	verticalOffsets[i] = UDim2.new(offset.X.Scale, offset.X.Offset - GraphPadding,
		offset.Y.Scale, offset.Y.Offset)
end

local NetworkChart = Roact.Component:extend("NetworkChart")

function NetworkChart:render()
	local httpEntryList = self.props.httpEntryList or {}
	local summaryHeight = self.props.summaryHeight or 0
	local searchTerm = self.props.searchTerm
	local layoutOrder = self.props.layoutOrder

	local headerCells = {}
	for ind, name in ipairs(ChartHeaderNames) do
		headerCells[name] = Roact.createElement(HeaderButton, {
			text = name,
			size = headerCellSize[ind],
			pos = cellOffset[ind],
			sortfunction = function(rbx)
				-- to be defined
			end,
		})
	end

	local entries = {}
	local entryCount = 0
	entries["UIListLayout"] = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

	for _, entry in pairs(httpEntryList) do
		-- this is a very dumb way to implement search because every cycle will involve filtering out all entries
		-- a better way is to have a base list and a filtered list that is managed by at the dataprovider
		-- and passing in the search version when the search term is active
		local valid = true
		if searchTerm then
			valid = string.find(entry.RequestType:lower(), searchTerm:lower()) ~= nil or
					string.find(entry.URL:lower(), searchTerm:lower()) ~= nil
		end

		if not (entry.RequestType == "Default") and valid then
			-- insert header elements into a frame so that we can use the UIListLayout to keep everything in order
			table.insert(entries, Roact.createElement("Frame",{
				Size = UDim2.new(1, 0, 0, EntryFrameHeight),
				BackgroundTransparency = 1,
				LayoutOrder = entryCount,
			}, {
				Num = Roact.createElement(CellLabel,{
					text = entry.Num,
					size = entryCellSize[1],
					pos = cellOffset[1],
				}),
				Method = Roact.createElement(CellLabel,{
					text = entry.Method,
					size = entryCellSize[2],
					pos = cellOffset[2],
				}),
				Status = Roact.createElement(CellLabel,{
					text = entry.Status,
					size = entryCellSize[3],
					pos = cellOffset[3],
				}),
				Time = Roact.createElement(CellLabel,{
					text = string.format("%.3f", entry.Time),
					size = entryCellSize[4],
					pos = cellOffset[4],
				}),
				RequestType = Roact.createElement(CellLabel,{
					text = entry.RequestType,
					size = entryCellSize[5],
					pos = cellOffset[5],
				}),
				URL = Roact.createElement(CellLabel,{
					text = entry.URL,
					size = entryCellSize[6],
					pos = cellOffset[6],
				}),
				LowerHorizontalLine = Roact.createElement("Frame",{
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = LineColor,
					BorderSizePixel = 0,
				}),
			}))

			entryCount = entryCount + 1
		end
	end

	if entryCount == 0 then
		return Roact.createElement("TextLabel",{
			Size = UDim2.new(1, 0, 1, -summaryHeight),
			Text = "No Network Entries Found",
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		},{
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Header = Roact.createElement("Frame",{
				Size = UDim2.new(1, 0, 0, HeaderFrameHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			},headerCells),

			HorizontalLine_1 = Roact.createElement("Frame",{
				Size = UDim2.new(1, 0, 0, LineWidth),
				BackgroundColor3 = LineColor,
				BorderSizePixel = 0,
				BackgroundTransparency = 0,
				LayoutOrder = 2,
			}),
		})
	end

	local scrollingFrameHeight = entryCount*EntryFrameHeight

	-- construct main chart component using the Entries and header buttons
	local mainChart = Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	},{
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Header = Roact.createElement("Frame",{
			Size = UDim2.new(1, 0, 0, HeaderFrameHeight),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		},headerCells),

		HorizontalLine_1 = Roact.createElement("Frame",{
			Size = UDim2.new(1, 0, 0, LineWidth),
			BackgroundColor3 = LineColor,
			BorderSizePixel = 0,
			BackgroundTransparency = 0,
			LayoutOrder = 2,
		}),

		scrollingFrameEntries = Roact.createElement("ScrollingFrame",{
			Size = UDim2.new(1, 0, 1, -HeaderFrameHeight),
			CanvasSize = UDim2.new(1, 0, 0, scrollingFrameHeight),
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}, entries),
	})

	local finalFrame = {}
	finalFrame["MainChart"] = mainChart

	-- add vertical lines over components
	for i = 2, #verticalOffsets do
		local key = string.format("VerticalLine_%d",i)
		finalFrame[key] = Roact.createElement("Frame", {
			Size = UDim2.new(0, LineWidth, 1, 0),
			Position = verticalOffsets[i],
			BackgroundColor3 = LineColor,
			BorderSizePixel = 0,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, -summaryHeight),
		BackgroundTransparency = 1,
	}, finalFrame)
end

return NetworkChart
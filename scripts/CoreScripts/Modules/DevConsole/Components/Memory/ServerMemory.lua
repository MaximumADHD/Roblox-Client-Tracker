local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local StatsTreeComponent = require(Components.Memory.StatsTreeComponent)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local ValueCellWidth = Constants.MemoryFormatting.ValueCellWidth
local CellPadding = Constants.MemoryFormatting.CellPadding
local HeaderFrameHeight = Constants.MemoryFormatting.HeaderFrameHeight
local EntryFrameHeight = Constants.MemoryFormatting.EntryFrameHeight

local ServerMemory = Roact.Component:extend("ServerMemory")

-- helper function to traverse tree of elements
local function TreeViewItemTraversal(elementsList, currNode, depth)
	if not currNode then
		return 
	end

	local newRootElement = Roact.createElement(StatsTreeComponent, {
		stat = currNode,
		depth = depth,
	})
	table.insert(elementsList, newRootElement)

	local children = currNode:getChildren()
	if children then
		for _, stat in pairs(children) do
			TreeViewItemTraversal(elementsList, stat, depth + 1)
		end
	end
end

-- search through the tree build the tree up from the valid leaves and up.
local function SearchTreeViewItemTraversal(elementsList, currNode, depth, searchTerm, searchFound)
	if not currNode then return end

	local found = searchFound or string.find(currNode:getId():lower(), searchTerm:lower()) ~= nil

	if found then -- to avoid inputting the root node
		local newRootElement = Roact.createElement(StatsTreeComponent, {
			stat = currNode,
			depth = depth,
		})
		table.insert(elementsList, newRootElement)
	end

	local children = currNode:getChildren()
	if children then
		for _, stat in pairs(children) do
			SearchTreeViewItemTraversal(elementsList, stat, depth + 1, searchTerm, found)
		end
	end

	return found
end

function ServerMemory:didMount()
	local treeUpdatedSignal = self.props.ServerMemoryData:treeUpdatedSignal()
	self.treeViewItemConnector = treeUpdatedSignal:Connect(function(currentRootTreeViewItem)
		self:setState({
			rootTreeViewItem = currentRootTreeViewItem
		})
	end)
end

function ServerMemory:willUnmount()
	self.treeViewItemConnector:Disconnect()
	self.treeViewItemConnector = nil
end

local function constructHeader()
	local elements = {}

	elements["Name"] = Roact.createElement("TextButton", {
		Text = "Name",
		TextSize = Constants.DefaultFontSize.MainWindowHeader,
		TextColor3 = Constants.Color.Text,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, -ValueCellWidth - CellPadding, 0, HeaderFrameHeight),
		Position = UDim2.new(0, CellPadding, 0, 0),
		BackgroundTransparency = 1,
	})
	elements["ValueMB"] = Roact.createElement("TextLabel", {
		Text = "Value (MB)",
		TextSize = Constants.DefaultFontSize.MainWindowHeader,
		TextColor3 = Constants.Color.Text,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(0, ValueCellWidth - CellPadding, 0, HeaderFrameHeight),
		Position = UDim2.new(1, -ValueCellWidth + CellPadding, 0, 0),
		BackgroundTransparency = 1,
	})
	elements["TopHorizontal"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})
	elements["LowerHorizontal"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})

	elements["vertical"] = Roact.createElement("Frame",{
		Size = UDim2.new(0, LineWidth, 1, 0),
		Position = UDim2.new(1, -ValueCellWidth, 0, 0),
		BackgroundColor3 = LineColor,
		BorderSizePixel = 0,
	})

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, HeaderFrameHeight),
		BackgroundTransparency = 1,
	},elements)
end

function ServerMemory:render()
	local elements = {}
	local layoutOrder = self.props.layoutOrder
	local searchTerm = self.props.searchTerm

	if not self.state.rootTreeViewItem then
		return Roact.createElement("TextLabel",{
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Text = "Awaiting Server Stats",
			TextColor3 = Constants.Color.Text,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		})
	else
		-- either search or return entire tree
		if searchTerm ~= nil and searchTerm ~= "" then
			SearchTreeViewItemTraversal(elements, self.state.rootTreeViewItem, 0, searchTerm, false)
		else
			TreeViewItemTraversal(elements, self.state.rootTreeViewItem, 0)
		end
	end

	elements["UIListLayout"] = Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	})

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Header = constructHeader(),

		ScrollingFrame = Roact.createElement("ScrollingFrame",{
			Size = UDim2.new(1, 0, 1, -HeaderFrameHeight),
			Position = UDim2.new(0, 0, 0, HeaderFrameHeight),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = 1,
			ScrollBarThickness = 5,
			CanvasPosition = Vector2.new(0, 1),
			CanvasSize = UDim2.new(1, 0, 0, #elements * EntryFrameHeight),
		}, elements)
	})
end

return DataConsumer(ServerMemory, "ServerMemoryData")
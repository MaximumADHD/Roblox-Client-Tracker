local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Parent.Components
local DataConsumer = require(Components.DataConsumer)
local StatsTreeComponent = require(Components.Memory.StatsTreeComponent)
local HeaderButton = require(Components.HeaderButton)

local Constants = require(script.Parent.Parent.Parent.Constants)
local LineWidth = Constants.GeneralFormatting.LineWidth
local LineColor = Constants.GeneralFormatting.LineColor
local ValueCellWidth = Constants.MemoryFormatting.ValueCellWidth
local CellPadding = Constants.MemoryFormatting.CellPadding
local HeaderHeight = Constants.GeneralFormatting.HeaderFrameHeight
local EntryHeight = Constants.GeneralFormatting.EntryFrameHeight

local ClientMemory = Roact.Component:extend("ClientMemory")

-- helper function to traverse tree of elements
local function TreeViewItemTraversal(elementsList, currNode, depth)
	if not currNode then return end

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

local function SearchTreeViewItemTraversal(elementsList, currNode, depth, searchTerm)
	if not currNode then return end

	local found = string.find(currNode:getId():lower(), searchTerm:lower()) ~= nil

	local children = currNode:getChildren()
	if children then
		for _, stat in pairs(children) do
			found = SearchTreeViewItemTraversal(elementsList, stat, depth + 1, searchTerm) or found
		end
	end

	if found and depth > 0 then -- to avoid inputting the
		local newRootElement = Roact.createElement(StatsTreeComponent, {
			stat = currNode,
			depth = depth,
		})
		elementsList[#elementsList] = newRootElement
	end
	return found
end

function ClientMemory:init()
	self.state = {
		rootTreeViewItem = self.props.ClientMemoryData:GetRootTreeViewItem()
	}
end

function ClientMemory:didMount()
	local treeUpdatedSignal = self.props.ClientMemoryData:treeUpdatedSignal()
	self.treeViewItemConnector = treeUpdatedSignal:Connect(function(currentRootTreeViewItem)
		self:setState({ rootTreeViewItem = currentRootTreeViewItem })
	end)
end

function ClientMemory:willUnmount()
	self.treeViewItemConnector:Disconnect()
	self.treeViewItemConnector = nil
end

local function constructHeader()
	local elements = {}

	elements["Name"] = Roact.createElement(HeaderButton, {
		text = "Name",
		size = UDim2.new(1, -ValueCellWidth - CellPadding, 0, HeaderHeight),
		pos = UDim2.new(0, CellPadding, 0, 0),
	})
	elements["ValueMB"] = Roact.createElement(HeaderButton, {
		text = "Value (MB)",
		size = UDim2.new(0, ValueCellWidth - CellPadding, 0, HeaderHeight),
		pos = UDim2.new(1, -ValueCellWidth + CellPadding, 0, 0),
	})
	elements["TopHorizontal"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 1),
		BackgroundColor3 = LineColor,
	})
	elements["LowerHorizontal"] = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth),
		Position = UDim2.new(0, 0, 1, 0),
		BackgroundColor3 = LineColor,
	})
	elements["vertical"] = Roact.createElement("Frame",{
		Size = UDim2.new(0, LineWidth, 1, 0),
		Position = UDim2.new(1, -ValueCellWidth, 0, 0),
	})

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 0, HeaderHeight),
		BackgroundTransparency = 1,
	},elements)
end

function ClientMemory:render()
	local elements = {}
	local layoutOrder = self.props.layoutOrder
	local searchTerm = self.props.searchTerm

	if self.state.rootTreeViewItem then
		if searchTerm ~= nil and searchTerm ~= "" then
			SearchTreeViewItemTraversal(elements, self.state.rootTreeViewItem, 0, searchTerm)
		else
			TreeViewItemTraversal(elements, self.state.rootTreeViewItem, 0)
		end
	end
	table.insert(elements, Roact.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}))

	return Roact.createElement("Frame",{
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	},{
		Header = constructHeader(),
		Entries = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -HeaderHeight),
			Position = UDim2.new(0, 0, 0, HeaderHeight),
			BackgroundTransparency = 1,
			VerticalScrollBarInset = 1,
			ScrollBarThickness = 5,
			CanvasPosition = Vector2.new(0, 1),
			CanvasSize = UDim2.new(1, 0, 0, #elements * EntryHeight),
		},elements),
	})
end

return DataConsumer(ClientMemory, "ClientMemoryData")
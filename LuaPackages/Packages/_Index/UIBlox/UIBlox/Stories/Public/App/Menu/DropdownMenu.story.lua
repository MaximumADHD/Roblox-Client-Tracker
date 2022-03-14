local GuiService = game:GetService("GuiService")

local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local DropdownMenu = require(Packages.UIBlox.App.Menu.DropdownMenu)

local DropdownMenuOverviewComponent = Roact.Component:extend("DropdownMenuOverviewComponent")

function DropdownMenuOverviewComponent:init()
	self.rootRef = Roact.createRef()

	self.state = {
		screenSize = Vector2.new(0, 0),
		selectedValue = self.props.placeholder or "Select an Option",
	}
end

function DropdownMenuOverviewComponent:render()
	local cellData = {}
	for i = 1, self.props.DataSize do
		table.insert(cellData, { text = "Item " .. i })
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 100),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.rootRef,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 20),
		}),

		DropdownMenu = Roact.createElement(DropdownMenu, {
			placeholder = "Make a Choice",
			onChange = print,
			size = UDim2.new(0, 300, 0, 48),
			screenSize = self.state.screenSize,
			errorState = self.props.Error,
			cellDatas = cellData,
		}),
	})
end

function DropdownMenuOverviewComponent:watchLayerCollector(layerCollector)
	local screenSize = layerCollector.AbsoluteSize
	local inset, _ = GuiService:GetGuiInset()
	screenSize = screenSize + inset

	self:setState({
		screenSize = screenSize,
	})

	self.sizeConnection = layerCollector:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		screenSize = layerCollector.AbsoluteSize
		local topCornerInset, _ = GuiService:GetGuiInset()
		screenSize = screenSize + topCornerInset

		self:setState({
			screenSize = screenSize,
		})
	end)
end

function DropdownMenuOverviewComponent:didMount()
	local root = self.rootRef.current
	local layerCollector = root:FindFirstAncestorWhichIsA("LayerCollector")

	if layerCollector == nil then
		self.ancestryConnection = root.AncestryChanged:Connect(function()
			layerCollector = root:FindFirstAncestorWhichIsA("LayerCollector")
			if layerCollector ~= nil then
				self.ancestryConnection:Disconnect()
				self.ancestryConnection = nil
				self:watchLayerCollector(layerCollector)
			end
		end)
	else
		self:watchLayerCollector(layerCollector)
	end
end

function DropdownMenuOverviewComponent:willUnmount()
	if self.sizeConnection then
		self.sizeConnection:Disconnect()
		self.sizeConnection = nil
	end

	if self.ancestryConnection then
		self.ancestryConnection:Disconnect()
		self.ancestryConnection = nil
	end
end

return {
	stories = {
		DropdownMenuDefault = Roact.createElement(DropdownMenuOverviewComponent, {
			DataSize = 4,
			Error = false,
		}),

		DropdownMenuError = Roact.createElement(DropdownMenuOverviewComponent, {
			DataSize = 4,
			Error = true,
		}),

		DropdownMenuOverSize = Roact.createElement(DropdownMenuOverviewComponent, {
			DataSize = 10,
			Error = false,
		}),
	},
}

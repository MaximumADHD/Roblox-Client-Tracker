local LayerCollector = script.Parent
local UIBlox = LayerCollector.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local LayerCollectorContext = require(script.Parent.LayerCollectorContext)
local GuiService = game:GetService("GuiService")
local LayerCollectorProvider = Roact.PureComponent:extend("LayerCollectorProvider")

function LayerCollectorProvider:init()
	self.rootRef = Roact.createRef()
	self.state = {
		absoluteSize = Vector2.new(0, 0),
	}
end

function LayerCollectorProvider:watchLayerCollector(layerCollector)
	local absoluteSize = layerCollector.AbsoluteSize
	local ok, ignoreGuiInset = pcall(function()
		return layerCollector.IgnoreGuiInset
	end)
	if ok and ignoreGuiInset then
		local topCornerInset, _ = GuiService:GetGuiInset()
		absoluteSize = absoluteSize + topCornerInset
	end

	self:setState({
		absoluteSize = absoluteSize,
	})

	self.absoluteSizeConnection = layerCollector:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		absoluteSize = layerCollector.AbsoluteSize
		local ok, ignoreGuiInset = pcall(function()
			return layerCollector.IgnoreGuiInset
		end)
		if ok and ignoreGuiInset then
			local topCornerInset, _ = GuiService:GetGuiInset()
			absoluteSize = absoluteSize + topCornerInset
		end

		self:setState({
			absoluteSize = absoluteSize,
		})
	end)
end

function LayerCollectorProvider:didMount()
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

function LayerCollectorProvider:render()
	return Roact.createElement(LayerCollectorContext.Provider, {
		value = {
			absoluteSize = self.state.absoluteSize,
		},
	}, {
		LayerCollectorChildRef = Roact.createElement("Frame", {
			Visible = false,
			[Roact.Ref] = self.rootRef,
		}),
		Children = Roact.createFragment(self.props[Roact.Children]),
	})
end

return LayerCollectorProvider

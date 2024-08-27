local LayerCollector = script.Parent
local UIBlox = LayerCollector.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local LayerCollectorContext = require(script.Parent.LayerCollectorContext)
local GuiService = game:GetService("GuiService")
local LayerCollectorProvider = Roact.PureComponent:extend("LayerCollectorProvider")

local UIBloxConfig = require(UIBlox.UIBloxConfig)

function LayerCollectorProvider:init()
	self.rootRef = Roact.createRef()
	self.state = {
		absoluteSize = Vector2.new(0, 0),
		insets = {
			top = 0,
			left = 0,
			bottom = 0,
			right = 0,
		},
	}
end

function LayerCollectorProvider:watchLayerCollector(layerCollector: LayerCollector)
	local absoluteSize = layerCollector.AbsoluteSize
	local topLeftInset = Vector2.new(0, 0)
	local bottomRightInset = Vector2.new(0, 0)

	if layerCollector:IsA("ScreenGui") then
		local ok, ignoreGuiInset = pcall(function()
			return layerCollector.IgnoreGuiInset
		end)
		if ok and ignoreGuiInset then
			topLeftInset, bottomRightInset = GuiService:GetGuiInset()
			-- Remove absoluteSize line if flag is flipped on
			if not UIBloxConfig.fixLayerCollectorProviderAbsoluteSize then
				absoluteSize = absoluteSize + topLeftInset
			end
		end
	end

	self:setState({
		absoluteSize = absoluteSize,
		insets = {
			top = topLeftInset.Y,
			left = topLeftInset.X,
			bottom = bottomRightInset.Y,
			right = bottomRightInset.X,
		},
	})

	self.absoluteSizeConnection = layerCollector:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		absoluteSize = layerCollector.AbsoluteSize
		-- Remove entire block if flag is flipped on
		if not UIBloxConfig.fixLayerCollectorProviderAbsoluteSize then
			if layerCollector:IsA("ScreenGui") then
				local ok, ignoreGuiInset = pcall(function()
					return layerCollector.IgnoreGuiInset
				end)
				if ok and ignoreGuiInset then
					topLeftInset, bottomRightInset = GuiService:GetGuiInset()
					absoluteSize = absoluteSize + topLeftInset
				end
			end
		end

		self:setState({
			absoluteSize = absoluteSize,
			insets = {
				top = topLeftInset.Y,
				left = topLeftInset.X,
				bottom = bottomRightInset.Y,
				right = bottomRightInset.X,
			},
		})
	end)

	-- Follow up: listen to IgnoreGuiInset changed and ensure absoluteSizeConnection is cleaned up on unmount
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
			insets = self.state.insets,
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

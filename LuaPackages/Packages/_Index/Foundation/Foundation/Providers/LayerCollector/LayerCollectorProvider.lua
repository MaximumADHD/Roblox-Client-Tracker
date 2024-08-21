local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local LayerCollectorContext = require(script.Parent.LayerCollectorContext)
local GuiService = game:GetService("GuiService")

type Props = {
	children: React.ReactNode,
}

local function LayerCollectorProvider(props: Props)
	local rootRef = React.useRef(nil :: Frame?)
	local ancestryConnection, setAncestryConnection = React.useState(nil :: RBXScriptConnection?)
	local absoluteSizeConnection, setAbsoluteSizeConnection = React.useState(nil :: RBXScriptConnection?)
	local absoluteSize, setAbsoluteSize = React.useState(Vector2.new(0, 0))

	local watchLayerCollector = React.useCallback(function(layerCollector: LayerCollector)
		local absoluteSize = layerCollector.AbsoluteSize
		local ok, ignoreGuiInset = pcall(function()
			return layerCollector:IsA("ScreenGui") and layerCollector.IgnoreGuiInset
		end)
		if ok and ignoreGuiInset then
			local topCornerInset, _ = GuiService:GetGuiInset()
			absoluteSize = absoluteSize + topCornerInset
		end

		setAbsoluteSize(absoluteSize)

		setAncestryConnection(layerCollector:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			absoluteSize = layerCollector.AbsoluteSize
			local ok, ignoreGuiInset = pcall(function()
				return layerCollector:IsA("ScreenGui") and layerCollector.IgnoreGuiInset
			end)
			if ok and ignoreGuiInset then
				local topCornerInset, _ = GuiService:GetGuiInset()
				absoluteSize = absoluteSize + topCornerInset
			end

			setAbsoluteSize(absoluteSize)
		end))
	end, {})

	React.useEffect(function()
		local root = rootRef.current
		if root == nil then
			return
		end

		assert(root ~= nil, "LayerCollectorProvider must have a child Frame")
		local layerCollector = root:FindFirstAncestorWhichIsA("LayerCollector")

		if layerCollector == nil then
			ancestryConnection = root.AncestryChanged:Connect(function()
				layerCollector = root:FindFirstAncestorWhichIsA("LayerCollector")
				if layerCollector ~= nil then
					ancestryConnection:Disconnect()
					setAncestryConnection(nil :: any)
					watchLayerCollector(layerCollector)
				end
			end)
		else
			watchLayerCollector(layerCollector)
		end

		return function()
			if ancestryConnection then
				ancestryConnection:Disconnect()
				setAncestryConnection(nil :: any)
			end
			if absoluteSizeConnection then
				absoluteSizeConnection:Disconnect()
				setAbsoluteSizeConnection(nil :: any)
			end
		end
	end, { rootRef })

	return React.createElement(LayerCollectorContext.Provider, {
		value = {
			absoluteSize = absoluteSize,
		},
	}, {
		LayerCollectorChildRef = React.createElement("Frame", {
			Visible = false,
			ref = rootRef,
		}),
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return LayerCollectorProvider

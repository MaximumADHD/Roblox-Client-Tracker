-- TODO: Clean up with FFlagFoundationUnifiedScrimScrolling (replaced by Components/OverflowScrollContainer/useClippingRect)
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local function useClippingRect(guiRef: { current: Instance? }): React.Binding<Rect>
	local rect, setRect = React.useBinding(Rect.new(Vector2.zero, Vector2.zero))

	React.useEffect(function()
		if not guiRef.current then
			return
		end

		local ancestor: GuiBase2d? = nil
		local current = guiRef.current.Parent
		while current do
			if current:IsA("GuiObject") and current.ClipsDescendants then
				ancestor = current
				break
			end
			current = current.Parent
		end

		if not ancestor then
			local layerCollector = guiRef.current:FindFirstAncestorWhichIsA("LayerCollector")
			if layerCollector and layerCollector:IsA("GuiBase2d") then
				ancestor = layerCollector
			end
		end

		local function update()
			if ancestor then
				setRect(Rect.new(ancestor.AbsolutePosition, ancestor.AbsolutePosition + ancestor.AbsoluteSize))
			end
		end

		local connections: { RBXScriptConnection } = {}
		if ancestor then
			table.insert(connections, ancestor:GetPropertyChangedSignal("AbsolutePosition"):Connect(update))
			table.insert(connections, ancestor:GetPropertyChangedSignal("AbsoluteSize"):Connect(update))
		end

		update()

		return function()
			for _, conn in connections do
				conn:Disconnect()
			end
		end
	end, {})

	return rect
end

return useClippingRect

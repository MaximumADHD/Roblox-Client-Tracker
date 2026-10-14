local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)

local ScrollbarOverlay = {}

function ScrollbarOverlay.connect(scrollingFrame: ScrollingFrame, overlay: GuiObject, axis: Core.Axis): () -> ()
	local disconnected = false

	local function synchronize()
		if disconnected then
			return
		end
		local thickness = scrollingFrame.ScrollBarThickness
		overlay.Position = UDim2.fromOffset(
			if axis == Core.Axis.Y
					and scrollingFrame.VerticalScrollBarPosition == Enum.VerticalScrollBarPosition.Left
				then thickness
				else 0,
			0
		)
		overlay.Size = if axis == Core.Axis.X then UDim2.new(1, 0, 1, -thickness) else UDim2.new(1, -thickness, 1, 0)
	end

	synchronize()
	local thicknessConnection = scrollingFrame:GetPropertyChangedSignal("ScrollBarThickness"):Connect(synchronize)
	local positionConnection = scrollingFrame:GetPropertyChangedSignal("VerticalScrollBarPosition"):Connect(synchronize)

	return function()
		if disconnected then
			return
		end
		disconnected = true
		thicknessConnection:Disconnect()
		positionConnection:Disconnect()
	end
end

return ScrollbarOverlay

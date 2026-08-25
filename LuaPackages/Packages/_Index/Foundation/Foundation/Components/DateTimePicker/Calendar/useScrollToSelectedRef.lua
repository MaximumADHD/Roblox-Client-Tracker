local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Dropdown = require(Foundation.Components.Dropdown)

-- Centers the selected item in a Dropdown menu when it opens. The scrolling frame
-- only mounts while the menu is open, so we scroll from the ref callback and wait
-- until the menu is measured and clamped to its max height (canvas overflows the
-- window). Before that the window equals the full content height and the centering
-- math collapses to the top.
local function useScrollToSelectedRef(items: { Dropdown.DropdownItem }, selectedId: number)
	local connections = React.useRef(nil :: { RBXScriptConnection }?)
	local disconnect = React.useCallback(function()
		if connections.current then
			for _, connection in connections.current do
				connection:Disconnect()
			end
			connections.current = nil
		end
	end, {})

	local refCallback = React.useCallback(function(frame: ScrollingFrame?)
		disconnect()
		if not frame then
			return
		end

		local scrollingFrame = frame
		local function scrollToSelected(): boolean
			local count = #items
			local canvasHeight = scrollingFrame.AbsoluteCanvasSize.Y
			local windowHeight = scrollingFrame.AbsoluteWindowSize.Y
			if count == 0 or windowHeight <= 0 or canvasHeight <= windowHeight then
				return false
			end
			local rowHeight = canvasHeight / count
			local targetIndex = 0
			for index, item in items do
				if item.id == selectedId then
					targetIndex = index - 1
					break
				end
			end
			local centeredY = targetIndex * rowHeight - windowHeight / 2 + rowHeight / 2
			scrollingFrame.CanvasPosition = Vector2.new(0, math.clamp(centeredY, 0, canvasHeight - windowHeight))
			return true
		end

		if not scrollToSelected() then
			local function onSizeChanged()
				if scrollToSelected() then
					disconnect()
				end
			end
			connections.current = {
				scrollingFrame:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(onSizeChanged),
				scrollingFrame:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(onSizeChanged),
			}
		end
	end, { items, selectedId, disconnect } :: { unknown })

	React.useEffect(function()
		return disconnect
	end, { disconnect })

	return refCallback
end

return useScrollToSelectedRef

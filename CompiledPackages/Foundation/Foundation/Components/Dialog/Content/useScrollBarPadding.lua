local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local function useScrollBarPadding(): (number, (instance: ScrollingFrame) -> ())
	local scrollBarPadding, setScrollBarPadding = React.useState(0)

	local updateScrollBarPadding = React.useCallback(function(instance: ScrollingFrame)
		local hasOverflowY = instance.AbsoluteCanvasSize.Y > instance.AbsoluteSize.Y
		setScrollBarPadding(if hasOverflowY then instance.ScrollBarThickness else 0)
	end, {})

	return scrollBarPadding, updateScrollBarPadding
end

return useScrollBarPadding

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local isScrollingFrameOverflowingY = require(Foundation.Utility.isScrollingFrameOverflowingY)

local function useScrollBarPadding(): (boolean, number, (instance: ScrollingFrame) -> ())
	local hasOverflowY, setHasOverflowY = React.useState(false)
	local scrollBarPadding, setScrollBarPadding = React.useState(0)

	local updateScrollBarPadding = React.useCallback(function(instance: ScrollingFrame)
		local isOverflowingY = isScrollingFrameOverflowingY(instance, 1)

		setHasOverflowY(isOverflowingY)
		setScrollBarPadding(if isOverflowingY then instance.ScrollBarThickness else 0)
	end, {})

	return hasOverflowY, scrollBarPadding, updateScrollBarPadding
end

return useScrollBarPadding

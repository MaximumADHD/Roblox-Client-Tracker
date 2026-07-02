local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local isScrollingFrameOverflowingY = require(Foundation.Utility.isScrollingFrameOverflowingY)
local useTokens = require(Foundation.Providers.Style.useTokens)

local function useScrollBarPadding(): (boolean, React.Binding<number>, (instance: ScrollingFrame) -> ())
	local hasOverflowY, setHasOverflowY = React.useState(false)
	local tokens = useTokens()
	local scrollBarPaddingBinding, setScrollBarPadding = React.useBinding(0)

	local updateScrollBarPadding = React.useCallback(function(instance: ScrollingFrame)
		local isOverflowingY = isScrollingFrameOverflowingY(instance, 1)
		setHasOverflowY(isOverflowingY)
		setScrollBarPadding(if isOverflowingY then tokens.Size.Size_150 else 0)
	end, { tokens.Size.Size_150 })

	return hasOverflowY, scrollBarPaddingBinding, updateScrollBarPadding
end

return useScrollBarPadding

local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
local RectPlacement = require(Root.ReactAdapter.Private.RectPlacement)
local useRecyclingScope = require(Root.ReactAdapter.Private.useRecyclingScope)

export type RectSlot = RectPlacement.RectSlot
export type RectPlacement = RectPlacement.RectPlacement

local function useRectPlacement(container: RectPlacement.ContainerRef): RectPlacement
	local scope = useRecyclingScope("useRectPlacement")
	local containerRef = React.useRef(container)
	containerRef.current = container
	local placement = React.useState(function()
		local internal = RectPlacement.new(scope, function()
			return containerRef.current
		end)
		return {
			internal = internal,
			public = table.freeze({
				sync = internal.sync,
			}),
		}
	end)

	-- A layout cleanup runs before ReactRoblox destroys the container, so
	-- pooled Frames are detached rather than destroyed with it.
	React.useLayoutEffect(function()
		return placement.internal.releaseAll
	end, { placement })

	return placement.public
end

return useRectPlacement

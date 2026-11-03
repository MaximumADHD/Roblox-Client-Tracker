local Root = script:FindFirstAncestor("ViewRecyclerReact")

local CompositionPlacement = require(Root.ReactAdapter.Private.CompositionPlacement)
local Core = require(Root.Parent.ViewRecycler)
local React = require(Root.Parent.React)
local RecyclingRoot = require(script.Parent.RecyclingRoot)

local function useCompositionPlacement(
	root: RecyclingRoot.RecyclingRoot,
	maxPoolSize: number?,
	diagnostics: Core.DiagnosticCallback?
): CompositionPlacement.CompositionPlacement
	local placement: CompositionPlacement.CompositionPlacement = React.useState(function()
		local recyclingScope = root.getScope({
			maxPoolSize = maxPoolSize,
			diagnostics = diagnostics,
		})
		return CompositionPlacement.new(recyclingScope)
	end)

	React.useLayoutEffect(function()
		return function()
			placement.destroy()
		end
	end, { placement })

	return placement
end

return useCompositionPlacement

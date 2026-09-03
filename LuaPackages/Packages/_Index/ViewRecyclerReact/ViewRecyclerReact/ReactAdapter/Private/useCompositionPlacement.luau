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
	local version, setVersion = React.useState(0)
	local placement: CompositionPlacement.CompositionPlacement = React.useState(function()
		local recyclingScope = root.getScope({
			maxPoolSize = maxPoolSize,
			diagnostics = diagnostics,
		})
		return CompositionPlacement.new(recyclingScope, function()
			setVersion(function(currentVersion)
				return currentVersion + 1
			end)
		end)
	end)
	local recyclingScope = root.getScope({
		maxPoolSize = maxPoolSize,
		diagnostics = diagnostics,
	})

	React.useEffect(function()
		recyclingScope.setMaxPoolSize(maxPoolSize)
	end, { maxPoolSize, recyclingScope })

	React.useLayoutEffect(function()
		placement.flush()
	end, { placement, version } :: { unknown })

	React.useLayoutEffect(function()
		return function()
			placement.destroy()
		end
	end, { placement })

	return placement
end

return useCompositionPlacement

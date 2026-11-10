local Root = script:FindFirstAncestor("ViewRecyclerReact")

local CompositionPlacement = require(Root.ReactAdapter.Private.CompositionPlacement)
local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)
local Signals = require(Root.Parent.Signals)

type RecyclableViewType = RecyclableViewRegistry.RecyclableViewType<any>

local function selectViewType<S>(
	selector: S | Signals.getter<S>,
	resolve: (S) -> RecyclableViewType?
): CompositionPlacement.ViewTypeSignal
	if type(selector) == "function" then
		local select = selector :: Signals.getter<S>
		return Signals.createComputed(function(scope)
			return resolve(select(scope))
		end)
	end
	-- A plain getter, because Signals would call a view type stored in a
	-- Signal as an initializer.
	local fixed = resolve(selector :: S)
	return function(_scope: Signals.scope)
		return fixed
	end
end

return selectViewType

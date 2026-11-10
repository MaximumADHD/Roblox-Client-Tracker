-- Joins the nearest Recycling scope (ADR 0032) and returns its Core scope.
-- The scope is not destroyed while a joined consumer is mounted.
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local React = require(Root.Parent.React)
local RecyclingScopeContext = require(script.Parent.RecyclingScopeContext)

local function useRecyclingScope(consumerName: string): any
	local context = React.useContext(RecyclingScopeContext)
	assert(context ~= nil, `{consumerName} requires a RecyclingScope`)
	local scope = React.useState(function()
		return context.getScope()
	end)
	React.useEffect(function()
		return context.registerConsumer()
	end, { context })
	return scope
end

return useRecyclingScope

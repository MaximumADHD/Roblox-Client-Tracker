local Root = script:FindFirstAncestor("ViewRecyclerReact")

local Layout = require(Root.Parent.ViewRecycler).Layout
local React = require(Root.Parent.React)

local function useManagedLayout(createLayout, dependencies)
	local layout = React.useMemo(createLayout, dependencies)
	React.useEffect(function()
		return function()
			layout.destroy()
		end
	end, { layout })
	return layout
end

local function useUniformLayout(options: Layout.UniformOptions): Layout.Runtime
	return useManagedLayout(function()
		return Layout.uniform(options)
	end, {
		options.itemLength,
		options.spacing,
		options.paddingBefore,
		options.paddingAfter,
	})
end

local function useMeasuredLayout(options: Layout.MeasuredOptions?): Layout.Runtime
	local layout = React.useMemo(function()
		return Layout.measured(options)
	end, {})
	React.useEffect(function()
		return function()
			layout.destroy()
		end
	end, { layout })
	return layout
end

return {
	useMeasuredLayout = useMeasuredLayout,
	useUniformLayout = useUniformLayout,
}

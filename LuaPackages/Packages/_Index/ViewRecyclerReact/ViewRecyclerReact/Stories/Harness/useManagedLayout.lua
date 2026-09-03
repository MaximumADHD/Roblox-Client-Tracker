local function useManagedLayout(React, createLayout, dependencies)
	local layout = React.useMemo(createLayout, dependencies)
	React.useEffect(function()
		return layout.destroy
	end, { layout })
	return layout
end

return useManagedLayout

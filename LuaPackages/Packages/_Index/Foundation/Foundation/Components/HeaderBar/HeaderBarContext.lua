local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local HeaderBarContext = React.createContext({
	testId = "",
})

export type HeaderBarProviderProps = {
	testId: string,
	children: React.ReactNode,
}

local function HeaderBarProvider(props: HeaderBarProviderProps): React.Node
	local contextValue = React.useMemo(function()
		return {
			testId = props.testId,
		}
	end, { props.testId })

	return React.createElement(HeaderBarContext.Provider, {
		value = contextValue,
	}, props.children)
end

return {
	Context = HeaderBarContext,
	Provider = HeaderBarProvider,
}

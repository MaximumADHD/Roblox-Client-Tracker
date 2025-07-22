local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

type PresentationContextValue = {
	isIconSize: boolean,
	isInverse: boolean,
}

local PresentationContext = React.createContext({
	isIconSize = false,
	isInverse = false,
})

local function usePresentationContext(): PresentationContextValue
	return React.useContext(PresentationContext)
end

return {
	Provider = PresentationContext.Provider,
	usePresentationContext = usePresentationContext,
}

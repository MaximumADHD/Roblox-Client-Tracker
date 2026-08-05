local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local React = require(Packages.React)

type ColorNamespace = ColorNamespace.ColorNamespace

type PresentationContextValue = {
	isIconSize: boolean,
	colorNamespace: ColorNamespace,
}

local PresentationContext = React.createContext({
	isIconSize = false,
	colorNamespace = ColorNamespace.Color,
})

local function usePresentationContext(): PresentationContextValue
	return React.useContext(PresentationContext)
end

return {
	Provider = PresentationContext.Provider,
	usePresentationContext = usePresentationContext,
}

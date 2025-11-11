local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ColorMode = require(Foundation.Enums.ColorMode)

type ColorMode = ColorMode.ColorMode

type PresentationContextValue = {
	isIconSize: boolean,
	colorMode: ColorMode,
}

local PresentationContext = React.createContext({
	isIconSize = false,
	colorMode = ColorMode.Color,
})

local function usePresentationContext(): PresentationContextValue
	return React.useContext(PresentationContext)
end

return {
	Provider = PresentationContext.Provider,
	usePresentationContext = usePresentationContext,
}

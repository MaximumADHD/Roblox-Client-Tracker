local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)

local context = React.createContext(nil :: Types.ColorStyle?)

-- Returns background set by the nearest ancestor context or default background (tokens.Color.Surface.Surface_0) if nothing set.
function useBackgroundStyle(): Types.ColorStyle
	local value = React.useContext(context)
	local tokens = useTokens()
	if value == nil then
		return tokens.Color.Surface.Surface_0
	end
	return value
end

return {
	useBackgroundStyle = useBackgroundStyle,
	Provider = context.Provider,
}

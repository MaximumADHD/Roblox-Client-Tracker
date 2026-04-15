local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local None = Dash.None
-- typeof(None) is any, it's a known issue
local context = React.createContext(None :: StyleSheet | typeof(None))

local function useStyleSheet(): StyleSheet?
	local value = React.useContext(context)
	return if value == None then nil else value
end

return {
	Provider = context.Provider,
	useStyleSheet = useStyleSheet,
}

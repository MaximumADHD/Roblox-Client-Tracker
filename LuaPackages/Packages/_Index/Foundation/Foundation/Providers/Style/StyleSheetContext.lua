local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local Dash = require(Packages.Dash)

local Flags = require(Foundation.Utility.Flags)

local None = if Flags.FoundationMigrateCryoToDash then Dash.None else Cryo.None

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

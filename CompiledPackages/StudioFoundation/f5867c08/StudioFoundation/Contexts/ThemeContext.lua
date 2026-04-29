local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)

local SharedPluginConstants = require(Packages.SharedPluginConstants)

local Types = require(Main.Types)

local Context = React.createContext(SharedPluginConstants.DEFAULT_STUDIO_THEME_NAME :: Types.ThemeName)

return table.freeze({
	Context = Context,
	Provider = Context.Provider,
})

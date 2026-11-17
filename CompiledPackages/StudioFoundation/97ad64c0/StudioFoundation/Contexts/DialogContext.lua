local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)

export type DialogContextType = {
	id: string,
	pluginGui: PluginGui,
}

local DialogContext = React.createContext<<DialogContextType?>>(nil)
DialogContext.displayName = "DialogContext"

return table.freeze({
	Context = DialogContext,
	Provider = DialogContext.Provider,
})

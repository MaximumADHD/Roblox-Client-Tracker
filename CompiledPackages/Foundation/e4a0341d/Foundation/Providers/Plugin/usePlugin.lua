local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local useContext = React.useContext

local PluginContext = require(script.Parent.PluginContext)

local function usePlugin(): Plugin?
	local plugin = useContext(PluginContext)
	return if plugin == React.None then nil else plugin
end

return usePlugin

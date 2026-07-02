local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local useContext = React.useContext

local PluginContext = require(script.Parent.PluginContext)
local isPluginElevated = require(script.Parent.isPluginElevated)

local function usePlugin(): (Plugin?, boolean)
	local plugin = useContext(PluginContext)
	if plugin and plugin ~= React.None then
		return plugin, isPluginElevated(plugin)
	end
	return nil, false
end

return usePlugin

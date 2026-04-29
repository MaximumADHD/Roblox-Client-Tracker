local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local useContext = React.useContext

local Flags = require(Foundation.Utility.Flags)

local PluginContext = require(script.Parent.PluginContext)
local isPluginElevated = require(script.Parent.isPluginElevated)

-- TODO: When cleaning up FFlagFoundationFixUserLevelPlugins make
-- sure to change `boolean?` to `boolean`
local function usePlugin(): (Plugin?, boolean?)
	local plugin = useContext(PluginContext)

	if Flags.FoundationFixUserLevelPlugins then
		if plugin and plugin ~= React.None then
			return plugin, isPluginElevated(plugin)
		end
		return nil, false
	else
		return if plugin == React.None then nil else plugin
	end
end

return usePlugin

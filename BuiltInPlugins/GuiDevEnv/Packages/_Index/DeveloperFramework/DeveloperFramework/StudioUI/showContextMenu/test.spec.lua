return function()
	local _showContextMenu = require(script.Parent)
	local ContextServices = script.Parent.Parent.Parent.ContextServices
	local Framework = script.Parent.Parent.Parent
	local _Plugin = ContextServices.Plugin
	local PluginActions = ContextServices.PluginActions

	local _MockPlugin = Framework.TestHelpers.Instances.MockPlugin

	local function mockPlugin()
		--return Plugin.new(MockPlugin.new())
	end
	
	local function _callback(actionId, extraArgs)
		return
	end

	local function _getActions()
		return {
			id = {id = "id",text = "test"}
		}
	end

	local function _getPluginActions(plugin)
		return {id = PluginActions.new(plugin, {id = "id",text = "test"})}
	end
	
	-- Example usages. showAsync call in showContextMenu makes it difficult to unit test
	it("should support generic tables", function()
		local _plugin = mockPlugin()
		--showContextMenu(plugin, "test", getActions(), callback, nil)
	end)
	
	it("should support PluginActions", function()
		local _plugin = mockPlugin()
		--showContextMenu(plugin, "test", getPluginActions(plugin), callback, nil)
	end)

end
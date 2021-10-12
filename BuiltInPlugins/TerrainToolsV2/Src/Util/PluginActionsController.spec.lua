local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local MockPlugin = Framework.TestHelpers.Instances.MockPlugin

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local PluginActionsController = require(script.Parent.PluginActionsController)

return function()
	it("should be creatable", function()
		expect(PluginActionsController.new(MockPlugin.new(), {
			{
				id = "test",
				text = "test",
			}
		})).to.be.ok()
	end)

	it("should require a plugin instance", function()
		expect(function()
			PluginActionsController.new(nil)
		end).to.throw()
	end)
end

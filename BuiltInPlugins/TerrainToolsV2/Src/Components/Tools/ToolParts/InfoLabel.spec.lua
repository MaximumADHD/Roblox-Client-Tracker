-- TODO delete this file when FFlagDevFrameworkMigrateTextLabels is removed
local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local InfoLabel = require(script.Parent.InfoLabel)

return function()
	if not FFlagDevFrameworkMigrateTextLabels then
		it("should create and destroy without errors", function()
			local element = MockProvider.createElementWithMockContext(InfoLabel)
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end
end

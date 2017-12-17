return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(SectionHeader, {
			text = "Best Section Ever!",
			width = 100,
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end
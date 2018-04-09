return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local Line = require(Modules.LuaApp.Components.Line)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(Line)
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end
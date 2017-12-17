return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local SectionHeaderWithSeeAll = require(Modules.LuaApp.Components.SectionHeaderWithSeeAll)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(SectionHeaderWithSeeAll, {
			text = "Best Section Ever!",
			width = 100,

			onActivated = function()
				print("Hi!")
			end
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end
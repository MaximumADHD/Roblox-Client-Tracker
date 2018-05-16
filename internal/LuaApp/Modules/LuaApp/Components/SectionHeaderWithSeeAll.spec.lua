return function()
	local SectionHeaderWithSeeAll = require(script.parent.SectionHeaderWithSeeAll)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Roact = require(Modules.Common.Roact)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)

	it("should create and destroy without errors", function()
		local element = mockServices({
			header = Roact.createElement(SectionHeaderWithSeeAll, {
				text = "Best Section Ever!",
				width = 100,

				onActivated = function() end
			}),
		})
		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end
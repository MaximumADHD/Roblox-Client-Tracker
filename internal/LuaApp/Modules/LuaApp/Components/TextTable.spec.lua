return function()
	local TextTable = require(script.parent.TextTable)

	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)

	it("should create and destroy without errors when empty", function()
		local root = mockServices({
			element = Roact.createElement(TextTable, {
				table = {},
			}),
		})
		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)

	it("should create and destroy without errors with data", function()
		local root = mockServices({
			element = Roact.createElement(TextTable, {
				table = {
					{ "this", "is" },
					{ "a", "test" },
				},
			}),
		})
		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)

	it("should create and destroy without errors with data and props", function()
		local root = mockServices({
			element = Roact.createElement(TextTable, {
				table = {
					{ "this", "is" },
					{ "a", "test", "hehe" },
				},
				majorProps = {
					{ BackgroundTransparency = 0 },
				},
			}),
		})
		local instance = Roact.reify(root)
		Roact.teardown(instance)
	end)
end
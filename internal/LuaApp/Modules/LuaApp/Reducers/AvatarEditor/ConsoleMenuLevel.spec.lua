return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local ConsoleMenuLevel = require(Modules.LuaApp.Reducers.AvatarEditor.ConsoleMenuLevel)
	local SetConsoleMenuLevel = require(Modules.LuaApp.Actions.SetConsoleMenuLevel)

	it("should be 0 by default", function()
		local state = ConsoleMenuLevel(nil, {})

		expect(state).to.equal(0)
	end)

	it("should be changed using SetConsoleMenuLevel", function()
		local state = ConsoleMenuLevel(nil, {})

		state = ConsoleMenuLevel(state, SetConsoleMenuLevel(2))

		expect(state).to.equal(2)
	end)

	it("should be unchanged by other actions", function()
		local state = ConsoleMenuLevel(nil, {})

		state = ConsoleMenuLevel(state, {
			type = "Do the thing!",
			menuLevel = 1
		})

        expect(state).to.equal(0)
	end)
end
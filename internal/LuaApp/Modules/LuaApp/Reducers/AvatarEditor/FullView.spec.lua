return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local FullView = require(Modules.LuaApp.Reducers.AvatarEditor.FullView)
	local ToggleAvatarEditorFullView = require(Modules.LuaApp.Actions.ToggleAvatarEditorFullView)
	local SetAvatarEditorFullView = require(Modules.LuaApp.Actions.SetAvatarEditorFullView)

	it("should be false by default", function()
		local state = FullView(nil, {})

		expect(state).to.equal(false)
	end)

	it("should be flipped using ToggleAvatarEditorFullView", function()
		local state = FullView(nil, {})

		state = FullView(state, ToggleAvatarEditorFullView())

		expect(state).to.equal(true)

		state = FullView(state, ToggleAvatarEditorFullView())

		expect(state).to.equal(false)
	end)

	it("should be changed using SetAvatarEditorFullView", function()
		local state = FullView(nil, {})

		state = FullView(state, SetAvatarEditorFullView(true))

		expect(state).to.equal(true)

		state = FullView(state, SetAvatarEditorFullView(false))

		expect(state).to.equal(false)
	end)

	it("should be unchanged by other actions", function()
		local state = FullView(nil, {})

		state = FullView(state, {
			type = "Do the thing!",
			fullView = true
		})

		expect(state).to.equal(false)
	end)
end
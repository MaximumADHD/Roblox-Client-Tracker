return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local AvatarType = require(Modules.LuaApp.Reducers.AvatarEditor.AvatarType)
	local SetAvatarType = require(Modules.LuaApp.Actions.SetAvatarType)
	local ToggleAvatarType = require(Modules.LuaApp.Actions.ToggleAvatarType)

	it("should be nil by default", function()
		local state = AvatarType(nil, {})

		expect(state).never.to.be.ok()
	end)

	it("should be changed using SetAvatarType", function()
		local state = AvatarType(nil, SetAvatarType("R6"))

		expect(state).to.equal("R6")
	end)

    it("should be flipped using ToggleAvatarType", function()
		local state = AvatarType(nil, SetAvatarType("R6"))
		state = AvatarType(state, ToggleAvatarType())

        expect(state).to.equal("R15")

        state = AvatarType(state, ToggleAvatarType())

        expect(state).to.equal("R6")
    end)

	it("should be unchanged by other actions", function()
		local state = AvatarType(nil, {})

		state = AvatarType(state, {
			type = "Do the thing!",
			avatarType = "R15"
		})

		expect(state).never.to.be.ok()
	end)
end
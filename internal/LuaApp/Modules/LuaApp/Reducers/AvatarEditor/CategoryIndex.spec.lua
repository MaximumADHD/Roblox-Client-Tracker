return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local CategoryIndex = require(Modules.LuaApp.Reducers.AvatarEditor.CategoryIndex)
	local SelectCategory = require(Modules.LuaApp.Actions.SelectCategory)
	local ResetCategory = require(Modules.LuaApp.Actions.ResetCategory)

	it("should be nil by default", function()
		local state = CategoryIndex(nil, {})

		expect(state).never.to.be.ok()
	end)

	it("should be changed using SelectCategory", function()
		local state = CategoryIndex(nil, SelectCategory(2))

		expect(state).to.equal(2)
	end)

    it("should be reset using ResetCategory", function()
        local state = CategoryIndex(nil, SelectCategory(2))
		state = CategoryIndex(state, ResetCategory())

		expect(state).never.to.be.ok()
    end)

	it("should be unchanged by other actions", function()
		local state = CategoryIndex(nil, {
			type = "Do the thing!",
			categoryIndex = 1
		})

		expect(state).never.to.be.ok()
	end)
end
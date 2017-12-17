return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local TabsInfo = require(Modules.LuaApp.Reducers.AvatarEditor.TabsInfo)
	local SelectCategoryTab = require(Modules.LuaApp.Actions.SelectCategoryTab)
	local ResetCategory = require(Modules.LuaApp.Actions.ResetCategory)

	it("should be an empty table by default", function()
		local state = TabsInfo(nil, {})

		expect(state).to.be.a("table")
        expect(next(state)).never.to.be.ok()
	end)

	it("should be updated using SelectCategoryTab", function()
		local state = TabsInfo(nil, SelectCategoryTab(3, 2, Vector2.new(0, 100)))

		expect(state).to.be.a("table")
        expect(state[3]).to.be.a("table")
		expect(state[3].TabIndex).to.equal(2)
		expect(state[3].Position).to.equal(Vector2.new(0, 100))
	end)

    it("should be reset using ResetCategory", function()
        local state = TabsInfo(nil, SelectCategoryTab(3, 2, Vector2.new(0, 100)))
        state = TabsInfo(state, ResetCategory())

        expect(state).to.be.a("table")
        expect(next(state)).never.to.be.ok()
    end)

	it("should be unchanged by other actions", function()
		local state = TabsInfo(nil, {
            type = "Do the thing!",
			categoryIndex = 3,
			tabIndex = 2,
			position = Vector2.new(0, 100)
		})

        expect(state).to.be.a("table")
        expect(next(state)).never.to.be.ok()
	end)
end
return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenu = script.Parent.Parent
	local SetInspectedUserInfo = require(InGameMenu.Actions.InspectAndBuy.SetInspectedUserInfo)
	local inspectAndBuy = require(script.Parent.inspectAndBuy)

	it("should have default values.", function()
		local state = inspectAndBuy(nil, {})
		local assets = state.Assets
		local bundles = state.Bundles
		local selectedItem = state.SelectedItem
		local userId = state.UserId
		local displayName = state.DisplayName
		expect(assets).toEqual({})
		expect(bundles).toEqual({})
		expect(selectedItem).toEqual({})
		expect(userId).toEqual(0)
		expect(displayName).toEqual("")
	end)

	describe("SetInspectedUserInfo", function()
		it("should add user info", function()
			local state = inspectAndBuy(nil, SetInspectedUserInfo(1234, "displayNameTest"))
			expect(state.UserId).toEqual(1234)
			expect(state.DisplayName).toEqual("displayNameTest")
		end)
	end)
end

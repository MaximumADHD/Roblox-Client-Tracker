return function()
	local PrivilegeSettingsStateReducer = require(script.Parent.PrivilegeSettingsState)
	local Actions = script.Parent.Parent.Actions

	local FetchPrivilegeSettings = require(Actions.FetchPrivilegeSettings)
	local SetPrivilegeSettings = require(Actions.SetPrivilegeSettings)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = PrivilegeSettingsStateReducer(nil, {})
            expect(state).to.be.a("table")
            expect(state.isRequesting).to.equal(false)
		end)
	end)

	describe("Action FetchPrivilegeSettings", function()
		it("should set isRequesting to true in the store", function()
			local action = FetchPrivilegeSettings()
			local state = PrivilegeSettingsStateReducer({}, action)

			expect(state).to.be.a("table")
			expect(state.isRequesting).to.equal(true)
		end)
	end)

	describe("Action SetPrivilegeSettings", function()
		it("should set privilege settings, lastUpdated and reset isRequesting to false in the store", function()
			local action = SetPrivilegeSettings({Multiplayer = {}, SharedContent = {}})
			local state = PrivilegeSettingsStateReducer({}, action)

			expect(state).to.be.a("table")
			expect(state.Multiplayer).to.be.a("table")
			expect(state.SharedContent).to.be.a("table")
			expect(state.lastUpdated).to.be.a("number")
			expect(state.isRequesting).to.equal(false)
		end)

		it("should set privilege settings, lastUpdated to nil and reset isRequesting to false when SetPrivilegeSettings with nil", function()
			local action = SetPrivilegeSettings({Multiplayer = {}, SharedContent = {}})
			local state = PrivilegeSettingsStateReducer({}, action)

			action = SetPrivilegeSettings()
			state = PrivilegeSettingsStateReducer(state, action)

			expect(state).to.be.a("table")
			expect(state.Multiplayer).never.to.be.ok()
			expect(state.SharedContent).never.to.be.ok()
			expect(state.lastUpdated).never.to.be.ok()
			expect(state.isRequesting).to.equal(false)
        end)
	end)
end
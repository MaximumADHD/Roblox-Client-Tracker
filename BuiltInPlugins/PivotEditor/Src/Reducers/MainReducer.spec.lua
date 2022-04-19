return function()
	local Plugin = script.Parent.Parent.Parent

	local Framework = require(Plugin.Packages.Framework)

	local TestHelpers = Framework.TestHelpers
	local testImmutability = TestHelpers.testImmutability

	local SelectInvalidSelection = require(Plugin.Src.Actions.SelectInvalidSelection)
	local SelectObjectForEditing = require(Plugin.Src.Actions.SelectObjectForEditing)

	local EditingMode = require(Plugin.Src.Utility.EditingMode)
	local StatusMessage = require(Plugin.Src.Utility.StatusMessage)
	local TestHelper = require(Plugin.Src.Utility.TestHelper)

	local MainReducer = require(script.Parent.MainReducer)

	it("should return its expected default state", function()
		local store = TestHelper.createTestStore()
		local state = store:getState()
		expect(state).to.be.ok()
		expect(state.targetObject).to.equal(nil)
		expect(state.editingMode).to.equal(EditingMode.None)
		expect(state.statusMessage).to.equal(StatusMessage.None)
	end)

	describe("SelectObjectForEditing", function()
		it("should begin editing", function()
			local targetObject = Instance.new("Part")
			local state = MainReducer(nil, SelectObjectForEditing(targetObject))

			expect(state).to.be.ok()
			expect(state.targetObject).to.equal(targetObject)
			expect(state.editingMode).to.equal(EditingMode.Transform)
			expect(state.statusMessage).to.equal(StatusMessage.None)
		end)

		it("should preserve immutability", function()
			local targetObject = Instance.new("Part")
			local immutabilityPreserved = testImmutability(MainReducer, SelectObjectForEditing(targetObject))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SelectInvalidSelection", function()
		it("should begin editing", function()
			local invalidStatus = StatusMessage.NoSelection
			local state = MainReducer(nil, SelectInvalidSelection(invalidStatus))

			expect(state).to.be.ok()
			expect(state.targetObject).to.equal(nil)
			expect(state.editingMode).to.equal(EditingMode.None)
			expect(state.statusMessage).to.equal(invalidStatus)
		end)

		it("should preserve immutability", function()
			local invalidStatus = StatusMessage.NoSelection
			local immutabilityPreserved = testImmutability(MainReducer, SelectInvalidSelection(invalidStatus))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
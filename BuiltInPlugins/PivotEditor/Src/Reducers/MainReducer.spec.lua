return function()
	local Plugin = script.Parent.Parent.Parent

	local EditingMode = require(Plugin.Src.Utility.EditingMode)
	local StatusMessage = require(Plugin.Src.Utility.StatusMessage)

	local MainReducer = require(script.Parent.MainReducer)
	local BeginSelectingPivot = require(Plugin.Src.Actions.BeginSelectingPivot)
	local DoneSelectingPivot = require(Plugin.Src.Actions.DoneSelectingPivot)
	local SelectObjectForEditing = require(Plugin.Src.Actions.SelectObjectForEditing)

	describe("Initialization", function()
		it("should have the right type of values", function()
			local initial = MainReducer(nil, {})

			expect(EditingMode.isEnumValue(initial.editingMode)).to.be.ok()
			expect(type(initial.statusMessage)).to.equal("string")
		end)
	end)

	describe("Action handling", function()
		it("should begin selecting a pivot", function()
			local state = MainReducer(nil, BeginSelectingPivot(
				EditingMode.SelectSurface, StatusMessage.TestMessage))

			expect(state.editingMode).to.equal(EditingMode.SelectSurface)
			expect(state.statusMessage).to.equal(StatusMessage.TestMessage)
			expect(state.targetObject).to.equal(nil)
		end)

		it("should have no message after selecting a pivot", function()
			local state = MainReducer(nil, BeginSelectingPivot(
				EditingMode.SelectSurface, StatusMessage.TestMessage))
			state = MainReducer(state, DoneSelectingPivot())

			expect(state.editingMode).to.equal(EditingMode.Transform)
			expect(state.statusMessage).to.equal(StatusMessage.None)
			expect(state.targetObject).to.equal(nil)
		end)

		it("should not be able to begin editing with Transform mode", function()
			expect(function()
				MainReducer(nil, BeginSelectingPivot(
					EditingMode.Transform, StatusMessage.TestMessage))
			end).to.throw()
		end)

		it("should be in transform mode after selecting an object", function()
			local object = Instance.new("Part")
			local state = MainReducer(nil, SelectObjectForEditing(object))

			expect(state.editingMode).to.equal(EditingMode.Transform)
			expect(state.statusMessage).to.equal(StatusMessage.None)
			expect(state.targetObject).to.equal(object)
		end)
	end)
end
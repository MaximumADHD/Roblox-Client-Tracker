return function()
	local Selection = game:GetService("Selection")

	local Plugin = script.Parent.Parent.Parent

	local getFFlagPivotEditorFixTests = require(Plugin.Src.Flags.getFFlagPivotEditorFixTests)
	if not getFFlagPivotEditorFixTests() then
		return
	end

	local Roact = require(Plugin.Packages.Roact)

	local SelectObjectForEditing = require(Plugin.Src.Actions.SelectObjectForEditing)

	local TestHelper = require(Plugin.Src.Utility.TestHelper)
	local TestRunner = require(Plugin.Src.Utility.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local SelectionUpdaterBound = require(Plugin.Src.RoduxComponents.SelectionUpdaterBound)

	local store = nil

	beforeEach(function()
		store = TestHelper.createTestStore()
	end)

	afterEach(function()
		store:destruct()
		TestHelper.cleanTempInstances()
	end)

	it("should deselect an existing selection", function()
		Selection:Set({})

		local oldPart = TestHelper.createInstance("Part")
		store:dispatch(SelectObjectForEditing(oldPart))
		expect(store:getState().targetObject).to.equal(oldPart)

		runComponentTest(
			Roact.createElement(SelectionUpdaterBound),
			function(container, store)
				expect(store:getState().targetObject).to.equal(nil)
			end,
			store
		)
	end)

	it("should select a not selected object", function()
		local part = TestHelper.createInstance("Part")
		Selection:Set({part})

		expect(store:getState().targetObject).to.equal(nil)

		runComponentTest(
			Roact.createElement(SelectionUpdaterBound),
			function(container, store)
				expect(store:getState().targetObject).to.equal(part)
			end,
			store
		)
	end)
end

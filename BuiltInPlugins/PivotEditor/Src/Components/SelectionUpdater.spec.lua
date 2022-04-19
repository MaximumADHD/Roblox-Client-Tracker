return function()
	local Selection = game:GetService("Selection")

	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)

	local TestHelper = require(Plugin.Src.Utility.TestHelper)
	local TestRunner = require(Plugin.Src.Utility.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local SelectionUpdater = require(Plugin.Src.Components.SelectionUpdater)

	local function createTestElement(currentTargetObject)
		local calls = {
			selectObjectForEditing = 0,
			selectInvalidSelection = 0,
		}
		local element = Roact.createElement(SelectionUpdater, {
			targetObject = currentTargetObject,
			selectObjectForEditing = function(object)
				calls.selectObjectForEditing = calls.selectObjectForEditing + 1
				calls.selectObjectForEditingArg = object
			end,
			selectInvalidSelection = function()
				calls.selectInvalidSelection = calls.selectInvalidSelection + 1
			end,
		})
		return element, calls
	end

	afterEach(function()
		TestHelper.cleanTempInstances()
	end)

	it("should create and destroy without errors", function()
		local element = createTestElement()
		runComponentTest(element)
	end)

	describe("Initialization", function()
		it("should update when mounted", function()
			local a = TestHelper.createInstance("Part")
			Selection:Set({a})

			local element, calls = createTestElement()
			runComponentTest(
				element,
				function()
					expect(calls.selectObjectForEditing).to.equal(1)
					expect(calls.selectObjectForEditingArg).to.equal(a)
					expect(calls.selectInvalidSelection).to.equal(0)
				end
			)
		end)

		it("should not update if the state is already up to date", function()
			local a = TestHelper.createInstance("Part")
			Selection:Set({a})

			local element, calls = createTestElement(a)
			runComponentTest(
				element,
				function()
					expect(calls.selectObjectForEditing).to.equal(0)
					expect(calls.selectInvalidSelection).to.equal(0)
				end
			)
		end)

		it("should clear the state if nothing is selected", function()
			local a = TestHelper.createInstance("Part")
			Selection:Set({})

			local element, calls = createTestElement(a)
			runComponentTest(
				element,
				function()
					expect(calls.selectObjectForEditing).to.equal(0)
					expect(calls.selectInvalidSelection).to.equal(1)
				end
			)
		end)

		it("should clear the state if too many objects are selected", function()
			local a = TestHelper.createInstance("Part")
			local b = TestHelper.createInstance("Part")
			Selection:Set({a, b})

			local element, calls = createTestElement(a)
			runComponentTest(
				element,
				function()
					expect(calls.selectObjectForEditing).to.equal(0)
					expect(calls.selectInvalidSelection).to.equal(1)
				end
			)
		end)
	end)

	describe("Selection Changes", function()
		it("should clear the selection when nothing becomes selected", function()
			local a = TestHelper.createInstance("Part")
			Selection:Set({a})

			local element, calls = createTestElement(a)
			runComponentTest(
				element,
				function()
					Selection:Set({})
					expect(calls.selectObjectForEditing).to.equal(0)
					expect(calls.selectInvalidSelection).to.equal(1)
				end
			)
		end)

		it("should set the selection when a valid selection becomes selected", function()
			local a = TestHelper.createInstance("Part")
			local b = TestHelper.createInstance("Part")
			Selection:Set({a})

			local element, calls = createTestElement()
			runComponentTest(
				element,
				function()
					Selection:Set({b})
					expect(calls.selectObjectForEditing).to.equal(2)
					expect(calls.selectObjectForEditingArg).to.equal(b)
					expect(calls.selectInvalidSelection).to.equal(0)
				end
			)
		end)
	end)
end
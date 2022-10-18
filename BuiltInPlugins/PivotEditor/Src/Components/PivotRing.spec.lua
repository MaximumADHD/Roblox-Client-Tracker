return function()
	local Plugin = script.Parent.Parent.Parent

	local Roact = require(Plugin.Packages.Roact)

	local TestHelper = require(Plugin.Src.Utility.TestHelper)
	local TestRunner = require(Plugin.Src.Utility.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local PivotRing = require(script.Parent.PivotRing)

	local draggerContext = nil

	beforeEach(function()
		draggerContext = TestHelper.createTestDraggerContext()
		draggerContext:setCamera(CFrame.new(0, 0, 10))
	end)

	afterEach(function()
		TestHelper.cleanTempInstances()
	end)

	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(PivotRing, {
			DraggerContext = draggerContext,
			Pivot = CFrame.new(),
		}))
	end)

	it("should render correctly", function()
		runComponentTest(
			Roact.createElement(PivotRing, {
				DraggerContext = draggerContext,
				Pivot = CFrame.new(),
			}),
			function(container)
				local main = container:FindFirstChildOfClass("ScreenGui")
				expect(main).to.be.ok()
				local imageLabel = main:FindFirstChildOfClass("ImageLabel")
				expect(imageLabel).to.be.ok()
			end
		)
	end)

	it("should not render offscreen pivot", function()
		runComponentTest(
			Roact.createElement(PivotRing, {
				DraggerContext = draggerContext,
				Pivot = CFrame.new(10000, 0, 0),
			}),
			function(container)
				local main = container:FindFirstChildOfClass("ScreenGui")
				expect(main).never.to.be.ok()
			end
		)
	end)
end

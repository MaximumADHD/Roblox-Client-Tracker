return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local FalloffSlider = require(script.Parent.FalloffSlider)

	local function render()
		return Roact.createElement(FalloffSlider, {
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = 1,
		})
	end

	it("should create and destroy without errors", function()
		runComponentTest(render())
	end)

	it("should render correctly", function ()
		runComponentTest(
			render(),
			function(container)
				local frame = container:FindFirstChildOfClass("ImageLabel")
				expect(frame).to.be.ok()
			end
		)
	end)
end
--!strict
return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local CurveEditorController = require(script.Parent.CurveEditorController)

	local function createTestCurveEditorController()
		return Roact.createElement(MockWrapper, {}, {
			Cubic = Roact.createElement(CurveEditorController, {
				TrackPadding = 0,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestCurveEditorController()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end

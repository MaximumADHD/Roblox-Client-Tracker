return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)
	local ReduceKeyframesDialog = require(script.Parent.ReduceKeyframesDialog)

	local function createTestReduceKeyframesDialog(container)
		return Roact.createElement(MockWrapper, {
			Container = container,
		}, {
			ReduceKeyframesDialog = Roact.createElement(ReduceKeyframesDialog, {
				OnClose = function() end,
				Tracks = {}
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestReduceKeyframesDialog()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")

		local element = createTestReduceKeyframesDialog(container)

		local instance = Roact.mount(element, container)
		local frame = container:FindFirstChildOfClass("ScreenGui")
		expect(frame).to.be.ok()
		Roact.unmount(instance)
	end)
end

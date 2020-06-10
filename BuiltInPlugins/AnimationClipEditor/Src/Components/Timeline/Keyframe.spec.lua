return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local Keyframe = require(script.Parent.Keyframe)

	local function createTestKeyframe(enabled, selected)
		return Roact.createElement(MockWrapper, {}, {
			keyframe = Roact.createElement(Keyframe),
		})
	end

	itSKIP("should create and destroy without errors", function()
		local element = createTestKeyframe()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	itSKIP("should render correctly", function ()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestKeyframe(), container)
		local frame = container:FindFirstChildOfClass("ImageButton")

		expect(frame).to.be.ok()

		Roact.unmount(instance)
	end)
end
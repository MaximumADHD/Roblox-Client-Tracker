return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local AnimationClipMenu = require(script.Parent.AnimationClipMenu)

	local function createTestAnimationClipMenu()
		return Roact.createElement(MockWrapper, {}, {
			Menu = Roact.createElement(AnimationClipMenu, {
				ShowMenu = false,
			})
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestAnimationClipMenu()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
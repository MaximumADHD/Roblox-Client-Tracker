local GenericRoot = script.Parent
local IAPExperienceRoot = GenericRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local mockStyleAndLocalizationComponent = require(IAPExperienceRoot.Utility.mockStyleAndLocalizationComponent)

local Animator = require(GenericRoot.Animator)

return function()
	describe("lifecycle", function()
		it("should create and destroy without errors (shouldAnimate:false)(shouldShow:false)", function()
			local element = mockStyleAndLocalizationComponent({
				Animator = Roact.createElement(Animator, {
					shouldAnimate = false,
					shouldShow = false,
					onShown = function() end,
					onHidden = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should create and destroy without errors (shouldAnimate:true)(shouldShow:false)", function()
			local element = mockStyleAndLocalizationComponent({
				Animator = Roact.createElement(Animator, {
					shouldAnimate = true,
					shouldShow = false,
					onShown = function() end,
					onHidden = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should create and destroy without errors (shouldAnimate:false)(shouldShow:true)", function()
			local element = mockStyleAndLocalizationComponent({
				Animator = Roact.createElement(Animator, {
					shouldAnimate = false,
					shouldShow = true,
					onShown = function() end,
					onHidden = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should create and destroy without errors (shouldAnimate:true)(shouldShow:true)", function()
			local element = mockStyleAndLocalizationComponent({
				Animator = Roact.createElement(Animator, {
					shouldAnimate = true,
					shouldShow = true,
					onShown = function() end,
					onHidden = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end

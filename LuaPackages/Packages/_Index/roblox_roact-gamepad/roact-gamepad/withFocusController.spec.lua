return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)
	local asFocusable = require(script.Parent.asFocusable)
	local withFocusController = require(script.Parent.withFocusController)

	describe("withFocusController", function()
		it("should give a nil focusController if no focusRoot exists in the tree", function()
			local FocusableFrame = asFocusable("Frame")

			local tree = Roact.mount(withFocusController(function(focusController)
				expect(focusController).to.equal(nil)
				return Roact.createElement(FocusableFrame)
			end))

			Roact.unmount(tree)
		end)
	end)
end
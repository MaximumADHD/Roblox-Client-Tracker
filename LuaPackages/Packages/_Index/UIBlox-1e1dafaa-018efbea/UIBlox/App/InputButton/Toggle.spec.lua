return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local Toggle = require(script.Parent.Toggle)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				TestToggle = Roact.createElement(Toggle, {
					onActivated = function()
					end,
				})
			})
			local instance = Roact.mount(element, nil, "Toggle")
			Roact.unmount(instance)
		end)
	end)
end
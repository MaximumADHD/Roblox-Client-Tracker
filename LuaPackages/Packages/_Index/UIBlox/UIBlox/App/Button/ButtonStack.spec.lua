local ButtonRoot = script.Parent
local AppRoot = ButtonRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local ButtonStack = require(script.Parent.ButtonStack)

local DEFAULT_REQUIRED_PROPS = {
	buttons = {
		{
			props = {
				text = "test",
				onActivated = function() end,
			},
		}
	},
}

return function()
	describe("lifecycle", function()
		it("should mount and unmount button stacks without issue", function()
			local tree = mockStyleComponent(
				Roact.createElement(ButtonStack, DEFAULT_REQUIRED_PROPS)
			)
			local handle = Roact.mount(tree)
			Roact.unmount(handle)
		end)
	end)
end
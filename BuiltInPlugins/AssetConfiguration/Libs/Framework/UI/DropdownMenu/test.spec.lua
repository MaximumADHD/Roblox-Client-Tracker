return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local provideMockContext = require(Framework.TestHelpers.provideMockContext)

	local DropdownMenu = require(script.Parent)

	it("should create and destroy without errors", function()
		local element = provideMockContext(nil, {
			Host = Roact.createElement("Frame", {
				Size = UDim2.fromOffset(32, 32),
			}, {
				Menu = Roact.createElement(DropdownMenu, {
					Size = UDim2.fromOffset(200, 300),
					Items = { "a", "b", "c", "d" },
					OnItemActivated = function() end,
					OnFocusLost = function() end,
					ShouldShow = true
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
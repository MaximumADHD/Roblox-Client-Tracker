return function()
	local root = script.Parent.Parent.Parent
	local components = root.src.components

	local Roact = require(root.lib.Roact)
	local Rodux = require(root.lib.Rodux)

	local MockWrapper = require(root.src.utils.MockWrapper)

	local ErrorPrompt = require(components.ErrorPrompt)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(function(state) return state end, {
			error = {
				name = "",
				message = "",
			}
		})

		local element = Roact.createElement(ErrorPrompt, {})

		local instance = Roact.mount(Roact.createElement(MockWrapper, { store = store }, { element = element }))
		Roact.unmount(instance)
	end)
end
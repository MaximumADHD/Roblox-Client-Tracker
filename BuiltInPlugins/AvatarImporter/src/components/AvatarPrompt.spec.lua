return function()
	local root = script.Parent.Parent.Parent
	local components = root.src.components

	local Roact = require(root.Packages.Roact)
	local Rodux = require(root.Packages.Rodux)

	local MockWrapper = require(root.src.utils.MockWrapper)

	local AvatarPrompt = require(components.AvatarPrompt)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(function(state) return state end, {})

		local element = Roact.createElement(AvatarPrompt, {})

		local instance = Roact.mount(Roact.createElement(MockWrapper, { store = store }, { element = element }))
		Roact.unmount(instance)
	end)
end
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")
return function()
	local root = script.Parent.Parent.Parent
	local components = root.src.components

	local Roact = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Roact) else require(root.Packages._Old.lib.Roact)
	local Rodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Rodux) else require(root.Packages._Old.lib.Rodux)

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
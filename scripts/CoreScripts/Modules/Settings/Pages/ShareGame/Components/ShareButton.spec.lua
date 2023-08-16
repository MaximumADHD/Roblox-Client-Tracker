return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox


	local ShareButton = require(script.Parent.ShareButton)

	it("should mount", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			ShareButton = Roact.createElement(ShareButton),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end

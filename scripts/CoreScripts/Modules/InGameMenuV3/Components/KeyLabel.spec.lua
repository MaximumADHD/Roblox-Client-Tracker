return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local KeyLabel = require(script.Parent.KeyLabel)


	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			KeyLabel = Roact.createElement(KeyLabel, {
				input = Enum.KeyCode.A,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors for keys with special display strings", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			KeyLabel = Roact.createElement(KeyLabel, {
				input = Enum.KeyCode.LeftShift,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors for keys with special display images", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			KeyLabel = Roact.createElement(KeyLabel, {
				input = Enum.KeyCode.Up,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end

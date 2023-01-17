return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local ObjectViewport = require(script.Parent.ObjectViewport)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("ObjectViewport", function()
		it("should create and destroy without errors", function()
			local model = Instance.new("Model")

			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				ObjectViewport = Roact.createElement(ObjectViewport, {
					model = model,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end

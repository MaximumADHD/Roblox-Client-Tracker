return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local InteractionFrame = require(script.Parent.InteractionFrame)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("InteractionFrame", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				SharedInteractionFrame = Roact.createElement(InteractionFrame, {
					panByPixels = function() end,
					rotateByPixels = function() end,
					setAngularVelocityByPixels = function() end,
					zoomToPoint = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end

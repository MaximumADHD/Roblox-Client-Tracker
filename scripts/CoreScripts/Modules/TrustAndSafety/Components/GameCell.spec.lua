--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local TnsModule = script.Parent.Parent
	local Dependencies = require(TnsModule.Dependencies)
	local Localization = Dependencies.Localization
	local LocalizationProvider = require(Dependencies.LocalizationProvider)

	local GameCell = require(script.Parent.GameCell)


	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				GameCell = Roact.createElement(GameCell, {
					gameId = 0,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)

local Localization = require(CorePackages.Workspace.Packages.RobloxAppLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local MuteToggles = require(script.Parent.MuteToggles)

return function()
	it("should mount and unmount without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				MuteToggles = Roact.createElement(MuteToggles),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
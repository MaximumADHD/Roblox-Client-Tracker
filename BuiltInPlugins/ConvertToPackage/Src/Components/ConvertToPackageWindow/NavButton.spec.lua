return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local Framework = require(Plugin.Packages.Framework)
	local SharedFlags = Framework.SharedFlags
	local FFlagRemoveUILibraryRoundFrame = SharedFlags.getFFlagRemoveUILibraryRoundFrame()

	if not FFlagRemoveUILibraryRoundFrame then
		local NavButton = require(Plugin.Src.Components.ConvertToPackageWindow.NavButton)

		it("should create and destroy without errors", function()
			local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
				NavButton = Roact.createElement(NavButton, {
				}),
			})
			local instance = Roact.mount(mockServiceWrapper)
			Roact.unmount(instance)
		end)
	end
end

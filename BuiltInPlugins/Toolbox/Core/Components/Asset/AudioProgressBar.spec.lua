return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local AudioProgressBar = require(Plugin.Core.Components.Asset.AudioProgressBar)

	local ASSET_ID = 123

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {}, {
			AudioProgressBar = Roact.createElement(AudioProgressBar, {
				assetId = ASSET_ID,
				currentSoundId = ASSET_ID,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end

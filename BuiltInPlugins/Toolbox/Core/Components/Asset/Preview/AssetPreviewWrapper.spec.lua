return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)

	local function createTestWrapper()
		-- TODO: This causes an unhandled rejection because PreviewModelGetter tries to call real backend APIs on mount
		local element = Roact.createElement(MockWrapper, {}, {
			AssetPreviewWrapper = Roact.createElement(AssetPreviewWrapper, {
				assetData = {
					Asset = {
						Id = 1,
					},
				},
				previewFuncs = {}
			})
		})

		return Roact.mount(element)
	end

	it("should create and destroy without errors", function()
		local instance = createTestWrapper()
		Roact.unmount(instance)
	end)
end
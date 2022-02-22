return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local FFlagToolboxHideReportFlagForCreator = game:GetFastFlag("ToolboxHideReportFlagForCreator")
	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)

	local function createTestWrapper()
		-- TODO: This causes an unhandled rejection because PreviewModelGetter tries to call real backend APIs on mount
		local element = Roact.createElement(MockWrapper, {}, {
			AssetPreviewWrapper = Roact.createElement(AssetPreviewWrapper, {
				assetData = {
					Asset = {
						Id = 1,
						Creator = FFlagToolboxHideReportFlagForCreator and {
							Id = 1,
						} or nil,
					},
				},
				previewFuncs = {},
			}),
		})

		return Roact.mount(element)
	end

	it("should create and destroy without errors", function()
		local instance = createTestWrapper()
		Roact.unmount(instance)
	end)
end

return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local AssetDetailThumbnail = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.AssetDetailThumbnail)

	local FFlagInspectAndBuyV2Enabled = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2Enabled)

	local props = {
		selectedItem = {
			assetId = "123",
			numFavorites = 20,
			creatorName = "Brandon",
			description = "testDesc",
			name = "testName"
		}
	}
	local wrappedComponent = withInGameMenuV3Providers(AssetDetailThumbnail, props)

	if FFlagInspectAndBuyV2Enabled then
		describe("AssetDetailThumbnail", function()
			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)
		end)
	end
end

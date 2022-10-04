return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local AssetDetailFavorite = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.AssetDetailFavorite)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local props = {
		LayourOrder = 1,
		numFavorites = 20
	}

	local bundleProps = {
		LayoutOrder = 1,
		numFavorites = 20,
		bundleInfo = {
			numFavorites = 40,
		},
	}
	local wrappedComponent = withInGameMenuV3Providers(AssetDetailFavorite, props)
	local wrappedComponentForBundle = withInGameMenuV3Providers(AssetDetailFavorite, bundleProps)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("AssetDetailFavorite", function()
			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should display correct number of asset favorites", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local numberPath = path:cat(XPath.new("TextSection.Number"))
					local number = Element.new(numberPath)
					expect(number:waitForRbxInstance(1)).to.be.ok()
					expect(number:getAttribute("Text")).to.equal("20")

				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should display correct number of bundle favorites", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local numberPath = path:cat(XPath.new("TextSection.Number"))
					local number = Element.new(numberPath)
					expect(number:waitForRbxInstance(1)).to.be.ok()
					expect(number:getAttribute("Text")).to.equal("40")

				end,
				wrappedComponentForBundle, Reducer, {}, nil)
			end)
		end)
	end
end

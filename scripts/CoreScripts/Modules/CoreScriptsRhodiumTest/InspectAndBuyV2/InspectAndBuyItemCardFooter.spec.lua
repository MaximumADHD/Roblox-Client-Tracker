return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local InspectAndBuyItemCardFooter = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.InspectAndBuyItemCardFooter)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local props = {
		asset = {
			assetId = "111",
			name = "TestName",
			price = 200,
			assetTypeId = "8",
			productId = 123,
			owned = false,
			isForSale = true,
		},
		price = 200,
		isPriceLoaded = true,
		productId = 123,
	}

	local propsOwned = {
		asset = {
			assetId = "111",
			name = "TestName",
			price = 200,
			assetTypeId = "8",
			productId = 123,
			owned = true,
		},
		price = 200,
		isPriceLoaded = true,
		productId = 123,
	}

	local propsShimmer = {
		isPriceLoaded = false,
	}
	local wrappedComponent = withInGameMenuV3Providers(InspectAndBuyItemCardFooter, props)
	local wrappedComponentOwned = withInGameMenuV3Providers(InspectAndBuyItemCardFooter, propsOwned)
	local wrappedComponentShimmer = withInGameMenuV3Providers(InspectAndBuyItemCardFooter, propsShimmer)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("InspectAndBuyItemCard", function()
			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should display price and icon if not owned", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local iconPath = path:cat(XPath.new("Icon"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.be.ok()

					local textPath = path:cat(XPath.new("TextLabel"))
					local text = Element.new(textPath)
					expect(text:waitForRbxInstance(1)).to.be.ok()
					expect(text:getAttribute("Text")).to.equal("200")
				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should display icon and empty text if owned", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local iconPath = path:cat(XPath.new("Icon"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.be.ok()

					local textPath = path:cat(XPath.new("TextLabel"))
					local text = Element.new(textPath)
					expect(text:waitForRbxInstance(1)).to.be.ok()
					expect(text:getAttribute("Text")).to.equal("")
				end,
				wrappedComponentOwned, Reducer, {}, nil)
			end)

			it("should shimmer if price not loaded", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local shimmerPath = path:cat(XPath.new("Shimmer"))
					local shimmer = Element.new(shimmerPath)
					expect(shimmer:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponentShimmer, Reducer, {}, nil)
			end)
		end)
	end
end

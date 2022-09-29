return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local InspectAndBuyItemCard = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.InspectAndBuyItemCard)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local props = {
		asset = {
			assetId = "111",
			name = "TestName",
			price = 200,
			assetTypeId = "8",
			productId = 123,
			owned = true,
		}
	}
	local wrappedComponent = withInGameMenuV3Providers(InspectAndBuyItemCard, props)
	local wrappedComponentShimmer = withInGameMenuV3Providers(InspectAndBuyItemCard)

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

			it("should render all aspects of the card", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local thumbnailPath = path:cat(XPath.new("Thumbnail"))
					local thumbnail = Element.new(thumbnailPath)
					expect(thumbnail:waitForRbxInstance(1)).to.be.ok()

					local footerPath = path:cat(XPath.new("FooterContainer"))
					local footer = Element.new(footerPath)
					expect(footer:waitForRbxInstance(1)).to.be.ok()

					local iconPath = footerPath:cat(XPath.new("Footer.Icon"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.be.ok()

					local textPath = footerPath:cat(XPath.new("Footer.TextLabel"))
					local text = Element.new(textPath)
					expect(text:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should render shimmer if not given info", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local thumbnailPath = path:cat(XPath.new("Thumbnail"))
					local thumbnail = Element.new(thumbnailPath)
					expect(thumbnail:waitForRbxInstance(1)).to.be.ok()

					local footerPath = path:cat(XPath.new("FooterContainer"))
					local footer = Element.new(footerPath)
					expect(footer:waitForRbxInstance(1)).to.be.ok()

					local iconPath = footerPath:cat(XPath.new("Footer.Shimmer"))
					local icon = Element.new(iconPath)
					expect(icon:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponentShimmer, Reducer, {}, nil)
			end)
		end)
	end
end

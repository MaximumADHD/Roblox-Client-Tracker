return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local ItemInfoList = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.ItemInfoList)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local props = {
		creatorText = "testCreator",
		genreText = "All",
		itemType = Enum.AvatarItemType.Asset,
		itemSubType = "67",
		LayoutOrder = 1,
	}
	local wrappedComponent = withInGameMenuV3Providers(ItemInfoList, props)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("ItemInfoList", function()
			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should render the data properly", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local creatorPath = path:cat(XPath.new("InfoRow1.InfoDataTextLabel"))
					local creator = Element.new(creatorPath)
					expect(creator:waitForRbxInstance(1)).to.be.ok()
					expect(creator:getAttribute("Text")).to.equal("testCreator")

					local typePath = path:cat(XPath.new("InfoRow2.InfoDataTextLabel"))
					local type = Element.new(typePath)
					expect(type:waitForRbxInstance(1)).to.be.ok()
					expect(type:getAttribute("Text")).to.equal("Accessory | Jacket")

					local genrePath = path:cat(XPath.new("InfoRow3.InfoDataTextLabel"))
					local genre = Element.new(genrePath)
					expect(genre:waitForRbxInstance(1)).to.be.ok()
					expect(genre:getAttribute("Text")).to.equal("All")
				end,
				wrappedComponent, Reducer, {}, nil)
			end)
		end)
	end
end

return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local AssetDetailsPage = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.AssetDetailsPage)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local wrappedComponent = withInGameMenuV3Providers(AssetDetailsPage)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("AssetDetailsPage", function()
			local initState = {
				inspectAndBuy = {
					SelectedItem = {
						numFavorites = 20,
						creatorName = "Brandon",
						description = "testDesc",
						name = "testName"
					}
				},
				screenSize = Vector2.new(500, 500),
			}

			local initStateChina = {
				inspectAndBuy = {
					SelectedItem = {
						numFavorites = 20,
						creatorName = "Brandon",
						description = "testDesc",
						name = "testName"
					},
					IsSubjectToChinaPolicies = true,
				},
				screenSize = Vector2.new(500, 500),
			}

			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, initState, nil)
			end)

			it("should render all aspects of the page", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local scrollingFramePath = path:cat(XPath.new("PageContainer.AssetDetailsPageFrame.ScrollingFrame"))
					
					local titlePath = scrollingFramePath:cat(XPath.new("TitleText"))
					local title = Element.new(titlePath)
					expect(title:waitForRbxInstance(1)).to.be.ok()
					expect(title:getAttribute("Text")).to.equal("testName")

					local thumbPath = scrollingFramePath:cat(XPath.new("AssetDetailThumbnail"))
					local thumb = Element.new(thumbPath)
					expect(thumb:waitForRbxInstance(1)).to.be.ok()

					local descPath = scrollingFramePath:cat(XPath.new("DetailsDescription"))
					local desc = Element.new(descPath)
					expect(desc:waitForRbxInstance(1)).to.be.ok()

					local favPath = scrollingFramePath:cat(XPath.new("AssetDetailFavorite"))
					local fav = Element.new(favPath)
					expect(fav:waitForRbxInstance(1)).to.be.ok()

					local infoPath = scrollingFramePath:cat(XPath.new("ItemInfoList"))
					local info = Element.new(infoPath)
					expect(info:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, initState, nil)
			end)
			it("should not render the favorites count if subject to china policies", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local favPath = path:cat(XPath.new("PageContainer.ScrollingFrame.AssetDetailFavorite"))
					local fav = Element.new(favPath)
					expect(fav:waitForRbxInstance(1)).to.never.be.ok()
				end,
				wrappedComponent, Reducer, initStateChina, nil)
			end)
		end)
	end
end

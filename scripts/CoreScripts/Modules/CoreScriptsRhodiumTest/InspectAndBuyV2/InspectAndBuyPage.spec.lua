return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local InspectAndBuyPage = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.InspectAndBuyPage)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local wrappedComponent = withInGameMenuV3Providers(InspectAndBuyPage)

	local mockAssets = {
		{assetId = "111"},
		{assetId = "222"},
		{assetId = "333"},
	}

	local createInitState = function()
		return {
			inspectAndBuy = {
				DisplayName = "DisplayNameTest",
				Assets = mockAssets,
			}
		}
	end

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("InspectAndBuyPage", function()
			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local pagePath = path:cat(XPath.new("PageContainer"))
					local page = Element.new(pagePath)
					expect(page:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should display the correct top bar contents", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local titlePath = path:cat(XPath.new("PageHeader.ThreeSectionBar.centerFrame.centerContent"))
					local title = Element.new(titlePath)
					expect(title:waitForRbxInstance(1)).to.be.ok()
					expect(title:getAttribute("Text")).to.equal("DisplayNameTest")
				end,
				wrappedComponent, Reducer, createInitState(), nil)
			end)

			it("should display the correct number tiles", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local scrollingFramePath = path:cat(XPath.new("PageContainer.ScrollingFrame"))
					local scrollingFrame = Element.new(scrollingFramePath)
					expect(scrollingFrame:waitForRbxInstance(1)).to.be.ok()
					expect(#scrollingFrame:getRbxInstance():getChildren()).to.equal(5)
					
					local asset1Path = scrollingFramePath:cat(XPath.new("111"))
					local asset1 = Element.new(asset1Path)
					expect(asset1:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, createInitState(), nil)
			end)
		end)
	end
end

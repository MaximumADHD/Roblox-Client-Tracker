return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local ItemInfoRow = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.ItemInfoRow)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local props = {
		infoName = "testName",
		infoData = "testData",
	}
	local wrappedComponent = withInGameMenuV3Providers(ItemInfoRow, props)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("ItemInfoRow", function()
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

					local namePath = path:cat(XPath.new("InfoNameTextLabel"))
					local name = Element.new(namePath)
					expect(name:waitForRbxInstance(1)).to.be.ok()
					expect(name:getAttribute("Text")).to.equal("testName")

					local dataPath = path:cat(XPath.new("InfoDataTextLabel"))
					local data = Element.new(dataPath)
					expect(data:waitForRbxInstance(1)).to.be.ok()
					expect(data:getAttribute("Text")).to.equal("testData")
				end,
				wrappedComponent, Reducer, {}, nil)
			end)
		end)
	end
end

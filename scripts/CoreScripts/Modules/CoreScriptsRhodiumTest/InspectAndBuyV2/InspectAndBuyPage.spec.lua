return function()
	local CorePackages = game:GetService("CorePackages")
	local UserInputService = game:GetService("UserInputService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local InspectAndBuyPage = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.InspectAndBuyPage)

	local FFlagInspectAndBuyV2Enabled = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2Enabled)

	local wrappedComponent = withInGameMenuV3Providers(InspectAndBuyPage)

	local initState = {
		inspectAndBuy = {
			DisplayName = "DisplayNameTest"
		}
	}

	if FFlagInspectAndBuyV2Enabled then
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
				wrappedComponent, Reducer, initState, nil)
			end)
		end)
	end
end

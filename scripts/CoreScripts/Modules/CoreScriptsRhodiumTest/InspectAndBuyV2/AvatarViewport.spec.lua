return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local withServices = require(Modules.CoreScriptsRhodiumTest.Helpers.withServices)
	local withInGameMenuV3Providers = require(Modules.CoreScriptsRhodiumTest.Helpers.withInGameMenuV3Providers)
	local Reducer = require(Modules.InGameMenuV3.reducer)
	local AvatarViewport = require(Modules.InGameMenuV3.Components.InspectAndBuyPage.AvatarViewport)

	local FFlagInspectAndBuyV2IXPEnabledForAll = require(Modules.InGameMenuV3.Flags.FFlagInspectAndBuyV2IXPEnabledForAll)

	local humanoidDescription = Instance.new("HumanoidDescription")
	local mockCharacter = Players:CreateHumanoidModelFromDescription(humanoidDescription, Enum.HumanoidRigType.R15)
	local props = {
		model = mockCharacter,
		humanoidDescription = humanoidDescription
	}
	local wrappedComponent = withInGameMenuV3Providers(AvatarViewport, props)

	if FFlagInspectAndBuyV2IXPEnabledForAll then
		describe("AvatarViewport", function()
			it("should mount", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)

			it("should include the WorldModel", function()
				withServices(function(path)
					path = XPath.new(path)
					local baseWidget = Element.new(path)
					expect(baseWidget:waitForRbxInstance(1)).to.be.ok()

					local worldModelPath = path:cat(XPath.new("WorldModel"))
					local worldModel = Element.new(worldModelPath)
					expect(worldModel:waitForRbxInstance(1)).to.be.ok()
				end,
				wrappedComponent, Reducer, {}, nil)
			end)
		end)
	end
end

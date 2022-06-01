return function()
	local FFlagAssetConfigDynamicDistributionQuotas = game:GetFastFlag("AssetConfigDynamicDistributionQuotas")
	local Plugin = script:FindFirstAncestor("Toolbox")

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local Framework = require(Packages.Framework)
	local Promise = Framework.Util.Promise
	local jest = JestGlobals.jest
	local expect = JestGlobals.expect

	local AssetConfigTheme = require(Plugin.Core.Util.AssetConfigTheme)
	local ToolboxUtilities = require(Plugin.Core.Util.ToolboxUtilities)
	local MockWrapper = require(Plugin.Core.Util.MockWrapper)
	local TestHelpers = require(Plugin.Core.Util.Test.TestHelpers)
	local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)

	local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
	local ConfigCopy = require(AssetConfiguration.ConfigCopy)

	local oldGetAssetConfigDistributionQuotas
	local fakeLink = "http://example.com"
	local fakeQuota = nil
	local fakeQuotaPolicies

	local ISO_DATE_STRING = "2020-09-09T13:00:00Z"

	beforeAll(function()
		oldGetAssetConfigDistributionQuotas = ToolboxUtilities.getAssetConfigDistributionQuotas
		ToolboxUtilities.getAssetConfigDistributionQuotas = function()
			return fakeQuotaPolicies
		end
	end)

	beforeEach(function()
		fakeQuota = nil
		fakeQuotaPolicies = {
			[Enum.AssetType.Model.Name] = {
				link = fakeLink,
			},
		}
		NetworkInterfaceMock.getCreatorMarketplaceQuotas = jest.fn().mockImplementation(function()
			return Promise.resolve({
				responseBody = {
					quotas = {
						fakeQuota,
					},
				},
			})
		end)
	end)

	afterAll(function()
		ToolboxUtilities.getAssetConfigDistributionQuotas = oldGetAssetConfigDistributionQuotas
	end)

	local function renderTestInstance(assetType)
		local element = Roact.createElement(MockWrapper, {
			networkInterface = NetworkInterfaceMock.new(),
			theme = AssetConfigTheme.createDummyThemeManager(),
		}, {
			ConfigCopy = Roact.createElement(ConfigCopy, {
				AssetType = assetType or Enum.AssetType.Model,
				CopyOn = true,
				CopyEnabled = true,
				IsAssetPublic = true,
			}),
		})
		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		container.Parent = workspace
		return instance, container
	end

	it("should create and destroy without errors", function()
		local instance, container = renderTestInstance()
		Roact.unmount(instance)
	end)

	if FFlagAssetConfigDynamicDistributionQuotas then
		local function assertToggleEnabled(container: Instance, enabled: boolean)
			TestHelpers.pollAssertionUntil(function()
				-- ToggleButton will have no PointingHand if it is disabled
				local toggleButtonContainer = container:FindFirstChild("ToggleButtonContainer", true)
				local hand = toggleButtonContainer:FindFirstChild("PointingHand", true)
				if enabled then
					expect(hand).never.toBeNil()
				else
					expect(hand).toBeNil()
				end
			end)
		end

		it("should not request quotas for asset types with no quota policy", function()
			renderTestInstance(Enum.AssetType.Animation)

			expect(NetworkInterfaceMock.getCreatorMarketplaceQuotas).never.toHaveBeenCalled()
		end)

		it("should not show the quota message (and enable the toggle) if no appropriate quotas are available", function()
			fakeQuota = {
				capacity = 10,
				usage = 11,
				expirationTime = ISO_DATE_STRING,
				-- No monthly quota returned
				duration = "Day",
			}
			local instance, container = renderTestInstance()

			assertToggleEnabled(container, true)
		end)

		it("should enable the toggle if within quota", function()
			fakeQuota = {
				capacity = 10,
				usage = 1,
				expirationTime = ISO_DATE_STRING,
				duration = "Month",
			}

			local instance, container = renderTestInstance()

			assertToggleEnabled(container, true)
		end)

		it("should disable the toggle if out of quota", function()
			fakeQuota = {
				capacity = 10,
				usage = 11,
				expirationTime = ISO_DATE_STRING,
				duration = "Month",
			}
			local instance, container = renderTestInstance()

			assertToggleEnabled(container, false)
		end)
	end
end

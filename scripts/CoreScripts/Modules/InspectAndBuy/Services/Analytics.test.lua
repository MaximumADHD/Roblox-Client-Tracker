local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local AvatarExperienceAnalytics = require(CorePackages.Workspace.Packages.AvatarExperienceAnalytics)
local UnifiedEventLogConstants = AvatarExperienceAnalytics.UnifiedEventLogConstants
local UnifiedEventLogEnums = AvatarExperienceAnalytics.UnifiedEventLogEnums
local UnifiedLoggingSurface =
	require(CorePackages.Workspace.Packages.AvatarExperienceNavigation).Enums.UnifiedLoggingSurface
local FFlagAXUnifiedEventStrictPayloads =
	require(CorePackages.Workspace.Packages.AvatarExperienceFlags).FFlagAXUnifiedEventStrictPayloads

local Analytics = require(script.Parent.Analytics)

local function getUnifiedEventFields(sendTelemetryEvent: any): { [string]: any }?
	for _, call in sendTelemetryEvent.mock.calls do
		if call[3] == UnifiedEventLogConstants.EVENT_NAME then
			return call[4]
		end
	end
	return nil
end

describe("Analytics unified purchase events", function()
	if FFlagAXUnifiedEventStrictPayloads then
		it("SHOULD send the contract item type, id and sub type", function()
			local analytics = Analytics.new("1", "ctx")
			local sendTelemetryEvent = jest.fn()
			analytics.eventStream = { sendTelemetryEvent = sendTelemetryEvent }

			analytics.reportPurchaseSuccessUnifiedEvent("Asset", 123, { itemSubType = "8", price = 50 })

			expect(getUnifiedEventFields(sendTelemetryEvent)).toEqual({
				action = UnifiedEventLogEnums.MarketplaceUnifiedAction.PURCHASE_SUCCESS,
				surface = UnifiedLoggingSurface.IN_EXPERIENCE_INSPECT_BUY,
				itemId = "123",
				itemType = UnifiedEventLogEnums.MarketplaceUnifiedItemType.ASSET,
				assetType = 8,
				organicItemPrice = 50,
			})
		end)

		it("SHOULD send a bundle's sub type as its bundle type", function()
			local analytics = Analytics.new("1", "ctx")
			local sendTelemetryEvent = jest.fn()
			analytics.eventStream = { sendTelemetryEvent = sendTelemetryEvent }

			analytics.reportPurchaseAttemptUnifiedEvent("Bundle", "456", { itemSubType = "1", price = 0 })

			expect(getUnifiedEventFields(sendTelemetryEvent)).toEqual({
				action = UnifiedEventLogEnums.MarketplaceUnifiedAction.PURCHASE_ATTEMPT,
				surface = UnifiedLoggingSurface.IN_EXPERIENCE_INSPECT_BUY,
				itemId = "456",
				itemType = UnifiedEventLogEnums.MarketplaceUnifiedItemType.BUNDLE,
				bundleType = 1,
				organicItemPrice = 0,
			})
		end)

		it("SHOULD send a bundle type given by name as its enum value", function()
			local analytics = Analytics.new("1", "ctx")
			local sendTelemetryEvent = jest.fn()
			analytics.eventStream = { sendTelemetryEvent = sendTelemetryEvent }

			analytics.reportPurchaseAttemptUnifiedEvent("Bundle", "456", { itemSubType = "Shoes", price = 0 })

			local fields = getUnifiedEventFields(sendTelemetryEvent) :: { [string]: any }
			expect(fields.bundleType).toBe(Enum.BundleType.Shoes.Value)
		end)

		it("SHOULD drop a sub type it cannot map to a type id", function()
			local analytics = Analytics.new("1", "ctx")
			local sendTelemetryEvent = jest.fn()
			analytics.eventStream = { sendTelemetryEvent = sendTelemetryEvent }

			analytics.reportPurchaseAttemptUnifiedEvent("Bundle", "456", { itemSubType = "NotABundleType", price = 0 })

			local fields = getUnifiedEventFields(sendTelemetryEvent) :: { [string]: any }
			expect(fields.bundleType).toBeNil()
		end)
	else
		it("SHOULD send the caller's item type and sub type unchanged", function()
			local analytics = Analytics.new("1", "ctx")
			local sendTelemetryEvent = jest.fn()
			analytics.eventStream = { sendTelemetryEvent = sendTelemetryEvent }

			analytics.reportPurchaseSuccessUnifiedEvent("Asset", 123, { itemSubType = "8", price = 50 })

			local fields = getUnifiedEventFields(sendTelemetryEvent) :: { [string]: any }
			expect(fields.itemType).toBe("Asset")
			expect(fields.itemId).toBe(123)
			expect(fields.assetType).toBe("8")
		end)
	end
end)

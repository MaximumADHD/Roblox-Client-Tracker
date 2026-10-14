local InspectAndBuyFolder = script.Parent.Parent
local SetItemBeingPurchased = require(InspectAndBuyFolder.Actions.SetItemBeingPurchased)
local Constants = require(InspectAndBuyFolder.Constants)
local ItemBeingPurchased = require(script.Parent.ItemBeingPurchased)
local FFlagAXIaBSinglePurchaseUnifiedEvents = require(InspectAndBuyFolder.Flags.FFlagAXIaBSinglePurchaseUnifiedEvents)

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("SetItemBeingPurchased", function()
	it("should set the item id and type", function()
		local newState = ItemBeingPurchased(nil, SetItemBeingPurchased("123", Constants.ItemType.Asset))

		expect(newState.itemId).toBe("123")
		expect(newState.itemType).toBe(Constants.ItemType.Asset)
	end)

	if FFlagAXIaBSinglePurchaseUnifiedEvents then
		it("should record the resale price so the success event can report the price paid", function()
			local newState = ItemBeingPurchased(nil, SetItemBeingPurchased("123", Constants.ItemType.Asset, 120))

			expect(newState.resalePrice).toBe(120)
		end)
	end

	it("should leave the resale price unset for a non-resale purchase", function()
		local newState = ItemBeingPurchased(nil, SetItemBeingPurchased("123", Constants.ItemType.Asset))

		expect(newState.resalePrice).toBeNil()
	end)

	it("should clear a previous resale price when a new item is being purchased", function()
		local resaleState = ItemBeingPurchased(nil, SetItemBeingPurchased("123", Constants.ItemType.Asset, 120))
		local newState = ItemBeingPurchased(resaleState, SetItemBeingPurchased("456", Constants.ItemType.Asset))

		expect(newState.itemId).toBe("456")
		expect(newState.resalePrice).toBeNil()
	end)
end)

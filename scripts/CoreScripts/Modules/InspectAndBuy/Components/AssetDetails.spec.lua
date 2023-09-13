return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)

	local InspectAndBuyFolder = script.Parent.Parent
	local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
	local InspectAndBuyReducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
	local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

	local SocialTestHelpers = require(CorePackages.Workspace.Packages.SocialTestHelpers)
	local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local AssetDetails = require(script.Parent.AssetDetails)

	local mockModel = require(InspectAndBuyFolder.Test.getMockModel)()

	local FFlagAttributionInInspectAndBuy = require(InspectAndBuyFolder.Flags.FFlagAttributionInInspectAndBuy)

	local DUMMY_ASSET_ID = "1818"
	local DUMMY_UNIVERSE_ID = "13"
	local DUMMY_CREATOR_NAME = "mtnLark"

	local function makeInitialStoreState(hasAttribution)
		local mockAsset = AssetInfo.mock()
		mockAsset.id = DUMMY_ASSET_ID
		mockAsset.creatingUniverseId = if hasAttribution then "13" else nil
		mockAsset.creatorName = DUMMY_CREATOR_NAME
		mockAsset.assetTypeId = "8" -- hat

		return {
			detailsInformation = {
				assetId = DUMMY_ASSET_ID,
			},
			view = 1,
			locale = "en-US",
			assets = {
				[DUMMY_ASSET_ID] = mockAsset,
			},
			bundles = {},
			isSubjectToChinaPolicies = false,
		}
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestContainer, nil, {
			Roact.createElement(AssetDetails, {
				localPlayerModel = mockModel,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	if FFlagAttributionInInspectAndBuy then
		it("should show the item info list", function()
			local store = Rodux.Store.new(InspectAndBuyReducer, makeInitialStoreState(false), {
				Rodux.thunkMiddleware,
			})
			local element = Roact.createElement(TestContainer, {
				overrideStore = store,
			}, {
				DetailsText = Roact.createElement(AssetDetails, {
					localPlayerModel = mockModel,
				}),
			})

			SocialTestHelpers.TestHelpers.runWhileMounted(element, function(parent)
				local itemInfoList = parent:FindFirstChild("ItemInfoList", true) :: Frame
				-- local creator = itemInfoList:FindFirstChild("ItemInfoList", true)
				-- print(verifiedBadge)
				expect(itemInfoList).toBeTruthy()
			end)
		end)

		it("should show creator in item info list", function()
			local store = Rodux.Store.new(InspectAndBuyReducer, makeInitialStoreState(false), {
				Rodux.thunkMiddleware,
			})
			local element = Roact.createElement(TestContainer, {
				overrideStore = store,
			}, {
				DetailsText = Roact.createElement(AssetDetails, {
					localPlayerModel = mockModel,
				}),
			})

			SocialTestHelpers.TestHelpers.runWhileMounted(element, function(parent)
				local itemInfoList = parent:FindFirstChild("ItemInfoList", true) :: Frame
				expect(itemInfoList).toBeTruthy()

				-- Creator row should be first row
				local creatorRow = itemInfoList:FindFirstChild("1", false) :: ImageButton
				expect(creatorRow).toBeTruthy()

				-- Check shows correct label
				local infoNameTextLabel = creatorRow:FindFirstChild("InfoNameTextLabel", true) :: TextLabel
				expect(infoNameTextLabel.Text).toEqual("Creator")

				-- Check shows correct user
				local infoDataTextLabel = creatorRow:FindFirstChild("InfoDataTextLabel", true) :: TextLabel
				expect(infoDataTextLabel.Text).toEqual(DUMMY_CREATOR_NAME)
			end)
		end)

		it("should show attribution in item info list if item has creatingUniverseId", function()
			local store = Rodux.Store.new(InspectAndBuyReducer, makeInitialStoreState(true), {
				Rodux.thunkMiddleware,
			})
			local element = Roact.createElement(TestContainer, {
				overrideStore = store,
			}, {
				DetailsText = Roact.createElement(AssetDetails, {
					localPlayerModel = mockModel,
				}),
			})

			SocialTestHelpers.TestHelpers.runWhileMounted(element, function(parent)
				local itemInfoList = parent:FindFirstChild("ItemInfoList", true) :: Frame
				expect(itemInfoList).toBeTruthy()

				-- Attribution row should be second row when exists
				local attributionRow = itemInfoList:FindFirstChild("2", false) :: ImageButton
				expect(attributionRow).toBeTruthy()

				-- Check shows correct label
				local infoNameTextLabel = attributionRow:FindFirstChild("InfoNameTextLabel", true) :: TextLabel
				expect(infoNameTextLabel.Text).toEqual("Made In")

				-- Check shows correct universe
				local infoDataTextLabel = attributionRow:FindFirstChild("InfoDataTextLabel", true) :: TextLabel
				-- TODO lua-apps/pull/14810 show experience name
				expect(infoDataTextLabel.Text).toEqual(DUMMY_UNIVERSE_ID)
			end)
		end)

		it("should NOT show attribution in item info list if item has no creatingUniverseId", function()
			local store = Rodux.Store.new(InspectAndBuyReducer, makeInitialStoreState(false), {
				Rodux.thunkMiddleware,
			})
			local element = Roact.createElement(TestContainer, {
				overrideStore = store,
			}, {
				DetailsText = Roact.createElement(AssetDetails, {
					localPlayerModel = mockModel,
				}),
			})

			SocialTestHelpers.TestHelpers.runWhileMounted(element, function(parent)
				local itemInfoList = parent:FindFirstChild("ItemInfoList", true) :: Frame
				expect(itemInfoList).toBeTruthy()

				-- Type row should be second row when attribution does not exist
				local typeRow = itemInfoList:FindFirstChild("2", false) :: ImageButton
				expect(typeRow).toBeTruthy()

				-- Check does not show attribution
				local infoNameTextLabel = typeRow:FindFirstChild("InfoNameTextLabel", true) :: TextLabel
				expect(infoNameTextLabel.Text).never.toEqual("Made In")
			end)
		end)

		it("should show type row", function()
			local store = Rodux.Store.new(InspectAndBuyReducer, makeInitialStoreState(false), {
				Rodux.thunkMiddleware,
			})
			local element = Roact.createElement(TestContainer, {
				overrideStore = store,
			}, {
				DetailsText = Roact.createElement(AssetDetails, {
					localPlayerModel = mockModel,
				}),
			})

			SocialTestHelpers.TestHelpers.runWhileMounted(element, function(parent)
				local itemInfoList = parent:FindFirstChild("ItemInfoList", true) :: Frame
				expect(itemInfoList).toBeTruthy()

				-- Type row should be second row when attribution does not exist
				local typeRow = itemInfoList:FindFirstChild("2", false) :: ImageButton
				expect(typeRow).toBeTruthy()

				-- Check shows correct label
				local infoNameTextLabel = typeRow:FindFirstChild("InfoNameTextLabel", true) :: TextLabel
				expect(infoNameTextLabel.Text).toEqual("Type")

				-- Check shows correct label
				local infoDataTextLabel = typeRow:FindFirstChild("InfoDataTextLabel", true) :: TextLabel
				expect(infoDataTextLabel.Text).toEqual("Accessory | Hat")
			end)
		end)
	end
end

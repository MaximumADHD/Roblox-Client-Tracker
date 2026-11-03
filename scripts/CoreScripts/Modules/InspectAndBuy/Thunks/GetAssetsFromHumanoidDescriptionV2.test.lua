local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local Rodux = require(CorePackages.Packages.Rodux)
local Promise = require(CorePackages.Packages.Promise)
local AvatarExperienceFlags = require(CorePackages.Workspace.Packages.AvatarExperienceFlags)
local FFlagAXInspectAndBuyAvatarBackground = AvatarExperienceFlags.FFlagAXInspectAndBuyAvatarBackground

local InspectAndBuyFolder = script.Parent.Parent

local mockPreviewRequests: { { { assetId: string } } } = {}
local mockBackgroundLookups: { string | number } = {}
local mockSentCounters: { string } = {}
local mockLookupResult = function()
	return Promise.resolve({})
end

jest.mock(InspectAndBuyFolder.Thunks.GetAvatarPreview, function()
	return function(assets)
		table.insert(mockPreviewRequests, assets)
		return { type = "MockGetAvatarPreview" }
	end
end)

jest.mock(InspectAndBuyFolder.Thunks.SendCounter, function()
	return function(counterName)
		table.insert(mockSentCounters, counterName)
		return { type = "MockSendCounter" }
	end
end)

jest.mock(CorePackages.Workspace.Packages.DataHydration.AvatarBackground, function()
	return {
		getAvatarBackgroundStore = function(_scope)
			return {
				awaitAvatarBackground = function(userId)
					table.insert(mockBackgroundLookups, userId)
					return mockLookupResult()
				end,
			}
		end,
	}
end)

local Reducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local MockNetwork = require(InspectAndBuyFolder.Test.MockNetwork)
local Thunk = require(InspectAndBuyFolder.Thunk)
local SetPlayerId = require(InspectAndBuyFolder.Actions.SetPlayerId)
local GetAssetsFromHumanoidDescriptionV2 = require(script.Parent.GetAssetsFromHumanoidDescriptionV2)

local INSPECTED_PLAYER_ID = 123

local function createStore(playerId: number?)
	local store = Rodux.Store.new(Reducer, nil, { Thunk.middleware({}) })
	if playerId then
		store:dispatch(SetPlayerId(playerId))
	end
	return store
end

local function runThunk(store, isForLocalPlayer: boolean, getIsMenuOpen: (() -> boolean)?)
	local humanoidDescription = MockNetwork.GetMockHumanoidDescriptionEmpty()
	Thunk.test(GetAssetsFromHumanoidDescriptionV2(humanoidDescription, isForLocalPlayer, getIsMenuOpen), store, {})
end

local function lastPreviewedAssetIds(): { string }?
	local request = mockPreviewRequests[#mockPreviewRequests]
	if request == nil then
		return nil
	end
	local ids = {}
	for _, asset in request do
		table.insert(ids, asset.assetId)
	end
	return ids
end

describe("GetAssetsFromHumanoidDescriptionV2", function()
	beforeEach(function()
		mockPreviewRequests = {}
		mockBackgroundLookups = {}
		mockSentCounters = {}
		mockLookupResult = function()
			return Promise.resolve({})
		end
	end)

	if FFlagAXInspectAndBuyAvatarBackground then
		it("adds the inspected player's equipped background to the preview request", function()
			mockLookupResult = function()
				return Promise.resolve({ assetId = 456 })
			end

			runThunk(createStore(INSPECTED_PLAYER_ID), false)

			expect(mockBackgroundLookups).toEqual({ INSPECTED_PLAYER_ID })
			expect(lastPreviewedAssetIds()).toEqual({ "456" })
			expect(mockSentCounters).toEqual({})
		end)

		it("previews just the avatar's assets when no background is equipped", function()
			runThunk(createStore(INSPECTED_PLAYER_ID), false)

			expect(lastPreviewedAssetIds()).toEqual({})
		end)

		it("still previews the avatar's assets when the background lookup fails", function()
			mockLookupResult = function()
				return Promise.reject("lookup failed")
			end

			runThunk(createStore(INSPECTED_PLAYER_ID), false)

			expect(lastPreviewedAssetIds()).toEqual({})
			expect(mockSentCounters).toEqual({ "GetAvatarBackgroundRequestFailed" })
		end)

		it("skips the preview when Inspect & Buy closes before the lookup settles", function()
			local resolveLookup
			mockLookupResult = function()
				return Promise.new(function(resolve)
					resolveLookup = resolve
				end)
			end
			local menuOpen = true

			runThunk(createStore(INSPECTED_PLAYER_ID), false, function()
				return menuOpen
			end)
			menuOpen = false
			resolveLookup({ assetId = 456 })

			expect(lastPreviewedAssetIds()).toBeNil()
		end)

		it("does not look up a background for the local player's own assets", function()
			runThunk(createStore(INSPECTED_PLAYER_ID), true)

			expect(#mockBackgroundLookups).toBe(0)
			expect(lastPreviewedAssetIds()).toBeNil()
		end)

		it("does not look up a background when no player is being inspected", function()
			runThunk(createStore(nil), false)

			expect(#mockBackgroundLookups).toBe(0)
			expect(lastPreviewedAssetIds()).toEqual({})
		end)
	end

	if not FFlagAXInspectAndBuyAvatarBackground then
		it("does not look up a background", function()
			mockLookupResult = function()
				return Promise.resolve({ assetId = 456 })
			end

			runThunk(createStore(INSPECTED_PLAYER_ID), false)

			expect(#mockBackgroundLookups).toBe(0)
			expect(lastPreviewedAssetIds()).toEqual({})
		end)
	end
end)

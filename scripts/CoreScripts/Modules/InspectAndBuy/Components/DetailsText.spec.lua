local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local LuaProfileDeps = require(CorePackages.Packages.LuaProfileDeps)
local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)

local InspectAndBuyFolder = script.Parent.Parent
local AssetInfo = require(InspectAndBuyFolder.Models.AssetInfo)
local InspectAndBuyReducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)
local mockModel = require(InspectAndBuyFolder.Test.getMockModel)()

local Modules = CoreGui.RobloxGui.Modules
local withFlag = require(Modules.CoreScriptsRhodiumTest.Helpers.withFlag)

local DetailsText = require(script.Parent.DetailsText)

local DUMMY_ASSET_ID = "1818"

local function makeInitialStoreState(creatorHasVerifiedBadge)
	local mockAsset = AssetInfo.mock()
	mockAsset.id = DUMMY_ASSET_ID
	mockAsset.creatorHasVerifiedBadge = creatorHasVerifiedBadge

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

return function()
	it("should create and destroy without errors", function()
		local element = Roact.createElement(TestContainer, nil, {
			DetailsText = Roact.createElement(DetailsText, {}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	describe("Verified Badges", function()
		it("Should show the verified badge for assets created by verified creators", function()
			local creatorHasVerifiedBadge = true

			withFlag("ShowVerifiedBadgeOnInspectAndBuyMenu", function()
				withFlag("ReturnChildFromWrapper", function()
					local store = Rodux.Store.new(InspectAndBuyReducer, makeInitialStoreState(creatorHasVerifiedBadge), {
						Rodux.thunkMiddleware,
					})
					local element = Roact.createElement(TestContainer, {
						overrideStore = store,
					}, {
						DetailsText = Roact.createElement(DetailsText, {
							localPlayerModel = mockModel,
						}),
					})

					LuaProfileDeps.UnitTestHelpers.runWhileMounted(element, function(parent)
						local verifiedBadge = parent:FindFirstChild("Emoji", true) :: TextLabel
						expect(verifiedBadge.Text).to.equal(VerifiedBadges.emoji.verified)
					end)
				end)
			end)
		end)

		it("Should not show the verified badge for assets created by non-verified creators", function()
			local creatorHasVerifiedBadge = false

			withFlag("ShowVerifiedBadgeOnInspectAndBuyMenu", function()
				withFlag("ReturnChildFromWrapper", function()
					local store = Rodux.Store.new(InspectAndBuyReducer, makeInitialStoreState(creatorHasVerifiedBadge), {
						Rodux.thunkMiddleware,
					})
					local element = Roact.createElement(TestContainer, {
						overrideStore = store,
					}, {
						DetailsText = Roact.createElement(DetailsText, {
							localPlayerModel = mockModel,
						}),
					})

					LuaProfileDeps.UnitTestHelpers.runWhileMounted(element, function(parent)
						local verifiedBadge = parent:FindFirstChild("Emoji", true) :: TextLabel
						expect(verifiedBadge).to.never.be.ok()
					end)
				end)
			end)
		end)
	end)
end

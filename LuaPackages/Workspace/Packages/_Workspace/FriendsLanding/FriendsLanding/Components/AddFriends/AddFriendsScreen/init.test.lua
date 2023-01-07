local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local EnumScreens = require(FriendsLanding.EnumScreens)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local dependencies = require(FriendsLanding.dependencies)
local Rodux = dependencies.Rodux
local llama = dependencies.llama
local FriendsNetworking = dependencies.FriendsNetworking
local GamesNetworking = dependencies.GamesNetworking

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local AddFriendsScreen = require(script.Parent)

describe("lifecycle", function()
	local navigation

	local addFriendsNetworkingRequests = {
		FriendsNetworking.GetFriendRequestsCount,
		FriendsNetworking.GetFriendRequests,
		FriendsNetworking.GetFollowingExists,
		GamesNetworking.GetExperiencesDetails,
		FriendsNetworking.GetFriendRecommendationsFromUserId,
	}

	beforeAll(function()
		llama.List.map(addFriendsNetworkingRequests, function(req)
			req.Mock.clear()
			req.Mock.reply(function()
				return { responseBody = { data = {} } }
			end)
		end)
	end)

	beforeEach(function()
		navigation = {
			navigate = jest.fn(),
			state = {
				routeName = EnumScreens.FriendsLanding,
			},
		}
	end)

	afterAll(function()
		llama.List.map(addFriendsNetworkingRequests, function(req)
			req.Mock.clear()
		end)
	end)

	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProviders(mockLocale)(AddFriendsScreen, {
			store = Rodux.Store.new(function()
				return {
					ScreenSize = Vector2.new(540, 960),
					LocalUserId = "123",
					FriendsLanding = {
						NetworkStatus = {},
					},
				}
			end, {}, { Rodux.thunkMiddleware }),
			props = {
				navigation = navigation,
			},
		})

		cleanup()
	end)
end)

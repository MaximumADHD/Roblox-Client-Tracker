local SocialTab = script:FindFirstAncestor("SocialTab")
local SocialTabContext = require(SocialTab.SocialTabContext)
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local UniversalAppPolicy = dependencies.UniversalAppPolicy

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest

local UserCarouselContainer = require(script.Parent)

describe("lifecycle", function()
	local mockState = {
		SocialTab = {
			Friends = {
				byUserId = {
					localUserId = {},
				},
				countsByUserId = {},
				requests = {
					receivedCount = 0,
				},
			},
		},
		ScreenSize = {
			X = 100,
		},
	}

	local function mockStore(element)
		return function()
			return Roact.createElement(RoactRodux.StoreProvider, {
				store = Rodux.Store.new(function(state)
					return state
				end, mockState),
			}, {
				element1 = Roact.createElement(element),
			})
		end
	end

	local function mockUniversalAppPolicy(element)
		local getAccountProviderName = jest.fn().mockName("getAccountProviderName").mockReturnValue("")
		local getFriendFinder = jest.fn().mockName("getFriendFinder").mockReturnValue(false)
		local getShowDisplayName = jest.fn().mockName("getShowDisplayName").mockReturnValue(true)
		local shouldInviteFromAccountProvider =
			jest.fn().mockName("shouldInviteFromAccountProvider").mockReturnValue(false)
		local mockPolicy = jest.fn(function()
			return {
				getAccountProviderName = getAccountProviderName,
				getFriendFinder = getFriendFinder,
				getShowDisplayName = getShowDisplayName,
				shouldInviteFromAccountProvider = shouldInviteFromAccountProvider,
			}
		end)

		return function()
			return Roact.createElement(UniversalAppPolicy.Provider, {
				policy = { mockPolicy },
			}, {
				socialTabContext = Roact.createElement(SocialTabContext.Provider, {
					value = {},
				}, {
					element1 = Roact.createElement(element),
				}),
			})
		end
	end

	it("SHOULD mount and render with policy and store", function()
		local _, cleanup = createInstanceWithProps(mockStore(mockUniversalAppPolicy(UserCarouselContainer)))

		cleanup()
	end)
end)

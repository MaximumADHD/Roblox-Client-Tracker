local SocialTab = script:FindFirstAncestor("SocialTab")
local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)

local dependencies = require(SocialTab.dependencies)
local React = dependencies.React
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local SocialTabNavigationEventReceiver = require(script.Parent.SocialTabNavigationEventReceiver)

beforeAll(function()
	GetUnreadConversationCount.Mock.clear()
	GetUnreadConversationCount.Mock.reply({})
end)

afterAll(function()
	GetUnreadConversationCount.Mock.clear()
end)

describe("GIVEN mock store and mock navigationEventReceiver", function()
	local navigationEventReceiver
	local mockStore
	local fireEvent

	beforeEach(function()
		navigationEventReceiver = function(props)
			React.useEffect(function()
				props.onDidFocus()
			end, {})

			fireEvent = {
				onDidFocus = function()
					props.onDidFocus()
				end,
			}

			return nil
		end

		mockStore = Rodux.Store.new(function(_) end, nil, { Rodux.thunkMiddleware })

		mockStore.dispatch = jest.fn().mockImplementation(mockStore.dispatch)
	end)

	describe("WHEN mounted", function()
		beforeEach(function()
			local tree = Roact.createElement(RoactRodux.StoreProvider, {
				store = mockStore,
			}, {
				navigationEvents = Roact.createElement(SocialTabNavigationEventReceiver, {
					navigationEventReceiver = navigationEventReceiver,
				}),
			})
			Roact.mount(tree)
		end)

		it("SHOULD not call getUnreadConversationCount", function()
			expect(mockStore.dispatch).never.toHaveBeenCalled()
		end)

		it("WHEN OnDidFocus fired SHOULD call getUnreadConversationCount", function()
			fireEvent.onDidFocus()
			expect(mockStore.dispatch).toHaveBeenCalled()
			expect(mockStore.dispatch).toHaveBeenCalledWith(mockStore, {
				asymmetricMatch = function(_, action)
					if typeof(action) == "table" then
						return action.type == GetUnreadConversationCount.Succeeded.name
					else
						return false
					end
				end,
			})
		end)
	end)
end)

local SocialTab = script:FindFirstAncestor("SocialTab")
local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)

local dependencies = require(SocialTab.dependencies)
local getFFlagSocialAddFriendshipRequestEvent = dependencies.getFFlagSocialAddFriendshipRequestEvent
local llama = dependencies.llama
local Mock = dependencies.Mock
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local RoduxUsers = dependencies.RoduxUsers
local RoduxFriends = dependencies.RoduxFriends

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local SocialTabEventReceiver = require(script.Parent.SocialTabEventReceiver)

describe("SocialTabEventReceiver", function()
	local activeConversationId = "activeConversationId"

	local response = {
		responseBody = {
			count = 1337,
		},
	}

	local mockResponse = jest.fn().mockReturnValue(response)
	GetUnreadConversationCount.Mock.reply(function()
		return mockResponse()
	end)
	local fetchFriendRequestCountMockResponse = jest.fn().mockReturnValue(response)

	local GetFriendRequestsCount = dependencies.NetworkingFriends.GetFriendRequestsCount
	GetFriendRequestsCount.Mock.clear()
	GetFriendRequestsCount.Mock.reply(function()
		return fetchFriendRequestCountMockResponse()
	end)

	local function getTimesCalled()
		return #mockResponse.mock.calls
	end

	local getActiveConversationId = Mock.MagicMock.new({ returnValue = activeConversationId })

	local mockStore = Rodux.Store.new(
		function(_state)
			return {
				LocalUserId = "userId",
				SocialTab = {
					NetworkStatus = {
						get = Mock.MagicMock.new({ name = "getNetworkStatus" }),
					},
					Users = {
						byUserId = {
							["123"] = {
								id = "123",
								displayName = "maisie",
								username = "maisie93",
								hasVerifiedBadge = false,
							},
						},
					},
				},
			}
		end,
		nil,
		{
			Rodux.thunkMiddleware,
		}
	)

	afterAll(function()
		GetFriendRequestsCount.Mock.clear()
		GetUnreadConversationCount.Mock.clear()
	end)

	beforeEach(function()
		mockStore.dispatch = jest.fn().mockImplementation(mockStore.dispatch)
	end)

	describe("WHEN mounted", function()
		describe("WITH mocked robloxEventReceiver", function()
			local robloxEventReceiver = Mock.MagicMock.new()
			robloxEventReceiver.connections = {}
			robloxEventReceiver.observeEvent = function(self, namespace, callback)
				expect(namespace).toEqual(expect.any("string"))
				expect(callback).toEqual(expect.any("function"))

				self.connections[namespace] = callback
			end

			local function fireSignalR(signalREvent)
				local callback = robloxEventReceiver.connections[signalREvent.namespace]
				if callback then
					callback(signalREvent, signalREvent.detailType)
				end
			end

			local function mount(extraProps: any)
				assert(mockStore, "Requires mockStore")
				assert(SocialTabEventReceiver, "Requires SocialTabEventReceiver")

				local tree = Roact.createElement(RoactRodux.StoreProvider, {
					store = mockStore,
				}, {
					eventReceiver = Roact.createElement(
						SocialTabEventReceiver,
						llama.Dictionary.join({
							robloxEventReceiver = robloxEventReceiver,
							getActiveConversationId = getActiveConversationId,
						}, extraProps or {})
					),
				})

				Roact.mount(tree)
			end

			beforeEach(function()
				mockResponse.mockReset()
				fetchFriendRequestCountMockResponse.mockReset()
			end)

			it("SHOULD update unread count when mounted", function()
				mount()

				local timesCalled = getTimesCalled()
				local expectedCount = 0
				expect(timesCalled).toBe(expectedCount)
			end)

			local function shouldNotFetchWhenLookingAtConversation(detailType)
				return function()
					describe("WHEN SignalR is received for the active conversation", function()
						local signalREvent = {
							detailType = detailType,
							namespace = "ChatNotifications",
							ConversationId = activeConversationId,
						}

						it("SHOULD NEVER fetch for unread messages", function()
							fireSignalR(signalREvent)
							local timesCalled = getTimesCalled()
							expect(timesCalled).toBe(0)
						end)
					end)

					describe("WHEN SignalR is received for an inactive conversation", function()
						local signalREvent = {
							detailType = detailType,
							namespace = "ChatNotifications",
							ConversationId = "inactiveConversationId",
						}

						it("SHOULD fetch for unread messages", function()
							fireSignalR(signalREvent)
							local timesCalled = getTimesCalled()
							expect(timesCalled).toBe(1)
						end)
					end)
				end
			end

			local function shouldAlwaysFetch(detailType)
				return function()
					describe("WHEN SignalR is received for the active conversation", function()
						local signalREvent = {
							detailType = detailType,
							namespace = "ChatNotifications",
							ConversationId = activeConversationId,
						}

						it("SHOULD fetch for unread messages", function()
							fireSignalR(signalREvent)
							local timesCalled = getTimesCalled()
							expect(timesCalled).toBe(0)
						end)
					end)

					describe("WHEN SignalR is received for an inactive conversation", function()
						local signalREvent = {
							detailType = detailType,
							namespace = "ChatNotifications",
							ConversationId = "inactiveConversationId",
						}

						it("SHOULD fetch for unread messages", function()
							fireSignalR(signalREvent)
							local timesCalled = getTimesCalled()
							expect(timesCalled).toBe(1)
						end)
					end)
				end
			end

			local function shouldUpdateOnFriendshipDestroyed(detailType)
				return function()
					describe("WHEN FriendShipNotifications is received for the destruction of a friendship", function()
						local signalREvent = {
							Type = detailType,
							namespace = "FriendshipNotifications",
							EventArgs = {
								userId1 = "userId1",
								userId2 = "userId2",
							},
						}

						it("SHOULD destroy a friendship", function()
							mount()
							fireSignalR(signalREvent)
							expect(mockStore.dispatch).toHaveBeenCalled()
							expect(mockStore.dispatch).toHaveBeenCalledWith(mockStore, {
								asymmetricMatch = function(_, action)
									if typeof(action) == "table" then
										return action.type == RoduxFriends.Actions.FriendshipDestroyed.name
									else
										return false
									end
								end,
							})
						end)
					end)
				end
			end

			local function shouldFetchFriendRequestCount(detailType)
				return function()
					describe("WHEN FriendShipNotifications is received", function()
						local signalREvent = {
							Type = detailType,
							namespace = "FriendshipNotifications",
						}

						it("SHOULD fetch friend request count", function()
							mount()
							fireSignalR(signalREvent)
							expect(fetchFriendRequestCountMockResponse).toHaveBeenCalledTimes(1)
						end)
					end)
				end
			end

			if not getFFlagSocialAddFriendshipRequestEvent() then
				describe("displayNameEvents", function()
					describe("WHEN DisplayNameNotifications is received", function()
						local signalREvent = {
							namespace = "DisplayNameNotifications",
							UserId = 123,
							NewDisplayName = "AnotherName",
						}

						it("SHOULD update the relevant users displayName", function()
							mount()
							fireSignalR(signalREvent)

							expect(mockStore.dispatch).toHaveBeenCalled()
							expect(mockStore.dispatch).toHaveBeenCalledWith(mockStore, {
								asymmetricMatch = function(_, action)
									if typeof(action) == "table" then
										return action.type == RoduxUsers.Actions.UserUpdated.name
											and RoduxUsers.Models.User.isValid(action.payload)
											and action.payload.id == "123"
											and action.payload.username == "maisie93"
											and action.payload.displayName == "AnotherName"
									else
										return false
									end
								end,
							})
						end)
					end)
				end)
			end

			describe("WHEN detailType is NewMessage", shouldNotFetchWhenLookingAtConversation("NewMessage"))
			describe(
				"WHEN detailType is MessageMarkedAsRead",
				shouldNotFetchWhenLookingAtConversation("MessageMarkedAsRead")
			)
			describe("WHEN detailType is RemovedFromConversation", shouldAlwaysFetch("RemovedFromConversation"))
			describe("WHEN detailType is ConversationRemoved", shouldAlwaysFetch("ConversationRemoved"))
			describe(
				"WHEN detail.Type is FriendshipDestroyed",
				shouldUpdateOnFriendshipDestroyed("FriendshipDestroyed")
			)

			if not getFFlagSocialAddFriendshipRequestEvent() then
				describe(
					"WHEN detail.Type is FriendshipRequested",
					shouldFetchFriendRequestCount("FriendshipRequested")
				)
				describe("WHEN detail.Type is FriendshipDeclined", shouldFetchFriendRequestCount("FriendshipDeclined"))
				describe("WHEN detail.Type is FriendshipCreated", shouldFetchFriendRequestCount("FriendshipCreated"))
			end
		end)
	end)
end)

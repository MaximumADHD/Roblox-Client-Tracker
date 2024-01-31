return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

	local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
	local ApolloProvider = ApolloClientModule.ApolloProvider

	local GraphQLServer = require(CorePackages.Workspace.Packages.GraphQLServer)
	local ApolloClientTestUtils = GraphQLServer.ApolloClientTestUtils
	local mockApolloClient = ApolloClientTestUtils.mockApolloClient

	local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

	local waitUntil = require(CorePackages.Workspace.Packages.TestUtils).waitUntil

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local Reducer = require(ContactList.Reducer)
	local FriendListContainer = require(ContactList.Components.FriendList.FriendListContainer)

	local dependencies = require(ContactList.dependencies)
	local EnumPresenceType = dependencies.RoduxCall.Enums.PresenceType
	local NetworkingFriends = dependencies.NetworkingFriends
	local NetworkingCall = dependencies.NetworkingCall
	local PresenceModel = dependencies.RoduxPresence.Models.Presence

	beforeAll(function(c: any)
		c.mockFindFriendsFromUserId = function(nextPageCursor)
			return {
				PageItems = {
					[1] = {
						id = "0",
					},
					[2] = {
						id = "1",
					},
				},
				NextCursor = nextPageCursor,
				PreviousCursor = nil,
			}
		end

		c.mockGetSuggestedCallees = function()
			return {
				suggestedCallees = {
					{
						userId = 0,
						userPresenceType = EnumPresenceType.Online,
						lastLocation = "Roblox Connect",
					},
					{
						userId = 1,
						userPresenceType = EnumPresenceType.Offline,
						lastLocation = "Iris (Staging)",
					},
				},
			}
		end

		c.mockApolloClient = mockApolloClient({})
		UserProfiles.TestUtils.writeProfileDataToCache(c.mockApolloClient, {
			["0"] = {
				combinedName = "display name 0",
				username = "user name 0",
			},
			["1"] = {
				combinedName = "display name 1",
				username = "user name 1",
			},
		})
	end)

	it("should mount and unmount without errors", function(c: any)
		local store = Rodux.Store.new(Reducer, {
			Presence = {
				byUserId = {
					["0"] = PresenceModel.format(PresenceModel.mock()),
					["1"] = PresenceModel.format(PresenceModel.mock()),
				},
			},
			Call = {
				suggestedCallees = c.mockGetSuggestedCallees(),
			},
		}, {
			Rodux.thunkMiddleware,
		})

		NetworkingFriends.FindFriendsFromUserId.Mock.clear()
		NetworkingFriends.FindFriendsFromUserId.Mock.reply(function()
			return {
				responseBody = c.mockFindFriendsFromUserId(nil),
			}
		end)

		NetworkingCall.GetSuggestedCallees.Mock.clear()
		NetworkingCall.GetSuggestedCallees.Mock.reply(function()
			return {
				responseBody = c.mockGetSuggestedCallees(),
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ApolloProvider = Roact.createElement(ApolloProvider, {
					client = c.mockApolloClient,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						FriendListContainer = Roact.createElement(FriendListContainer, {
							isSmallScreen = false,
							dismissCallback = function() end,
							scrollingEnabled = true,
							searchText = "",
						}),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local root = ReactRoblox.createRoot(folder)

		Roact.act(function()
			root:render(element)
		end)

		local containerElement = waitUntil(function()
			-- Wait for the Apollo promise to complete.
			local element = folder:FindFirstChild("FriendsScrollingFrame", true) :: ScrollingFrame
			return element ~= nil, element
		end, 1)
		-- 1 UIListLayout + 1 friend section header + 2 friend items + 1 suggested callees section header + 2 suggested callees
		expect(#containerElement:GetChildren()).toBe(7)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should still show friends if friends fetch succeeds but suggested callees fetch fails", function(c: any)
		local store = Rodux.Store.new(Reducer, {
			Presence = {
				byUserId = {
					["0"] = PresenceModel.format(PresenceModel.mock()),
					["1"] = PresenceModel.format(PresenceModel.mock()),
				},
			},
			Call = {
				suggestedCallees = {},
			},
		}, {
			Rodux.thunkMiddleware,
		})

		NetworkingFriends.FindFriendsFromUserId.Mock.clear()
		NetworkingFriends.FindFriendsFromUserId.Mock.reply(function()
			return {
				responseBody = c.mockFindFriendsFromUserId(nil),
			}
		end)

		NetworkingCall.GetSuggestedCallees.Mock.clear()
		NetworkingCall.GetSuggestedCallees.Mock.replyWithError("error")

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ApolloProvider = Roact.createElement(ApolloProvider, {
					client = c.mockApolloClient,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						FriendListContainer = Roact.createElement(FriendListContainer, {
							isSmallScreen = false,
							dismissCallback = function() end,
							scrollingEnabled = true,
							searchText = "",
						}),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local root = ReactRoblox.createRoot(folder)

		Roact.act(function()
			root:render(element)
		end)

		local containerElement = waitUntil(function()
			-- Wait for the Apollo promise to complete.
			local element = folder:FindFirstChild("FriendsScrollingFrame", true) :: ScrollingFrame
			return element ~= nil, element
		end, 1)
		-- 1 UIListLayout + 1 friend section header + 2 friend items
		expect(#containerElement:GetChildren()).toBe(4)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should show spinner on first load", function(c: any)
		local store = Rodux.Store.new(Reducer, {}, {
			Rodux.thunkMiddleware,
		})

		NetworkingFriends.FindFriendsFromUserId.Mock.clear()
		NetworkingCall.GetSuggestedCallees.Mock.clear()
		NetworkingCall.GetSuggestedCallees.Mock.replyWithError(function()
			return "error"
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ApolloProvider = Roact.createElement(ApolloProvider, {
					client = c.mockApolloClient,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						FriendListContainer = Roact.createElement(FriendListContainer, {
							isSmallScreen = false,
							dismissCallback = function() end,
							scrollingEnabled = true,
							searchText = "",
						}),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local root = ReactRoblox.createRoot(folder)

		Roact.act(function()
			root:render(element)
		end)

		local containerElement = folder:FindFirstChild("ScrollingFrame", true) :: ScrollingFrame
		expect(containerElement).toBeNull()
		local spinnerElement = folder:FindFirstChild("LoadingSpinner", true)
		expect(spinnerElement).never.toBeNull()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should not show spinner if no more pages", function(c: any)
		local store = Rodux.Store.new(Reducer, {}, {
			Rodux.thunkMiddleware,
		})

		NetworkingFriends.FindFriendsFromUserId.Mock.clear()
		NetworkingFriends.FindFriendsFromUserId.Mock.reply(function()
			return {
				responseBody = c.mockFindFriendsFromUserId(nil),
			}
		end)
		NetworkingCall.GetSuggestedCallees.Mock.clear()
		NetworkingCall.GetSuggestedCallees.Mock.replyWithError(function()
			return "error"
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ApolloProvider = Roact.createElement(ApolloProvider, {
					client = c.mockApolloClient,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						FriendListContainer = Roact.createElement(FriendListContainer, {
							isSmallScreen = false,
							dismissCallback = function() end,
							scrollingEnabled = true,
							searchText = "",
						}),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local root = ReactRoblox.createRoot(folder)

		Roact.act(function()
			root:render(element)
		end)

		local containerElement = waitUntil(function()
			-- Wait for the Apollo promise to complete.
			local element = folder:FindFirstChild("FriendsScrollingFrame", true) :: ScrollingFrame
			return element ~= nil, element
		end, 1)
		expect(containerElement).never.toBeNull()
		local spinnerElement = containerElement:FindFirstChild("LoadingSpinner", true)
		expect(spinnerElement).toBeNull()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should show error state if friends fetch fails", function(c: any)
		local store = Rodux.Store.new(Reducer, {}, {
			Rodux.thunkMiddleware,
		})

		NetworkingFriends.FindFriendsFromUserId.Mock.clear()
		NetworkingFriends.FindFriendsFromUserId.Mock.replyWithError(function()
			return "error"
		end)
		NetworkingCall.GetSuggestedCallees.Mock.clear()
		NetworkingCall.GetSuggestedCallees.Mock.replyWithError(function()
			return "error"
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ApolloProvider = Roact.createElement(ApolloProvider, {
					client = c.mockApolloClient,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						FriendListContainer = Roact.createElement(FriendListContainer, {
							isSmallScreen = false,
							dismissCallback = function() end,
							scrollingEnabled = true,
							searchText = "",
						}),
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local root = ReactRoblox.createRoot(folder)

		Roact.act(function()
			root:render(element)
		end)

		local containerElement = folder:FindFirstChild("ScrollingFrame", true) :: ScrollingFrame
		expect(containerElement).toBeNull()
		local failedButtonElement = folder:FindFirstChild("FailedButton", true)
		expect(failedButtonElement).never.toBeNull()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end

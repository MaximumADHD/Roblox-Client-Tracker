return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jest = JestGlobals.jest
	local jestExpect = JestGlobals.expect

	local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
	local ApolloProvider = ApolloClientModule.ApolloProvider

	local GraphQLServer = require(CorePackages.Workspace.Packages.GraphQLServer)
	local ApolloClientTestUtils = GraphQLServer.ApolloClientTestUtils
	local mockApolloClient = ApolloClientTestUtils.mockApolloClient

	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

	local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

	local waitUntil = require(CorePackages.Workspace.Packages.TestUtils).waitUntil

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local Reducer = require(ContactList.Reducer)
	local CallHistoryContainer = require(ContactList.Components.CallHistory.CallHistoryContainer)

	local dependencies = require(ContactList.dependencies)
	local NetworkingCall = dependencies.NetworkingCall

	beforeAll(function(c: any)
		c.mockCallHistory = function(nextPageCursor)
			return {
				callRecords = {
					{
						callId = "test_call_Id",
						callerId = 2,
						participants = {
							{
								userId = 1,
								displayName = "displayName_0",
								userName = "username_0",
							},
							{
								userId = 2,
								displayName = "displayName_1",
								userName = "username_1",
							},
						},
						status = "CallFinished",
						startUtc = 1681338167883,
						endUtc = 1681338335366,
						universeId = 123,
						placeId = 456,
					},
				},
				nextPageCursor = nextPageCursor,
				previousPageCursor = "",
			}
		end

		c.mockApolloClient = mockApolloClient({})
		UserProfiles.TestUtils.writeProfileDataToCache(c.mockApolloClient, {
			["1"] = {
				combinedName = "displayName_0",
				username = "username_0",
			},
			["2"] = {
				combinedName = "displayName_1",
				username = "username_1",
			},
		})
	end)

	it("should mount and unmount without errors", function(c: any)
		local store = Rodux.Store.new(Reducer, { Call = { callHistory = c.mockCallHistory("test_cursor") } }, {
			Rodux.thunkMiddleware,
		})

		NetworkingCall.GetCallHistory.Mock.clear()
		NetworkingCall.GetCallHistory.Mock.reply(function()
			return {
				responseBody = c.mockCallHistory("test_cursor"),
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
						CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
							dismissCallback = function() end,
							isSmallScreen = false,
							scrollingEnabled = true,
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
			local element = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			return element ~= nil, element
		end, 1)
		jestExpect(containerElement).never.toBeNull()
		local usernameElement: TextLabel = containerElement:FindFirstChild("Username", true) :: TextLabel
		local displayNameElement: TextLabel = containerElement:FindFirstChild("DisplayName", true) :: TextLabel
		jestExpect(usernameElement.Text).toEqual("@username_0")
		jestExpect(displayNameElement.Text).toEqual("displayName_0")
		local spinnerElement = containerElement:FindFirstChild("LoadingSpinner", true)
		jestExpect(spinnerElement).never.toBeNull()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should show spinner on first load", function(c: any)
		local store = Rodux.Store.new(Reducer, {
			Call = { callHistory = { callRecords = {}, nextPageCursor = "", previousPageCursor = "" } },
		}, {
			Rodux.thunkMiddleware,
		})

		NetworkingCall.GetCallHistory.Mock.clear()

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
						CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
							dismissCallback = function() end,
							isSmallScreen = false,
							scrollingEnabled = true,
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
		jestExpect(containerElement).toBeNull()
		local spinnerElement = folder:FindFirstChild("LoadingSpinner", true)
		jestExpect(spinnerElement).never.toBeNull()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should not show spinner if no more pages", function(c: any)
		local store = Rodux.Store.new(Reducer, {
			Call = { callHistory = { callRecords = {}, nextPageCursor = "", previousPageCursor = "" } },
		}, {
			Rodux.thunkMiddleware,
		})

		NetworkingCall.GetCallHistory.Mock.clear()
		NetworkingCall.GetCallHistory.Mock.reply(function()
			return {
				responseBody = c.mockCallHistory(""),
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
						CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
							dismissCallback = function() end,
							isSmallScreen = false,
							scrollingEnabled = true,
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
			local element = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			return element ~= nil, element
		end, 1)
		jestExpect(containerElement).never.toBeNull()
		local spinnerElement = containerElement:FindFirstChild("LoadingSpinner", true)
		jestExpect(spinnerElement).toBeNull()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should show error state if fetch fails", function(c: any)
		local store = Rodux.Store.new(Reducer, {
			Call = { callHistory = { callRecords = {}, nextPageCursor = "", previousPageCursor = "" } },
		}, {
			Rodux.thunkMiddleware,
		})

		NetworkingCall.GetCallHistory.Mock.clear()
		NetworkingCall.GetCallHistory.Mock.replyWithError(function()
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
						CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
							dismissCallback = function() end,
							isSmallScreen = false,
							scrollingEnabled = true,
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
		jestExpect(containerElement).toBeNull()
		local failedButtonElement = folder:FindFirstChild("FailedButton", true)
		jestExpect(failedButtonElement).never.toBeNull()

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should load more items when scrolling near the bottom", function(c: any)
		-- Start off with items so that we have a list to show.
		local store = Rodux.Store.new(Reducer, {
			Call = {
				callHistory = c.mockCallHistory("test_cursor"),
			},
		}, {
			Rodux.thunkMiddleware,
		})

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
						CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
							dismissCallback = function() end,
							isSmallScreen = false,
							scrollingEnabled = true,
						}),
					}),
				}),
			}),
		})

		local mockGetCallHistory = jest.fn()
		NetworkingCall.GetCallHistory.Mock.clear()
		NetworkingCall.GetCallHistory.Mock.reply(function()
			mockGetCallHistory()
			return {
				responseBody = c.mockCallHistory("test_cursor"),
			}
		end)

		local frame = Instance.new("Frame")
		-- We assume this size is small enough to ensure we have a scroll bar.
		frame.Size = UDim2.new(1, 0, 0, 32)
		local root = ReactRoblox.createRoot(frame)

		Roact.act(function()
			root:render(element)
		end)

		local containerElement = waitUntil(function()
			-- Wait for the Apollo promise to complete.
			local element = frame:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			return element ~= nil, element
		end, 1)
		jestExpect(containerElement).never.toBeNull()

		-- Fetch the data first when component get mounted
		jestExpect(mockGetCallHistory).toHaveBeenCalledTimes(1)

		Roact.act(function()
			-- Scroll to the bottom.
			containerElement.CanvasPosition =
				Vector2.new(0, containerElement.AbsoluteCanvasSize.Y - containerElement.AbsoluteSize.Y)
			task.wait()
		end)

		-- Fetch the data second when scroll to bottom
		jestExpect(mockGetCallHistory).toHaveBeenCalledTimes(2)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should not load more items when fetch fails", function(c: any)
		-- Start off with items so that we have a list to show.
		local store = Rodux.Store.new(Reducer, {
			Call = {
				callHistory = c.mockCallHistory("test_cursor"),
			},
		}, {
			Rodux.thunkMiddleware,
		})

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
						CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
							dismissCallback = function() end,
							isSmallScreen = false,
							scrollingEnabled = true,
						}),
					}),
				}),
			}),
		})

		-- First fetch is good.
		local mockGetCallHistory = jest.fn()
		NetworkingCall.GetCallHistory.Mock.clear()
		NetworkingCall.GetCallHistory.Mock.reply(function()
			mockGetCallHistory()
			return {
				responseBody = c.mockCallHistory("test_cursor"),
			}
		end)

		local frame = Instance.new("Frame")
		-- We assume this size is small enough to ensure we have a scroll bar.
		frame.Size = UDim2.new(1, 0, 0, 32)
		local root = ReactRoblox.createRoot(frame)

		Roact.act(function()
			root:render(element)
		end)

		local containerElement = waitUntil(function()
			-- Wait for the Apollo promise to complete.
			local element = frame:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			return element ~= nil, element
		end, 1)
		jestExpect(containerElement).never.toBeNull()

		-- Fetch the initial page when component get mounted
		jestExpect(mockGetCallHistory).toHaveBeenCalledTimes(1)

		-- Second page will fail.
		NetworkingCall.GetCallHistory.Mock.clear()
		NetworkingCall.GetCallHistory.Mock.replyWithError(function()
			mockGetCallHistory()
			return "error"
		end)

		Roact.act(function()
			-- Scroll to the bottom.
			containerElement.CanvasPosition =
				Vector2.new(0, containerElement.AbsoluteCanvasSize.Y - containerElement.AbsoluteSize.Y)
			task.wait()
		end)

		-- Fetch the second page and get an error.
		jestExpect(mockGetCallHistory).toHaveBeenCalledTimes(2)

		Roact.act(function()
			-- Scroll to the top.
			containerElement.CanvasPosition = Vector2.new(0, 0)
			task.wait()
		end)

		Roact.act(function()
			-- Scroll to the bottom.
			containerElement.CanvasPosition =
				Vector2.new(0, containerElement.AbsoluteCanvasSize.Y - containerElement.AbsoluteSize.Y)
			task.wait()
		end)

		-- Should not fetch a third page because the second failed.
		jestExpect(mockGetCallHistory).toHaveBeenCalledTimes(2)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end

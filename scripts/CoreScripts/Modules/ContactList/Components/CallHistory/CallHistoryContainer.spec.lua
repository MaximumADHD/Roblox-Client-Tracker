return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jest = JestGlobals.jest
	local jestExpect = JestGlobals.expect

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local Reducer = require(ContactList.Reducer)
	local CallHistoryContainer = require(ContactList.Components.CallHistory.CallHistoryContainer)

	local dependencies = require(ContactList.dependencies)
	local NetworkingCall = dependencies.NetworkingCall

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	beforeAll(function(c: any)
		c.mockCallHistory = {
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
			nextPageCursor = "test_cursor",
			previousPageCursor = "",
		}
	end)

	it("should mount and unmount without errors", function(c: any)
		local store = Rodux.Store.new(Reducer, { Call = { callHistory = c.mockCallHistory } }, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
					dismissCallback = function() end,
					searchText = "",
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
		jestExpect(containerElement).never.toBeNull()
		local usernameElement: TextLabel = containerElement:FindFirstChild("Username", true) :: TextLabel
		local displayNameElement: TextLabel = containerElement:FindFirstChild("DisplayName", true) :: TextLabel
		jestExpect(usernameElement.Text).toEqual("@username_0")
		jestExpect(displayNameElement.Text).toEqual("displayName_0")

		Roact.unmount(instance)
	end)

	describe("search filtering", function(c: any)
		it("should correctly show matched usernames", function(c: any)
			local store = Rodux.Store.new(Reducer, { Call = { callHistory = c.mockCallHistory } }, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
						dismissCallback = function() end,
						searchText = "username_1",
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			-- UIListLayout + 1 friend items
			jestExpect(#containerElement:GetChildren()).toBe(2)
			Roact.unmount(instance)
		end)

		it("should correctly show matched displayNames", function(c: any)
			local store = Rodux.Store.new(Reducer, { Call = { callHistory = c.mockCallHistory } }, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
						dismissCallback = function() end,
						searchText = "displayName_1",
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			-- UIListLayout + 1 friend items
			jestExpect(#containerElement:GetChildren()).toBe(2)
			Roact.unmount(instance)
		end)

		it("should not show anything if neither username nor displayName match", function(c: any)
			local store = Rodux.Store.new(Reducer, { Call = { callHistory = c.mockCallHistory } }, {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
						dismissCallback = function() end,
						searchText = "abcdef",
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
			-- UIListLayout
			jestExpect(#containerElement:GetChildren()).toBe(1)
			Roact.unmount(instance)
		end)
	end)

	it("should load more items when scrolling near the bottom", function(c: any)
		local store = Rodux.Store.new(Reducer, {}, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				CallHistoryContainer = Roact.createElement(CallHistoryContainer, {
					dismissCallback = function() end,
					searchText = "",
				}),
			}),
		})

		local mockGetCallHistory = jest.fn()
		NetworkingCall.GetCallHistory.Mock.clear()
		NetworkingCall.GetCallHistory.Mock.reply(function()
			mockGetCallHistory()
			return {
				responseBody = c.mockCallHistory,
			}
		end)

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
		jestExpect(containerElement).never.toBeNull()

		-- Fetch the data first when component get mounted
		jestExpect(mockGetCallHistory).toHaveBeenCalledTimes(1)

		-- Set scroll position to bottom
		Roact.act(function()
			containerElement.CanvasPosition =
				Vector2.new(0, containerElement.AbsoluteCanvasSize.Y - containerElement.AbsoluteSize.Y)
			task.wait()
		end)

		-- Fetch the data second when scroll to bottom
		jestExpect(mockGetCallHistory).toHaveBeenCalledTimes(2)

		Roact.unmount(instance)
	end)
end

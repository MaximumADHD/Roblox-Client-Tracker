return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local ContactListContainer = require(script.Parent.ContactListContainer)
	local Reducer = require(script.Parent.Parent.Reducer)
	local Pages = require(script.Parent.Parent.Enums.Pages)

	local mockState = function(currentPage, currentCall)
		return {
			Call = {
				callHistory = {
					callRecords = {
						{
							callId = "test_call_Id",
							callerId = 1,
							participants = {
								{
									userId = 1,
									displayName = "testuser_0",
									userName = "testuser_0",
								},
								{
									userId = 2,
									displayName = "testuser_1",
									userName = "testuser_1",
								},
							},
							status = "CallFinished",
							startUtc = 1681338167883,
							endUtc = 1681338335366,
							universeId = 123,
							placeId = 456,
						},
						{
							callId = "test_call_Id",
							callerId = 1,
							participants = {
								{
									userId = 1,
									displayName = "testuser_0",
									userName = "testuser_0",
								},
								{
									userId = 2,
									displayName = "testuser_1",
									userName = "testuser_1",
								},
							},
							status = "CallMissed",
							startUtc = 1681338167883,
							endUtc = 1681338335366,
							universeId = 123,
							placeId = 456,
						},
						{
							callId = "test_call_Id",
							callerId = 1,
							participants = {
								{
									userId = 1,
									displayName = "testuser_0",
									userName = "testuser_0",
								},
								{
									userId = 2,
									displayName = "testuser_1",
									userName = "testuser_1",
								},
							},
							status = "CallDeclined",
							startUtc = 1681338167883,
							endUtc = 1681338335366,
							universeId = 123,
							placeId = 456,
						},
					},
				},
				currentCall = currentCall,
			},
			Navigation = {
				currentPage = currentPage,
			},
		}
	end

	it("should mount and unmount without errors when all elements hidden", function()
		local store = Rodux.Store.new(Reducer, mockState(nil, nil), {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				ContactListContainer = Roact.createElement(ContactListContainer),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local callHistoryContainerElement = folder:FindFirstChild("CallHistoryContainer", true)
		expect(callHistoryContainerElement).toBeNull()

		local friendListContainerElement = folder:FindFirstChild("FriendListContainer", true)
		expect(friendListContainerElement).toBeNull()

		local callBarElement = folder:FindFirstChild("CallBarContainer", true)
		expect(callBarElement).toBeNull()

		Roact.unmount(instance)
	end)

	describe("CallHistoryContainer", function()
		it("should mount and unmount without errors when call history visible", function()
			local store = Rodux.Store.new(Reducer, mockState(Pages.CallHistory, nil), {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						ContactListContainer = Roact.createElement(ContactListContainer),
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChild("ContentContainer", true)
			expect(containerElement).never.toBeNull()
			Roact.unmount(instance)
		end)
	end)

	describe("FriendListContainer", function()
		it("should mount and unmount without errors when friend list visible", function()
			local store = Rodux.Store.new(Reducer, mockState(Pages.FriendList, nil), {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						ContactListContainer = Roact.createElement(ContactListContainer),
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChild("ContentContainer", true)
			expect(containerElement).never.toBeNull()
			Roact.unmount(instance)
		end)
	end)

	describe("ScreenSize", function()
		it("should not mount with a PeekView", function()
			local store = Rodux.Store.new(Reducer, mockState(Pages.FriendList, nil), {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						ContactListContainer = Roact.createElement(ContactListContainer),
					}),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChild("ContentContainer", true)
			expect(containerElement).never.toBeNull()
			local peekView = folder:FindFirstChild("PeekView")
			-- Expect to be nil because default screen size in testing is not small
			expect(peekView).toBeNull()
			Roact.unmount(instance)
		end)
	end)
end

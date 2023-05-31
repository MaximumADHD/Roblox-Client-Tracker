return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList
	local dependencies = require(ContactList.dependencies)
	local RoduxCall = dependencies.RoduxCall

	local ContactListApp = require(script.Parent.ContactListApp)
	local Reducer = require(script.Parent.Parent.Reducer)
	local Pages = require(script.Parent.Parent.Enums.Pages)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	local mockState = function(currentPage, currentCall, callDetailParticipants)
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
				callDetailParticipants = callDetailParticipants,
			},
		}
	end

	it("should mount and unmount without errors when all elements hidden", function()
		local store = Rodux.Store.new(Reducer, mockState(nil, nil, nil), {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				ContactListApp = Roact.createElement(ContactListApp),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local callDetailsContainerElement = folder:FindFirstChild("CallDetailsContainer", true)
		expect(callDetailsContainerElement).never.to.be.ok()

		local callHistoryContainerElement = folder:FindFirstChild("CallHistoryContainer", true)
		expect(callHistoryContainerElement).never.to.be.ok()

		local callBarElement = folder:FindFirstChild("CallBarContainer", true)
		expect(callBarElement).never.to.be.ok()

		Roact.unmount(instance)
	end)

	describe("CallDetailsContainer", function()
		it("should mount and unmount without errors when call details is visible", function()
			local store =
				Rodux.Store.new(Reducer, mockState(Pages.CallDetails, nil, { { userId = 1, username = "TestUser" } }), {
					Rodux.thunkMiddleware,
				})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					ContactListApp = Roact.createElement(ContactListApp),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChild("Container", true)
			expect(containerElement).to.be.ok()
			Roact.unmount(instance)
		end)
	end)

	describe("CallHistoryContainer", function()
		it("should mount and unmount without errors when call history visible", function()
			local store = Rodux.Store.new(Reducer, mockState(Pages.CallHistory, nil, nil), {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					ContactListApp = Roact.createElement(ContactListApp),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChild("Container", true)
			expect(containerElement).to.be.ok()
			Roact.unmount(instance)
		end)
	end)

	describe("FriendListContainer", function()
		it("should mount and unmount without errors when friend list visible", function()
			local store = Rodux.Store.new(Reducer, mockState(Pages.FriendList, nil, nil), {
				Rodux.thunkMiddleware,
			})

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					ContactListApp = Roact.createElement(ContactListApp),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local containerElement = folder:FindFirstChild("Container", true)
			expect(containerElement).to.be.ok()
			Roact.unmount(instance)
		end)
	end)

	describe("CallBar", function()
		it("should mount and unmount without errors when call bar visible", function()
			local store = Rodux.Store.new(
				Reducer,
				mockState(nil, {
					status = RoduxCall.Enums.Status.Active.rawValue(),
					callerId = 11111111,
					calleeId = 12345678,
					placeId = 789,
					callId = "123456",
					callerDisplayName = "Display Name 1",
					calleeDisplayName = "Display Name 2",
					gameInstanceId = "gameId",
				}, nil),
				{
					Rodux.thunkMiddleware,
				}
			)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					ContactListApp = Roact.createElement(ContactListApp),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)
			local callBarElement = folder:FindFirstChild("CallBarContainer", true)
			expect(callBarElement).to.be.ok()
			Roact.unmount(instance)
		end)
	end)
end

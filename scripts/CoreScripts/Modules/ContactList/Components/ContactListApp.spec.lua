return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local ContactListApp = require(script.Parent.ContactListApp)
	local OutgoingCallState = require(script.Parent.Parent.Enums.OutgoingCallState)
	local Reducer = require(script.Parent.Parent.Reducer)
	local Pages = require(script.Parent.Parent.Enums.Pages)

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	local mockState = function(currentPage, currentCall, callDetailParticipants)
		return {
			Call = {
				callList = {
					{
						createdUtc = 1666635183000,
						participants = {
							{
								userId = 3447649029,
								username = "jovocados",
							},
						},
						state = "Outgoing",
					},
					{
						createdUtc = 1665635183000,
						participants = {
							{
								userId = 2591489824,
								username = "corgichu8",
							},
						},
						state = "Incoming",
					},
					{
						createdUtc = 1664635183000,
						participants = {
							{
								userId = 2591622000,
								username = "hamulgg",
							},
						},
						state = "Missed",
					},
				},
			},
			CurrentCall = currentCall,
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

		local callerListContainerElement = folder:FindFirstChild("CallerListContainer", true)
		expect(callerListContainerElement).never.to.be.ok()

		local notificationElement = folder:FindFirstChild("CallerNotificationContainer", true)
		expect(notificationElement).never.to.be.ok()

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

	describe("CallerListContainer", function()
		it("should mount and unmount without errors when caller list visible", function()
			local store = Rodux.Store.new(Reducer, mockState(Pages.CallerList, nil, nil), {
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

	describe("CallerNotification", function()
		it("should mount and unmount without errors when caller notification visible", function()
			local store = Rodux.Store.new(
				Reducer,
				mockState(
					nil,
					{ callId = 1, userId = 123, username = "TestUser", state = OutgoingCallState.Calling },
					nil
				),
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
			local notificationElement = folder:FindFirstChild("CallerNotificationContainer", true)
			expect(notificationElement).to.be.ok()
			Roact.unmount(instance)
		end)
	end)
end

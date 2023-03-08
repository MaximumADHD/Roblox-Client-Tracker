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

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	local mockState = function(contactListVisible, currentCall)
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
				contactListVisible = contactListVisible,
			},
		}
	end

	it("should mount and unmount without errors when all elements hidden", function()
		local store = Rodux.Store.new(Reducer, mockState(false, nil), {
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

		local containerElement = folder:FindFirstChild("CallerListContainer", true)
		expect(containerElement).never.to.be.ok()

		local notificationElement = folder:FindFirstChild("CallerNotificationContainer", true)
		expect(notificationElement).never.to.be.ok()

		Roact.unmount(instance)
	end)

	describe("CallerListContainer", function()
		it("should mount and unmount without errors when caller list visible", function()
			local store = Rodux.Store.new(Reducer, mockState(true, nil), {
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
			local containerElement = folder:FindFirstChild("CallerListContainer", true)
			expect(containerElement).to.be.ok()
			Roact.unmount(instance)
		end)
	end)

	describe("CallerNotification", function()
		it("should mount and unmount without errors when caller notification visible", function()
			local store = Rodux.Store.new(
				Reducer,
				mockState(false, { callId = 1, userId = 123, username = "TestUser", state = OutgoingCallState.Calling }),
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

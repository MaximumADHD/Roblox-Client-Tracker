return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local ReceivedUserInviteStatus = require(InGameMenu.Actions.ReceivedUserInviteStatus)


	local Constants = require(InGameMenu.Resources.Constants)
	local InviteStatus = Constants.InviteStatus

	local FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local InviteFriendsList = require(script.Parent.InviteFriendsList)

	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

	it("should create and destroy without errors", function()
		local inviteFriendsList = Roact.createElement(InviteFriendsList, {
			friends = {
				{
					Id = 2231221,
					IsOnline = true,
					Username = "TheGamer101",
					DisplayName = "TestDisplayName",
				},
				{
					Id = 261,
					IsOnline = false,
					Username = "Shedletsky",
					DisplayName = "TestDisplayName",
				},
			},
			canCaptureFocus = true,
			searchBoxRef = Roact.createRef(),
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
						InviteFriendsList = inviteFriendsList,
					}) or nil,
					InviteFriendsList = not GetFFlagIGMGamepadSelectionHistory() and inviteFriendsList or nil,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should not throw erros when invite state is updated", function()
		local store = Rodux.Store.new(reducer)

		local inviteFriendsList = Roact.createElement(InviteFriendsList, {
			friends = {
				{
					Id = 2231221,
					IsOnline = true,
					Username = "TheGamer101",
					DisplayName = "TestDisplayName",
				},
				{
					Id = 261,
					IsOnline = false,
					Username = "Shedletsky",
					DisplayName = "TestDisplayName",
				},
			},
			canCaptureFocus = true,
			searchBoxRef = Roact.createRef(),
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
						InviteFriendsList = inviteFriendsList,
					}) or nil,
					InviteFriendsList = not GetFFlagIGMGamepadSelectionHistory() and inviteFriendsList or nil,
				}),
			}),
		})

		local instance = Roact.mount(element)

		store:dispatch(ReceivedUserInviteStatus(261, InviteStatus.Failed))
		store:flush()

		Roact.unmount(instance)
	end)
end

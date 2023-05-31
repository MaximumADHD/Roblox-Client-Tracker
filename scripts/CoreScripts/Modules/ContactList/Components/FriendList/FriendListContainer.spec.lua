return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local Reducer = require(ContactList.Reducer)
	local FriendListContainer = require(ContactList.Components.FriendList.FriendListContainer)

	local dependencies = require(ContactList.dependencies)
	local PresenceModel = dependencies.RoduxPresence.Models.Presence

	local appStyle = {
		Font = AppFont,
		Theme = AppDarkTheme,
	}

	it("should mount and unmount without errors", function()
		local store = Rodux.Store.new(Reducer, {
			NetworkStatus = {},
			Presence = {
				byUserId = {
					["00000000"] = PresenceModel.format(PresenceModel.mock()),
					["11111111"] = PresenceModel.format(PresenceModel.mock()),
				},
			},
			Users = {
				byUserId = {
					["00000000"] = {
						id = "00000000",
						username = "user name 0",
						displayName = "display name 0",
						hasVerifiedBadge = false,
					},
					["11111111"] = {
						id = "11111111",
						username = "user name 1",
						displayName = "display name 1",
						hasVerifiedBadge = false,
					},
				},
			},
			Friends = {
				byUserId = {
					["12345678"] = {
						"00000000",
						"11111111",
					},
				},
			},
		}, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				FriendListContainer = Roact.createElement(FriendListContainer, {
					localUserId = 12345678,
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local containerElement = folder:FindFirstChildOfClass("ScrollingFrame") :: ScrollingFrame
		-- UIListLayout + 2 friend items
		expect(#containerElement:GetChildren()).toBe(3)
		Roact.unmount(instance)
	end)
end

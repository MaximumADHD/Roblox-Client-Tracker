return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)
	local Reducer = require(ContactList.Reducer)

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
					["12345678"] = PresenceModel.format(PresenceModel.mock()),
				},
			},
			Users = {
				byUserId = {
					["12345678"] = {
						id = "12345678",
						username = "user name",
						displayName = "display name",
						hasVerifiedBadge = false,
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
				FriendListItem = Roact.createElement(FriendListItem, { userId = "12345678" }),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
		local displayNameElement: TextLabel = folder:FindFirstChild("DisplayName", true) :: TextLabel
		expect(usernameElement.Text).toBe("@user name")
		expect(displayNameElement.Text).toBe("display name")
		Roact.unmount(instance)
	end)
end

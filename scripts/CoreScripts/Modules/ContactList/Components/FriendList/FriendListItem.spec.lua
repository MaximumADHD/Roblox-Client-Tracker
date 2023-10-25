return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")

	local ContactList = RobloxGui.Modules.ContactList

	local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)
	local Reducer = require(ContactList.Reducer)

	local dependencies = require(ContactList.dependencies)
	local PresenceModel = dependencies.RoduxPresence.Models.Presence

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
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				FriendListItem = Roact.createElement(FriendListItem, {
					userId = "12345678",
					userName = "user name",
					combinedName = "display name",
					dismissCallback = function() end,
					showDivider = true,
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)
		local usernameElement: TextLabel = folder:FindFirstChild("Username", true) :: TextLabel
		local combinedNameElement: TextLabel = folder:FindFirstChild("CombinedName", true) :: TextLabel
		expect(usernameElement.Text).toBe("@user name")
		expect(combinedNameElement.Text).toBe("display name")
		Roact.unmount(instance)
	end)
end

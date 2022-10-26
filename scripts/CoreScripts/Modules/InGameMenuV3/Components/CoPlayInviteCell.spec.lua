--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox
	local Cryo = InGameMenuDependencies.Cryo

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local CoPlayInviteCell = require(script.Parent.CoPlayInviteCell)

	local function getMountableTreeAndStore(props, friends)
		local store = Rodux.Store.new(reducer, {})
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					CoPlayInviteCell = Roact.createElement(
						CoPlayInviteCell,
						Cryo.Dictionary.join(props or {}, {
							friends = friends,
						})
					),
				}),
			}),
		})

		return element, store
	end

	it("should create and destroy without errors", function()
		local element = getMountableTreeAndStore(nil, {})
		local instance = Roact.mount(element)
		expect(instance).toBeDefined()
		Roact.unmount(instance)
	end)

	describe("online friend scenarios", function()
		it("with no online friends, friend avater should not show", function()
			local element = getMountableTreeAndStore(nil, {
				{
					Id = 1234,
					IsOnline = false,
					Username = "a",
					Displayname = "a",
				},
			})
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			local tailContainer = folder:FindFirstChild("CellTail", true)
			expect(tailContainer).toBeDefined()

			-- ensure UI is reflecting as no friends were online
			local onlineFriends = tailContainer:FindFirstChild("OnlineFriends")
			expect(onlineFriends).toBeNil()

			Roact.unmount(instance)
		end)

		it("with 1 online friend, friend avater should show", function()
			local element = getMountableTreeAndStore(nil, {
				{
					Id = 1234,
					IsOnline = true,
					Username = "a",
					Displayname = "a",
				},
				{
					Id = 1238,
					IsOnline = false,
					Username = "b",
					Displayname = "b",
				},
			})
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			local tailContainer = folder:FindFirstChild("CellTail", true)
			expect(tailContainer).toBeDefined()

			local onlineFriends = tailContainer:FindFirstChild("OnlineFriends", true)
			expect(onlineFriends).toBeDefined()
			local children = onlineFriends:GetChildren()
			expect(children).toBeDefined()

			-- ensure that children has 2 elements: number of online label + mini avatars
			expect(#children).toBe(2)

			local miniAvatar = onlineFriends:FindFirstChild("mini_avatar_1234")
			expect(miniAvatar).toBeDefined()
			expect(miniAvatar.Position.X.Offset).toBe(24)

			Roact.unmount(instance)
		end)

		it("with 2 online friends, friend avater should show", function()
			local element = getMountableTreeAndStore(nil, {
				{
					Id = 1234,
					IsOnline = true,
					Username = "a",
					Displayname = "a",
				},
				{
					Id = 1235,
					IsOnline = true,
					Username = "b",
					Displayname = "b",
				},
				{
					Id = 1238,
					IsOnline = false,
					Username = "c",
					Displayname = "c",
				},
			})
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			local tailContainer = folder:FindFirstChild("CellTail", true)
			expect(tailContainer).toBeDefined()

			local onlineFriends = tailContainer:FindFirstChild("OnlineFriends", true)
			expect(onlineFriends).toBeDefined()
			local children = onlineFriends:GetChildren()
			expect(children).toBeDefined()

			-- ensure that children has 3 elements: number of online label + mini avatars
			expect(#children).toBe(3)

			local miniAvatar1 = onlineFriends:FindFirstChild("mini_avatar_1234")
			expect(miniAvatar1).toBeDefined()
			expect(miniAvatar1.Position.X.Offset).toBe(24)

			local miniAvatar2 = onlineFriends:FindFirstChild("mini_avatar_1235")
			expect(miniAvatar2).toBeDefined()
			expect(miniAvatar2.Position.X.Offset).toBe(16)

			Roact.unmount(instance)
		end)

		it("with 3 online friends, friend avater should show", function()
			local element = getMountableTreeAndStore(nil, {
				{
					Id = 1234,
					IsOnline = true,
					Username = "a",
					Displayname = "a",
				},
				{
					Id = 1235,
					IsOnline = true,
					Username = "b",
					Displayname = "b",
				},
				{
					Id = 1236,
					IsOnline = true,
					Username = "c",
					Displayname = "c",
				},
				{
					Id = 1238,
					IsOnline = false,
					Username = "d",
					Displayname = "d",
				},
			})
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			local tailContainer = folder:FindFirstChild("CellTail", true)
			expect(tailContainer).toBeDefined()

			local onlineFriends = tailContainer:FindFirstChild("OnlineFriends", true)
			expect(onlineFriends).toBeDefined()
			local children = onlineFriends:GetChildren()
			expect(children).toBeDefined()

			-- ensure that children has 4 elements: number of online label + mini avatars
			expect(#children).toBe(4)

			local miniAvatar1 = onlineFriends:FindFirstChild("mini_avatar_1234")
			expect(miniAvatar1).toBeDefined()
			expect(miniAvatar1.Position.X.Offset).toBe(24)

			local miniAvatar2 = onlineFriends:FindFirstChild("mini_avatar_1235")
			expect(miniAvatar2).toBeDefined()
			expect(miniAvatar2.Position.X.Offset).toBe(16)

			local miniAvatar3 = onlineFriends:FindFirstChild("mini_avatar_1236")
			expect(miniAvatar3).toBeDefined()
			expect(miniAvatar3.Position.X.Offset).toBe(8)

			Roact.unmount(instance)
		end)

		it("with 4 online friends, friend avater should show and cap mini avatars at 3", function()
			local element = getMountableTreeAndStore(nil, {
				{
					Id = 1234,
					IsOnline = true,
					Username = "a",
					Displayname = "a",
				},
				{
					Id = 1235,
					IsOnline = true,
					Username = "b",
					Displayname = "b",
				},
				{
					Id = 1236,
					IsOnline = true,
					Username = "c",
					Displayname = "c",
				},
				{
					Id = 1237,
					IsOnline = true,
					Username = "d",
					Displayname = "d",
				},
				{
					Id = 1238,
					IsOnline = false,
					Username = "e",
					Displayname = "e",
				},
			})
			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			local tailContainer = folder:FindFirstChild("CellTail", true)
			expect(tailContainer).toBeDefined()

			local onlineFriends = tailContainer:FindFirstChild("OnlineFriends", true)
			expect(onlineFriends).toBeDefined()
			local children = onlineFriends:GetChildren()
			expect(children).toBeDefined()

			-- ensure that children has 4 elements: number of online label + mini avatars
			expect(#children).toBe(4)

			local miniAvatar1 = onlineFriends:FindFirstChild("mini_avatar_1234")
			expect(miniAvatar1).toBeDefined()
			expect(miniAvatar1.Position.X.Offset).toBe(24)

			local miniAvatar2 = onlineFriends:FindFirstChild("mini_avatar_1235")
			expect(miniAvatar2).toBeDefined()
			expect(miniAvatar2.Position.X.Offset).toBe(16)

			local miniAvatar3 = onlineFriends:FindFirstChild("mini_avatar_1236")
			expect(miniAvatar3).toBeDefined()
			expect(miniAvatar3.Position.X.Offset).toBe(8)

			local miniAvatar4 = onlineFriends:FindFirstChild("mini_avatar_1237")
			expect(miniAvatar4).toBeNil()

			Roact.unmount(instance)
		end)
	end)
end

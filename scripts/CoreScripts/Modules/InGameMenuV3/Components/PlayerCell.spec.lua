return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local PlayerCell = require(script.Parent.PlayerCell)

	local function getMountableTreeAndStore(props)
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, props or {})

			}),
		})
		return element
	end

	it("should create and destroy without errors...", function()
		local element = getMountableTreeAndStore({
			PlayerCell = Roact.createElement(PlayerCell, {
				userId = 2231221,
				username = "TheGamer101",
				displayName = "DisplayName",
				isOnline = true,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,

				onActivated = function()
					print("clicked")
				end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should always create and display username and displayname", function()

		local PLAYER1_USERNAME = "TheGamer101"
		local PLAYER1_DISPLAYNAME = "TheGamer101"
		local PLAYER2_USERNAME = "mcfly1985"
		local PLAYER2_DISPLAYNAME = "Marty"

		local element = getMountableTreeAndStore({
			PlayerCell1 = Roact.createElement(PlayerCell, {
				userId = 2231221,
				username = PLAYER1_USERNAME,
				displayName = "",
				isOnline = true,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,
			}),
			PlayerCell2 = Roact.createElement(PlayerCell, {
				userId = 2231222,
				username = PLAYER2_USERNAME,
				displayName = PLAYER2_DISPLAYNAME,
				isOnline = true,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,
			})
		})

		local instance = Instance.new("Frame");
		local players = Roact.mount(element, instance)

		local validatePlayer = function(playerName, userName, displayName)
			local label = instance:FindFirstChild(playerName)
			expect(label).never.to.equal(nil)

			local displayNameLabel = label:FindFirstChild("DisplayNameLabel")
			local usernameLabel = label:FindFirstChild("UsernameLabel")
			expect(displayNameLabel).never.to.equal(nil)
			expect(usernameLabel).never.to.equal(nil)
			expect(usernameLabel.Visible).to.equal(true)
			expect(displayNameLabel.Visible).to.equal(true)
			expect(usernameLabel.Text).to.equal("@" .. userName)
			expect(displayNameLabel.Text).to.equal(displayName)
		end

		validatePlayer("PlayerCell1", PLAYER1_USERNAME, PLAYER1_DISPLAYNAME)
		validatePlayer("PlayerCell2", PLAYER2_USERNAME, PLAYER2_DISPLAYNAME)

		Roact.unmount(players)
	end)

	it("should accept and assign refs", function()
		local ref = Roact.createRef()

		local element = getMountableTreeAndStore({
			PlayerCell = Roact.createElement(PlayerCell, {
				userId = 2231221,
				username = "TheGamer101",
				displayName = "DisplayName",
				isOnline = true,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,

				[Roact.Ref] = ref,

				onActivated = function()
					print("clicked")
				end,
			}),
		})

		local instance = Roact.mount(element)
		expect(ref.current).to.be.ok()
		expect(ref.current:IsA("Instance")).to.equal(true)
		Roact.unmount(instance)
	end)

	it("should show or hide online presence indicator if use is online or offline respectively", function()
		local PLAYER1_USERNAME = "TheGamer101"
		local PLAYER1_DISPLAYNAME = "TheGamer101"
		local PLAYER2_USERNAME = "mcfly1985"
		local PLAYER2_DISPLAYNAME = "Marty"
		local PLAYER1_ONLINE_STATUS = true
		local PLAYER2_ONLINE_STATUS = false

		local element = getMountableTreeAndStore({
			PlayerCell1 = Roact.createElement(PlayerCell, {
				userId = 2231221,
				username = PLAYER1_USERNAME,
				displayName = PLAYER1_DISPLAYNAME,
				isOnline = PLAYER1_ONLINE_STATUS,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,
			}),
			PlayerCell2 = Roact.createElement(PlayerCell, {
				userId = 2231222,
				username = PLAYER2_USERNAME,
				displayName = PLAYER2_DISPLAYNAME,
				isOnline = PLAYER2_ONLINE_STATUS,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,
			})
		})

		local instance = Instance.new("Frame");
		local players = Roact.mount(element, instance)

		local validatePlayer = function(playerName, expectedOnlineStatus)
			local cell = instance:FindFirstChild(playerName)
			local onlinePresenseIndicator = cell:FindFirstChild("OnlineIndicator", true)
			if expectedOnlineStatus then
				expect(onlinePresenseIndicator).never.to.equal(nil)
			else
				expect(onlinePresenseIndicator).to.equal(nil)
			end
		end

		validatePlayer("PlayerCell1", PLAYER1_ONLINE_STATUS)
		validatePlayer("PlayerCell2", PLAYER2_ONLINE_STATUS)

		Roact.unmount(players)
	end)
end

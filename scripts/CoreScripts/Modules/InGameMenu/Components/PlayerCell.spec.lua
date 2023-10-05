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

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)


	local PlayerCell = require(script.Parent.PlayerCell)

	local function getMountableTreeAndStore(props)
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer),
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, props or {}),
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
				hasVerifiedBadge = false,

				onActivated = function()
					print("clicked")
				end,
			}),
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
				hasVerifiedBadge = false,
			}),
			PlayerCell2 = Roact.createElement(PlayerCell, {
				userId = 2231222,
				username = PLAYER2_USERNAME,
				displayName = PLAYER2_DISPLAYNAME,
				isOnline = true,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,
				hasVerifiedBadge = false,
			}),
		})

		local instance = Instance.new("Frame")
		local players = Roact.mount(element, instance)

		local validatePlayer = function(playerName, userName, displayName)
			local label = instance:FindFirstChild(playerName, true)
			expect(label).never.toBeNil()

			local displayNameLabel = label:FindFirstChild("DisplayNameLabel", true)
			local usernameLabel = label:FindFirstChild("UsernameLabel", true)
			expect(displayNameLabel).toMatchInstance({
				Visible = true,
				Text = displayName,
			})
			expect(usernameLabel).toMatchInstance({
				Visible = true,
				Text = "@" .. userName,
			})
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
				hasVerifiedBadge = false,

				forwardRef = ref,

				onActivated = function()
					print("clicked")
				end,
			}),
		})

		local instance = Roact.mount(element)
		expect(ref.current).never.toBeNil()
		expect(ref.current:IsA("Instance")).toBe(true)
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
				hasVerifiedBadge = false,
			}),
			PlayerCell2 = Roact.createElement(PlayerCell, {
				userId = 2231222,
				username = PLAYER2_USERNAME,
				displayName = PLAYER2_DISPLAYNAME,
				isOnline = PLAYER2_ONLINE_STATUS,
				isSelected = false,
				LayoutOrder = 1,
				Visible = true,
				hasVerifiedBadge = false,
			}),
		})

		local instance = Instance.new("Frame")
		local players = Roact.mount(element, instance)

		local validatePlayer = function(playerName, expectedOnlineStatus)
			local cell = instance:FindFirstChild(playerName, true)
			local onlinePresenseIndicator = cell:FindFirstChild("OnlineIndicator", true)
			if expectedOnlineStatus then
				expect(onlinePresenseIndicator).never.toBeNil()
			else
				expect(onlinePresenseIndicator).toBeNil()
			end
		end

		validatePlayer("PlayerCell1", PLAYER1_ONLINE_STATUS)
		validatePlayer("PlayerCell2", PLAYER2_ONLINE_STATUS)

		Roact.unmount(players)
	end)

	describe("Verified Badges", function()
		it("Should show the verified badge when a user is verified and hide it when they are not", function()
			local PLAYER1_USERNAME = "TheGamer101"
			local PLAYER1_DISPLAYNAME = "TheGamer101"
			local PLAYER2_USERNAME = "mcfly1985"
			local PLAYER2_DISPLAYNAME = "Marty"
			local PLAYER1_VERIFIEDBADGE_STATUS = true
			local PLAYER2_VERIFIEDBADGE_STATUS = false

			local element = getMountableTreeAndStore({
				PlayerCell1 = Roact.createElement(PlayerCell, {
					userId = 2231221,
					username = PLAYER1_USERNAME,
					displayName = PLAYER1_DISPLAYNAME,
					isOnline = true,
					isSelected = false,
					LayoutOrder = 1,
					Visible = true,
					hasVerifiedBadge = PLAYER1_VERIFIEDBADGE_STATUS,
				}),
				PlayerCell2 = Roact.createElement(PlayerCell, {
					userId = 2231222,
					username = PLAYER2_USERNAME,
					displayName = PLAYER2_DISPLAYNAME,
					isOnline = true,
					isSelected = false,
					LayoutOrder = 1,
					Visible = true,
					hasVerifiedBadge = PLAYER2_VERIFIEDBADGE_STATUS,
				}),
			})

			local instance = Instance.new("Frame")
			local players = Roact.mount(element, instance)

			local validatePlayer = function(playerName, expectedVerifiedBadgeStatus)
				local cell = instance:FindFirstChild(playerName, true)
				local verifiedBadge = cell:FindFirstChild("Emoji", true)
				if expectedVerifiedBadgeStatus then
					expect(verifiedBadge).never.toBeNil()
				else
					expect(verifiedBadge).toBeNil()
				end
			end

			validatePlayer("PlayerCell1", PLAYER1_VERIFIEDBADGE_STATUS)
			validatePlayer("PlayerCell2", PLAYER2_VERIFIEDBADGE_STATUS)

			Roact.unmount(players)
		end)
	end)
end

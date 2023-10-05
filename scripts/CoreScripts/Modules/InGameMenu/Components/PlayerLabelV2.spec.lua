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
	local FFlagAlwaysShowDisplayNameInExpMenu = require(InGameMenu.Flags.FFlagAlwaysShowDisplayNameInExpMenu)


	local PlayerLabel = require(script.Parent.PlayerLabelV2)

	local function getMountableTreeAndStore(props)
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, props or {})

			}),
		})
		return element
	end

	it("should create and destroy without errors", function()
		local element = getMountableTreeAndStore({
			PlayerLabel = Roact.createElement(PlayerLabel, {
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

	if FFlagAlwaysShowDisplayNameInExpMenu then
		it("should always create and display username and displayname", function()

			local PLAYER1_USERNAME = "TheGamer101"
			local PLAYER1_DISPLAYNAME = "TheGamer101"
			local PLAYER2_USERNAME = "mcfly1985"
			local PLAYER2_DISPLAYNAME = "Marty"

			local element = getMountableTreeAndStore({
				PlayerLabel1 = Roact.createElement(PlayerLabel, {
					userId = 2231221,
					username = PLAYER1_USERNAME,
					displayName = "",
					isOnline = true,
					isSelected = false,
					LayoutOrder = 1,
					Visible = true,
				}),
				PlayerLabel2 = Roact.createElement(PlayerLabel, {
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
				expect(label).never.toBeNil()

				local displayNameLabel = label:FindFirstChild("DisplayNameLabel")
				local usernameLabel = label:FindFirstChild("UsernameLabel")
				expect(displayNameLabel).toMatchInstance({
					Visible = true,
					Text = displayName,
				})
				expect(usernameLabel).toMatchInstance({
					Visible = true,
					Text = "@" .. userName,
				})
			end

			validatePlayer("PlayerLabel1", PLAYER1_USERNAME, PLAYER1_DISPLAYNAME)
			validatePlayer("PlayerLabel2", PLAYER2_USERNAME, PLAYER2_DISPLAYNAME)

			Roact.unmount(players)
		end)
	end

	it("should accept and assign refs", function()
		local ref = Roact.createRef()

		local element = getMountableTreeAndStore({
			PlayerLabel = Roact.createElement(PlayerLabel, {
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
		expect(ref.current).never.toBeNil()
		expect(ref.current:IsA("Instance")).toBe(true)
		Roact.unmount(instance)
	end)
end

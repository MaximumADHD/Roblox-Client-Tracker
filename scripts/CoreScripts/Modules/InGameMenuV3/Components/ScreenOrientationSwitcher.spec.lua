--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local act = require(Modules.act)

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local SetScreenSize = require(InGameMenu.Actions.SetScreenSize)
	local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

	local ScreenOrientationSwitcher = require(script.Parent.ScreenOrientationSwitcher)

	local mockPolicyMapper = function(policy)
		return {
			inGameMenuPortraitThreshold = function()
				return 550
			end,
		}
	end

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ScreenOrientationSwitcher = Roact.createElement(ScreenOrientationSwitcher),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should will trigger the switch to LandscapeRight and back to Portrait", function()

		local playerGUI = {
			CurrentScreenOrientation = Enum.ScreenOrientation.Portrait,
			ScreenOrientation = Enum.ScreenOrientation.Portrait,
		}

		local store = Rodux.Store.new(reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ScreenOrientationSwitcher = Roact.createElement(ScreenOrientationSwitcher, {
					playerGUI = playerGUI,
				}),
			})
		})

		local instance = Roact.mount(element)
		act(function()
			store:dispatch(SetScreenSize(Vector2.new(300, 600)))
			store:flush()
		end)

		act(function()
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.equal(Enum.ScreenOrientation.LandscapeRight)

		act(function()
			store:dispatch(SetMenuOpen(false))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.equal(Enum.ScreenOrientation.Portrait)

		-- noop case
		playerGUI.CurrentScreenOrientation = Enum.ScreenOrientation.LandscapeRight
		playerGUI.ScreenOrientation = nil
		act(function()
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.never.equal(Enum.ScreenOrientation.Portrait)

		store:dispatch(SetMenuOpen(false))
		store:flush()

		Roact.unmount(instance)
	end)

	it("should will trigger the switch to LandscapeRight and back to Sensor", function()

		local playerGUI = {
			CurrentScreenOrientation = Enum.ScreenOrientation.Portrait,
			ScreenOrientation = Enum.ScreenOrientation.Sensor,
		}

		local store = Rodux.Store.new(reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ScreenOrientationSwitcher = Roact.createElement(ScreenOrientationSwitcher, {
					playerGUI = playerGUI,
				}),
			})
		})

		local instance = Roact.mount(element)
		act(function()
			store:dispatch(SetScreenSize(Vector2.new(300, 600)))
			store:flush()
		end)

		act(function()
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.equal(Enum.ScreenOrientation.LandscapeRight)

		act(function()
			store:dispatch(SetMenuOpen(false))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.equal(Enum.ScreenOrientation.Sensor)


		Roact.unmount(instance)
	end)

	it("should will not trigger on larger screen sizes", function()

		local playerGUI = {
			CurrentScreenOrientation = Enum.ScreenOrientation.Portrait,
			ScreenOrientation = Enum.ScreenOrientation.Portrait,
		}

		local store = Rodux.Store.new(reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ScreenOrientationSwitcher = Roact.createElement(ScreenOrientationSwitcher, {
					playerGUI = playerGUI,
				}),
			})
		})

		local instance = Roact.mount(element)

		act(function()
			store:dispatch(SetScreenSize(Vector2.new(720, 1280)))
			store:flush()
		end)

		act(function()
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.equal(Enum.ScreenOrientation.Portrait)

		Roact.unmount(instance)
	end)


end

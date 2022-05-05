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

	local ScreenOrientationSwitcher = require(script.Parent.ScreenOrientationSwitcher)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PageNavigationWatcher = Roact.createElement(ScreenOrientationSwitcher),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should will trigger the switch to LandscapeLeft and back to Portrait", function()

		local playerGUI = {
			CurrentScreenOrientation = Enum.ScreenOrientation.Portrait,
			ScreenOrientation = nil,
		}

		local store = Rodux.Store.new(reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			PageNavigationWatcher = Roact.createElement(ScreenOrientationSwitcher, {
				playerGUI = playerGUI,
			}),
		})

		local instance = Roact.mount(element)

		act(function()
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.equal(Enum.ScreenOrientation.LandscapeLeft)

		act(function()
			store:dispatch(SetMenuOpen(false))
			store:flush()
		end)
		expect(playerGUI.ScreenOrientation).to.equal(Enum.ScreenOrientation.Portrait)

		-- noop case
		playerGUI.CurrentScreenOrientation = Enum.ScreenOrientation.LandscapeLeft
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
end

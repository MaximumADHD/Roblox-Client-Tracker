--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules
	local act = require(Modules.act)

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local LeaveButton = require(InGameMenu.Components.LeaveButton)
	local PageUtils = require(InGameMenu.Components.Pages.PageUtils)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local function getMountableTreeAndStore(children)
		local store = Rodux.Store.new(reducer)

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, children),
			}),
		}),
			store
	end

	it("mounts and unmounts", function()
		expect(LeaveButton).to.be.ok()
		local element = getMountableTreeAndStore({
			LeaveButton = Roact.createElement(LeaveButton, {}),
		})
		expect(element).to.be.ok()

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("tracks scroll frame position to decide to show/hide leave button", function()
		local scrollEvent = function(pos)
			return {
				MaxCanvasPosition = {
					Y = 1000,
				},
				CanvasPosition = {
					Y = pos,
				},
			}
		end

		local onScroll = nil
		local isScrollingDown = false

		local element, store = getMountableTreeAndStore({

			LeaveButton = PageUtils.withScrollDownState(function(scrollCb, scrollingDown)
				onScroll = scrollCb
				isScrollingDown = scrollingDown
				return Roact.createElement(LeaveButton, {
					hidden = scrollingDown,
				})
			end),
		})

		local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

		act(function()
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)

		act(function()
			onScroll(scrollEvent(100))
		end)
		expect(isScrollingDown).to.be.equal(true)

		act(function()
			onScroll(scrollEvent(100))
		end)
		expect(isScrollingDown).to.be.equal(true)

		act(function()
			onScroll(scrollEvent(50))
		end)
		expect(isScrollingDown).to.be.equal(false)

		act(function()
			onScroll(scrollEvent(-50))
		end)
		expect(isScrollingDown).to.be.equal(false)

		act(function()
			onScroll(scrollEvent(0))
		end)
		expect(isScrollingDown).to.be.equal(false)

		act(function()
			onScroll(scrollEvent(1))
		end)
		expect(isScrollingDown).to.be.equal(false)

		act(function()
			onScroll(scrollEvent(100))
		end)
		expect(isScrollingDown).to.be.equal(true)

		act(function()
			store:dispatch(SetMenuOpen(false))
			store:flush()
		end)
		expect(isScrollingDown).to.be.equal(false)


		Roact.unmount(instance)
	end)
end

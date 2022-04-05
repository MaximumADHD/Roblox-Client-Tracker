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
	local Constants = require(InGameMenu.Resources.Constants)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local LeaveButton = require(InGameMenu.Components.LeaveButton)
	local PageUtils = require(InGameMenu.Components.Pages.PageUtils)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)

	local Flags = InGameMenu.Flags
	local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

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

	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		it("shows KeyLabel is input type is keyboard", function()
			expect(LeaveButton).to.be.ok()
			local element, store = getMountableTreeAndStore({
				LeaveButton = Roact.createElement(LeaveButton, {}),
			})
			expect(element).to.be.ok()

			local frame = Instance.new("Frame")

			local instance = Roact.mount(element, frame)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:flush()
			end)

			expect(frame:FindFirstChild("KeyLabel", true)).to.never.equal(nil)

			act(function()
				store:dispatch(SetInputType(Constants.InputType.Touch))
				store:flush()
			end)

			expect(frame:FindFirstChild("KeyLabel", true)).to.equal(nil)

			Roact.unmount(instance)
		end)
	end

	it("tracks scroll frame position to decide to show/hide leave button", function()
		local scrollEvent = function(pos)
			return {
				CanvasPosition = {
					Y = pos,
				},
			}
		end

		local element = getMountableTreeAndStore({
			LeaveButton = Roact.createElement(LeaveButton, {}),
		})

		function element:init()
			PageUtils.initOnScrollDownState(self)

			self.onScroll(scrollEvent(10))
			expect(self.state.scrollingDown).to.be.equal(true)
			self.onScroll(scrollEvent(10))
			expect(self.state.scrollingDown).to.be.equal(true)
			self.onScroll(scrollEvent(5))
			expect(self.state.scrollingDown).to.be.equal(false)
			self.onScroll(scrollEvent(5))
			expect(self.state.scrollingDown).to.be.equal(false)
			self.onScroll(scrollEvent(-5))
			expect(self.state.scrollingDown).to.be.equal(false)
			self.onScroll(scrollEvent(0))
			expect(self.state.scrollingDown).to.be.equal(false)
		end

		local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

		Roact.unmount(instance)
	end)
end

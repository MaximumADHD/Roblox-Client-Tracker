return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local mockPolicyMapper = function(policy)
		return {
			enableEducationalPopup = function()
				return false
			end,
			educationalPopupMaxDisplayCount = function()
				return 0
			end,
		}
	end

	local FullscreenTitleBar = require(script.Parent.FullscreenTitleBar)

	local mockProps = {
		titleText = "Roblox",
		displayOrder = 1,
		isMenuOpen = true,
		isEducationalPopupEnabled = true,
		maxDisplayCount = 1,
		openEducationalPopup = function() end,
		startLeavingGame = function() end,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
				}),
			}),
		})
		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)

	it("should be a child ScreenGui of CoreGui", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
				}),
			}),
		})

		local handle = Roact.mount(element)
		local instance = CoreGui:FindFirstChild("InGameFullscreenTitleBarScreen")
		expect(instance).to.never.equal(nil)
		expect(instance.ClassName).to.equal("ScreenGui")
		Roact.unmount(handle)
	end)
end

return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")


	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)


	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local GetFixGraphicsQuality = require(RobloxGui.Modules.Flags.GetFixGraphicsQuality)
	local SendNotificationInfo = Instance.new("BindableEvent")
	SendNotificationInfo.Name = "SendNotificationInfo"
	SendNotificationInfo.Parent = RobloxGui

	local GraphicsQualityEntry = require(script.Parent.GraphicsQualityEntry)

	local UserGameSettings = UserSettings():GetService("UserGameSettings")
	local RenderSettings = settings().Rendering

	it("should create and destroy without errors", function()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
						LayoutOrder = 2,
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)

		UserGameSettings.SavedQualityLevel = 10
		RenderSettings.QualityLevel = 5

		Roact.unmount(instance)
	end)

	it("should set the rendering setting to the saved quality level when initalized", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
						LayoutOrder = 2,
					}),
				}),
			}),
		})

		if GetFixGraphicsQuality() then
			UserGameSettings.GraphicsQualityLevel = 11

			local instance = Roact.mount(element)
			expect(RenderSettings.QualityLevel).to.equal(Enum.QualityLevel.Level11)
			Roact.unmount(instance)

			UserGameSettings.GraphicsQualityLevel = 21
			instance = Roact.mount(element)
			expect(RenderSettings.QualityLevel).to.equal(Enum.QualityLevel.Level21)
			Roact.unmount(instance)
		else
			UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel2

			local instance = Roact.mount(element)
			expect(RenderSettings.QualityLevel).to.equal(Enum.QualityLevel.Level03)
			Roact.unmount(instance)

			UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel10
			instance = Roact.mount(element)
			expect(RenderSettings.QualityLevel).to.equal(Enum.QualityLevel.Level21)
			Roact.unmount(instance)
		end
	end)
end

--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = InGameMenuDependencies.RoactRodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local InGameMenu = script.Parent.Parent.Parent
local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
local reducer = require(InGameMenu.reducer)
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local SendNotificationInfo = Instance.new("BindableEvent")
SendNotificationInfo.Name = "SendNotificationInfo"
SendNotificationInfo.Parent = RobloxGui

local FocusHandlerContextProvider =
	require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local GraphicsQualityEntry = require(script.Parent.GraphicsQualityEntry)

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local RenderSettings = settings().Rendering

it("should create and destroy without errors", function()
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(FocusHandlerContextProvider, {}, {
							GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
								LayoutOrder = 2,
							}),
						})
					or nil,
				GraphicsQualityEntry = not GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(GraphicsQualityEntry, {
							LayoutOrder = 2,
						})
					or nil,
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
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(FocusHandlerContextProvider, {}, {
							GraphicsQualityEntry = Roact.createElement(GraphicsQualityEntry, {
								LayoutOrder = 2,
							}),
						})
					or nil,
				GraphicsQualityEntry = not GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(GraphicsQualityEntry, {
							LayoutOrder = 2,
						})
					or nil,
			}),
		}),
	})

	UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel2

	local instance = Roact.mount(element)
	expect(RenderSettings.QualityLevel).toBe(Enum.QualityLevel.Level03)
	Roact.unmount(instance)

	UserGameSettings.SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel10
	instance = Roact.mount(element)
	expect(RenderSettings.QualityLevel).toBe(Enum.QualityLevel.Level21)
	Roact.unmount(instance)
end)

local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local ReactSceneUnderstanding = require(CorePackages.Packages.ReactSceneUnderstanding)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local MenuNavigationPromptTokenMapper = require(script.Parent.Parent.TokenMappers.MenuNavigationPromptTokenMapper)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local InExperienceCloudPlay = CorePackages.Workspace.Packages.InExperienceCloudPlay
local FFlagEnableRestyleTopBar = require(InExperienceCloudPlay.FFlagEnableRestyleTopBar)
local mountsRestyleTimer = FFlagEnableRestyleTopBar
	and require(CorePackages.Workspace.Packages.SharedFlags).FFlagUseUIOverlayForCloudPlay
local mockRestyleTimer, mockRestyleTimerFn = jest.fn()
jest.mock(InExperienceCloudPlay.RestyleTimer, function()
	return mockRestyleTimerFn
end)

local FFlagTopBarRefactor = require(CorePackages.Workspace.Packages.InExperienceTopBar).Flags.FFlagTopBarRefactor
if not FFlagTopBarRefactor then
	it = it.skip :: typeof(JestGlobals.it)
end

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = RobloxAppEnums.DeviceType.Console,
}

local Reducer = require(script.Parent.Parent.Reducer)

describe("TopBarApp", function()
	it("mounts the Restyle timer only when its flags are on and hides it with the TopBar", function()
		local TopBarApp = require(script.Parent.TopBarApp)

		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new(LocalizationService.RobloxLocaleId),
			}, {
				StyleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
					style = defaultStyle,
				}, {
					DesignTokenProvider = Roact.createElement(DesignTokenProvider, {
						tokenMappers = {
							MenuNavigationPrompt = MenuNavigationPromptTokenMapper,
						},
					}, {
						SceneAnalysisProvider = Roact.createElement(
							ReactSceneUnderstanding.SceneAnalysisProvider,
							{},
							{
								TopBarApp = Roact.createElement(TopBarApp),
							}
						),
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		if mountsRestyleTimer then
			local GamepadConnector = require(script.Parent.Parent.Components.GamepadConnector)
			expect(mockRestyleTimer).toHaveBeenLastCalledWith(expect.objectContaining({ isHidden = false }))
			ReactRoblox.act(function()
				GamepadConnector:getShowTopBar():set(false)
			end)
			expect(mockRestyleTimer).toHaveBeenLastCalledWith(expect.objectContaining({ isHidden = true }))
			ReactRoblox.act(function()
				GamepadConnector:getShowTopBar():set(true)
			end)
		else
			expect(mockRestyleTimer).never.toHaveBeenCalled()
		end
		Roact.unmount(instance)
	end)
end)

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local ReactSceneUnderstanding = require(CorePackages.Packages.ReactSceneUnderstanding)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local TopBar = script.Parent.Parent
local MenuNavigationPromptTokenMapper = require(TopBar.TokenMappers.MenuNavigationPromptTokenMapper)
local Reducer = require(TopBar.Reducer)
local TopBarAppPolicy = require(TopBar.TopBarAppPolicy)

local RoactAppPolicy = UniversalAppPolicy.RoactAppPolicy
local AppFeaturePolicies = UniversalAppPolicy.AppFeaturePolicies
local FFlagShowGameAgeRating = SharedFlags.FFlagShowGameAgeRating

local defaultStyle = {
	themeName = "dark",
	fontName = "gotham",
	deviceType = RobloxAppEnums.DeviceType.Console,
}

-- The legacy TopBarApp tree waits on this RobloxGui child, which TopBar tests don't otherwise create.
if not CoreGui.RobloxGui:FindFirstChild("SendNotificationInfo") then
	local sendNotificationInfo = Instance.new("BindableEvent")
	sendNotificationInfo.Name = "SendNotificationInfo"
	sendNotificationInfo.Parent = CoreGui.RobloxGui
end

-- Takes the TopBarApp component so callers pass the copy loaded with their own jest.mock overrides.
local function renderTopBarApp(TopBarApp, parent: Instance?)
	local store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		PolicyProvider = Roact.createElement(
			if FFlagShowGameAgeRating then RoactAppPolicy.Provider else TopBarAppPolicy.Provider,
			{
				policy = if FFlagShowGameAgeRating then { AppFeaturePolicies } else { TopBarAppPolicy.Mapper },
			},
			{
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
			}
		),
	})

	return Roact.mount(element, parent)
end

return renderTopBarApp

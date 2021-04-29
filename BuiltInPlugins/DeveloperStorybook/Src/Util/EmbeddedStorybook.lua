local Packages = script:FindFirstAncestor("Packages")

local RefactorFlags = require(Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = true

local Roact = require(Packages.Roact)
local Rodux = require(Packages.Rodux)
local Framework = require(Packages.Framework)

local ContextServices = Framework.ContextServices
local MockPlugin = Framework.TestHelpers.Instances.MockPlugin
local Analytics = ContextServices.Analytics
local Focus = ContextServices.Focus
local Mouse = ContextServices.Mouse
local Localization = ContextServices.Localization
local Plugin = ContextServices.Plugin
local Store = ContextServices.Store

local Src = Packages.DeveloperStorybook.Src
local MainReducer = require(Src.Reducers.MainReducer)
local InfoPanel = require(Src.Components.InfoPanel)
local StoryTree = require(Src.Components.StoryTree)
local TopBar = require(Src.Components.TopBar)
local MakeTheme = require(Src.Resources.MakeTheme)
local TranslationDevelopmentTable = Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Src.Resources.TranslationReferenceTable

local EmbeddedStorybook = {}

function EmbeddedStorybook.start(storybookGui: ScreenGui, player: Player)

	local store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})
	local localization = Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "StorybookClient",
		libraries = {
			[Framework.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Framework.Resources.TranslationDevelopmentTable,
				translationResourceTable = Framework.Resources.TranslationReferenceTable,
			},
		},
	})
	local contextItems = {
		Store.new(store),
		MakeTheme(),
		localization,
		Focus.new(storybookGui),
		Plugin.new(MockPlugin.new()),
		Mouse.new(player:GetMouse()),
		Analytics.mock()
	}
	local element = function()
		return ContextServices.provide(contextItems, {
			TopBar = Roact.createElement(TopBar),
			StoryTree = Roact.createElement(StoryTree),
			InfoPanel = Roact.createElement(InfoPanel)
		})
	end
	EmbeddedStorybook.handle = Roact.mount(Roact.createElement(element, {}), storybookGui)
end

function EmbeddedStorybook.stop()
	Roact.unmount(EmbeddedStorybook.handle)
end

return EmbeddedStorybook

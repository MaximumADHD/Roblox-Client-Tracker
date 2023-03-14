local Packages = script:FindFirstAncestor("Packages")

if not Packages then
	-- The embedded storybook should only load in Studio if it has been included as a library
	return nil
end

local Roact = require(Packages.Roact)
local Rodux = require(Packages.Rodux)
local Framework = require(Packages.Framework)
local SplitPane = Framework.UI.SplitPane

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
local SourceStrings = Src.Resources.SourceStrings
local LocalizedStrings = Src.Resources.LocalizedStrings

local Window = Roact.PureComponent:extend("Window")
local OFFSET = 42

function Window:init()
	self.state = {
		paneSizes = {
			UDim.new(0, 300),
			UDim.new(1, -300),
		},
	}
	self.onPaneSizesChange = function(paneSizes: { UDim })
		self:setState({
			paneSizes = paneSizes,
		})
	end
end

function Window:render()
	local state = self.state
	return Roact.createElement(SplitPane, {
		ClampSize = true,
		UseDeficit = true,
		MinSizes = {
			UDim.new(0, 100),
			UDim.new(0, 100),
		},
		OnSizesChange = self.onPaneSizesChange,
		Sizes = state.paneSizes,
		Position = UDim2.fromOffset(0, OFFSET),
		Size = UDim2.new(1, 0, 1, -OFFSET),
	}, {
		Roact.createElement(StoryTree),
		Roact.createElement(InfoPanel),
	})
end

local EmbeddedStorybook = {}

function EmbeddedStorybook.start(storybookGui: ScreenGui, player: Player)
	local store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})
	local localization = Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "StorybookClient",
		libraries = {
			[Framework.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Framework.Resources.SourceStrings,
				translationResourceTable = Framework.Resources.LocalizedStrings,
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
		Analytics.mock(),
	}
	local Screen = function()
		return ContextServices.provide(contextItems, {
			TopBar = Roact.createElement(TopBar),
			Window = Roact.createElement(Window, {}),
		})
	end
	local element = Roact.createElement(Screen, {})
	EmbeddedStorybook.handle = Roact.mount(element, storybookGui)
end

function EmbeddedStorybook.stop()
	Roact.unmount(EmbeddedStorybook.handle)
end

return EmbeddedStorybook

--[[
	Init script to allow us to use the PublishAssetPrompt folder as a module.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")

local renderWithCoreScriptsStyleProvider = require(script.Parent.Common.renderWithCoreScriptsStyleProvider)

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local PublishAssetPromptApp = require(script.Components.PublishAssetPromptApp)
local Reducer = require(script.Reducer)
local ConnectAssetServiceEvents = require(script.ConnectAssetServiceEvents)

local FFlagPublishAvatarPromptEnabled = require(script.FFlagPublishAvatarPromptEnabled)

local PublishAssetPrompt = {}
PublishAssetPrompt.__index = PublishAssetPrompt

function PublishAssetPrompt.new()
	local self = setmetatable({}, PublishAssetPrompt)
	local PublishAssetPromptApp = Roact.createElement(PublishAssetPromptApp)

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		ThemeProvider = renderWithCoreScriptsStyleProvider({
			LocalizationProvider = if FFlagPublishAvatarPromptEnabled
				then Roact.createElement(LocalizationProvider, {
					localization = Localization.new(LocalizationService.RobloxLocaleId),
				}, {
					PublishAssetPromptApp = PublishAssetPromptApp,
				})
				else nil,
			PublishAssetPromptApp = if not FFlagPublishAvatarPromptEnabled then PublishAssetPromptApp else nil,
		}),
	})

	self.element = Roact.mount(self.root, CoreGui, "PublishAssetPrompt")

	self.serviceConnections = ConnectAssetServiceEvents(self.store)

	return self
end

return PublishAssetPrompt.new()

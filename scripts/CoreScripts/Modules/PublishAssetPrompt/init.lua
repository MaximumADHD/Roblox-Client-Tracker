--[[
	Init script to allow us to use the PublishAssetPrompt folder as a module.
	See StarterScript.lua's calls to "initify".
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local PublishAssetPromptApp = require(script.Components.PublishAssetPromptApp)
local Reducer = require(script.Reducer)
local ConnectAssetServiceEvents = require(script.ConnectAssetServiceEvents)

local PublishAssetPrompt = {}
PublishAssetPrompt.__index = PublishAssetPrompt

function PublishAssetPrompt.new()
	local self = setmetatable({}, PublishAssetPrompt)

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
			style = appStyle,
		}, {
			PublishAssetPromptApp = Roact.createElement(PublishAssetPromptApp),
		}),
	})

	self.element = Roact.mount(self.root, CoreGui, "PublishAssetPrompt")

	self.serviceConnections = ConnectAssetServiceEvents(self.store)

	return self
end

return PublishAssetPrompt.new()

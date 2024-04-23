--[[
	Init script to allow us to use the PublishAssetPrompt folder as a module.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local renderWithCoreScriptsStyleProvider = require(script.Parent.Common.renderWithCoreScriptsStyleProvider)

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

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

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		ThemeProvider = renderWithCoreScriptsStyleProvider({
			PublishAssetPromptApp = Roact.createElement(PublishAssetPromptApp),
		}),
	})

	self.element = Roact.mount(self.root, CoreGui, "PublishAssetPrompt")

	self.serviceConnections = ConnectAssetServiceEvents(self.store)

	return self
end

return PublishAssetPrompt.new()

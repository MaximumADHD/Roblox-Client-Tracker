local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local App = require(ShareGame.Components.App)
local AppReducer = require(ShareGame.AppReducer)

local ShareGameMaster = {}

function ShareGameMaster.createApp(parentGui, analytics)
	local self = {}
	self.store = Rodux.Store.new(AppReducer, nil, { Rodux.thunkMiddleware })

	self._instanceHandle = Roact.mount(
		Roact.createElement(RoactRodux.StoreProvider, {
			store = self.store
		}, {
			Roact.createElement(App, {
				analytics = analytics,
				pageTarget = parentGui,
			})
		})
	)
	return self
end

return ShareGameMaster

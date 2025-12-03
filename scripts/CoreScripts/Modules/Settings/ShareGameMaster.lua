local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local ShareGame = Modules.Settings.Pages.ShareGame
local App = require(ShareGame.Components.App)
local AppReducer = require(ShareGame.AppReducer)

local InviteStore = require(ShareGame.InviteStore)
local GetFFlagEnableSharedInviteStore = require(Modules.Flags.GetFFlagEnableSharedInviteStore)

local ShareGameMaster = {}

function ShareGameMaster.createApp(parentGui, analytics)
	local self = {}
	self.store = if GetFFlagEnableSharedInviteStore()
		then InviteStore
		else Rodux.Store.new(AppReducer, nil, { Rodux.thunkMiddleware })

	self._instanceHandle = Roact.mount(Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		App = Roact.createElement(App, {
			analytics = analytics,
			pageTarget = parentGui,
		}),
	}))
	return self
end

return ShareGameMaster

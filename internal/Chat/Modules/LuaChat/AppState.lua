local LocalizationService = game:GetService("LocalizationService")
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local Localization = require(LuaApp.Localization)
local StringsLocale = require(LuaApp.StringsLocale)

local Modules = script.Parent

local ScreenManager = require(Modules.ScreenManager)
local ScreenRouter = require(Modules.ScreenRouter)
local WebApi = require(Modules.WebApi)
local NotificationBroadcaster = require(Modules.NotificationBroadcaster)
local Device = require(Modules.Device)

local AppReducer = require(Modules.AppReducer)
local Store = require(Modules.Store)
local RobloxEventReceiver = require(Modules.RobloxEventReceiver)

local AlertView = require(Modules.Views.Phone.Alert)
local ToastView = require(Modules.Views.ToastView)

local FFlagClientAppsUseRobloxLocale = settings():GetFFlag('ClientAppsUseRobloxLocale')

local AppState = {}

function AppState.new(chatGui)
	local state = {}

	state.store = Store.new(AppReducer)

	state.webApi = WebApi

	state.device = Device.Init(state.store)

	state.screenManager = ScreenManager.new(chatGui, state)
	state.screenRouter = ScreenRouter
	state.broadcaster = NotificationBroadcaster.new(state)

	local locale
	if (FFlagClientAppsUseRobloxLocale) then
		locale = LocalizationService.RobloxLocaleId
	else
		locale = LocalizationService.SystemLocaleId
	end
	state.localization = Localization.new(StringsLocale, locale)

	state.RobloxEventReceiver = RobloxEventReceiver:init(state)

	do
		local screenGui = Instance.new("ScreenGui")
		screenGui.DisplayOrder = 9e6
		screenGui.Parent = chatGui
		state.alertView = AlertView.new(state)
		state.alertView.rbx.Parent = screenGui
		state.toastView = ToastView.new(state)
		state.toastView.rbx.Parent = screenGui
	end

	return state
end

function AppState:Destruct()
	self.store:Destruct()
end

return AppState
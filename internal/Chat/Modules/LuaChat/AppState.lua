local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")

local Modules = CoreGui.RobloxGui.Modules

local Localization = require(Modules.LuaApp.Localization)
local StringsLocale = require(Modules.LuaApp.StringsLocale)

local ScreenManager = require(Modules.LuaChat.ScreenManager)
local ScreenRouter = require(Modules.LuaChat.ScreenRouter)
local WebApi = require(Modules.LuaChat.WebApi)
local NotificationBroadcaster = require(Modules.LuaChat.NotificationBroadcaster)
local Device = require(Modules.LuaChat.Device)

local AppReducer = require(Modules.LuaApp.AppReducer)
local Store = require(Modules.LuaChat.Store)
local RobloxEventReceiver = require(Modules.LuaChat.RobloxEventReceiver)

local AlertView = require(Modules.LuaChat.Views.Phone.Alert)
local ToastView = require(Modules.LuaChat.Views.ToastView)

local FFlagClientAppsUseRobloxLocale = settings():GetFFlag('ClientAppsUseRobloxLocale')

local AppState = {}

function AppState.new(chatGui, store)
	local state = {}

	state.store = store or Store.new(AppReducer)

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
		state.alertView.rbx.Name = "AlertView"
		state.toastView = ToastView.new(state)
		state.toastView.rbx.Parent = screenGui
		state.toastView.rbx.Name = "ToastView"
	end

	return state
end

function AppState:Destruct()
	self.store:Destruct()
end

return AppState
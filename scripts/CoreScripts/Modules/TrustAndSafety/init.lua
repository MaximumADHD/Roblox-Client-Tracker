local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)
local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local GlobalConfig = require(script.GlobalConfig)
local Reducers = require(script.Reducers)
local TrustAndSafetyApp = require(script.Components.TrustAndSafetyApp)
local TrustAndSafetyAppPolicy = require(script.TrustAndSafetyAppPolicy)

local OpenReportDialog = require(script.Actions.OpenReportDialog)

local TrustAndSafety = {}
TrustAndSafety.__index = TrustAndSafety

function TrustAndSafety.new()
	local self = setmetatable({}, TrustAndSafety)

	if GlobalConfig.propValidation then
		Roact.setGlobalConfig({
			propValidation = true,
		})
	end
	if GlobalConfig.elementTracing then
		Roact.setGlobalConfig({
			elementTracing = true,
		})
	end

	self.store = Rodux.Store.new(Reducers, nil, {
		Rodux.thunkMiddleware,
	})

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		PolicyProvider = Roact.createElement(TrustAndSafetyAppPolicy.Provider, {
			policy = { TrustAndSafetyAppPolicy.Mapper },
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
				style = appStyle,
			}, {
				App = Roact.createElement(TrustAndSafetyApp),
			})
		})
	})

	self.element = Roact.mount(self.root, CoreGui, "TrustAndSafety")
	return self
end

function TrustAndSafety:openReportDialog(userId, userName)
	self.store:dispatch(OpenReportDialog(userId, userName))
end

return TrustAndSafety.new()

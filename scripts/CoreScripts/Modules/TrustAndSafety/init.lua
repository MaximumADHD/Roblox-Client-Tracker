--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)

local Dependencies = require(script.Dependencies)
local Localization = Dependencies.Localization
local LocalizationProvider = require(Dependencies.LocalizationProvider)
local playerInterface = require(Dependencies.playerInterface)

local Constants = require(script.Resources.Constants)
local GlobalConfig = require(script.GlobalConfig)
local Reducers = require(script.Reducers)
local TrustAndSafetyApp = require(script.Components.TrustAndSafetyApp)
local TrustAndSafetyAppPolicy = require(script.TrustAndSafetyAppPolicy)

local OpenReportDialog = require(script.Actions.OpenReportDialog)
local OpenReportMenu = require(script.Actions.OpenReportMenu)
local BeginReportFlow = require(script.Actions.BeginReportFlow)
local SetVoiceReportingFlow = require(script.Actions.SetVoiceReportingFlow)
local IdentifyAvatars = require(script.Thunks.IdentifyAvatars)
local SessionUtility = require(script.Utility.SessionUtility)
local ScreenshotHookManager = require(script.Utility.ScreenshotHookManager)

local FetchPlaceInfo = require(script.Thunks.FetchPlaceInfo)
local GetFFlagReportAnythingScreenshot = require(script.Flags.GetFFlagReportAnythingScreenshot)

local TrustAndSafety = {}

function TrustAndSafety:getInstance()
	-- initialization on demand
	if not self._initialized then
		self:initialize()
		self._initialized = true
	end
	return self
end

function TrustAndSafety:initialize()
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

	self.store = self:createStore()
	self.store:dispatch(FetchPlaceInfo(game.GameId))

	self.localization = self:createLocalization()

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		PolicyProvider = Roact.createElement(TrustAndSafetyAppPolicy.Provider, {
			policy = { TrustAndSafetyAppPolicy.Mapper },
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = self.localization,
			}, {
				TrustAndSafety = Roact.createElement(TrustAndSafetyApp),
			}),
		}),
	})

	self.element = Roact.mount(self.root, CoreGui, "TrustAndSafety")
end

function TrustAndSafety:createStore()
	local reducer = Reducers
	local middlewares = {
		Rodux.thunkMiddleware,
	}
	if GlobalConfig.logStore then
		table.insert(middlewares, Rodux.loggerMiddleware)
	end
	return Rodux.Store.new(reducer, nil, middlewares)
end

function TrustAndSafety:createLocalization()
	local localeId = LocalizationService.RobloxLocaleId
	local localization = Localization.new(localeId)

	LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function()
		local localeId = LocalizationService.RobloxLocaleId
		localization:SetLocale(localeId)
	end)

	return localization
end

function TrustAndSafety:openReportDialog(reportType, targetPlayer)
	self.store:dispatch(SetVoiceReportingFlow(true))
	if GetFFlagReportAnythingScreenshot() then
		self.store:dispatch(IdentifyAvatars())
	end
	self.store:dispatch(BeginReportFlow(reportType, targetPlayer))
end

function TrustAndSafety:openReportMenu()
	self.store:dispatch(SetVoiceReportingFlow(true))
	if GetFFlagReportAnythingScreenshot() then
		self.store:dispatch(IdentifyAvatars())
	end
	self.store:dispatch(BeginReportFlow())
end

return {
	openReportDialogForPlayer = function(targetPlayer, source)
		assert(playerInterface(targetPlayer) and t.instanceIsA("Player")(targetPlayer))
		SessionUtility.startAbuseReportSession(source)
		TrustAndSafety:getInstance():openReportDialog(Constants.ReportType.Player, targetPlayer)
	end,
	openReportDialogForPlace = function(source)
		SessionUtility.startAbuseReportSession(source)
		TrustAndSafety:getInstance():openReportDialog(Constants.ReportType.Place)
	end,
	openReportMenu = function(source)
		SessionUtility.startAbuseReportSession(source)
		TrustAndSafety:getInstance():openReportMenu()
	end,
	setPreReportScreenshotHook = function(preScreenshotHook)
		ScreenshotHookManager.setPreScreenshotHook(preScreenshotHook)
	end,
	setPostReportScreenshotHook = function(postScreenshotHook)
		ScreenshotHookManager.setPostScreenshotHook(postScreenshotHook)
	end,
}

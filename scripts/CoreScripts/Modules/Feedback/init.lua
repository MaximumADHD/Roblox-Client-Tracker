--[[
	Module initializer!
	Sets up localization provider, creates the app, sets up state store, etc.
	Not loaded in standard CoreScripts, instead it is loaded only by the DataModelCaptureService when entering feedback mode.
	See LuaApps\content\scripts\CoreScripts\CaptureModeModuleStarterScript.lua and LuaApps\projects\CoreScripts-scripts-only.rbxp
]]
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local GlobalConfig = require(script.GlobalConfig)
local Reducers = require(script.Reducers)
local FeedbackApp = require(script.Components.FeedbackApp)

return {
	initialize = function()
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

		-- Create store
		local middlewares = {
			Rodux.thunkMiddleware,
		}
		if GlobalConfig.logStore then
			table.insert(middlewares, Rodux.loggerMiddleware)
		end
		local store = Rodux.Store.new(Reducers, nil, middlewares)

		-- Create root element
		local feedbackAppRoot = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new(LocalizationService.RobloxLocaleId),
			}, {
				Feedback = Roact.createElement(FeedbackApp),
			}),
		})

		-- Mount root element
		Roact.mount(feedbackAppRoot, CoreGui, "Feedback")
	end,
}

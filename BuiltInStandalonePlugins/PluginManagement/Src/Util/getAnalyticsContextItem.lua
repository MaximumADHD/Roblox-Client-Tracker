local Plugin = script.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

return function()
    return ContextServices.Analytics.new(function(analyticsService)
        local PLUGIN_ANALYTICS_CONTEXT = "PluginManagement"

        local function sendEvent(eventName, context)
            context = context or {}

            local args = Cryo.Dictionary.join({
                studioSid = analyticsService:GetSessionId(),
                clientId = analyticsService:GetClientId(),
            }, context)

            analyticsService:SendEventDeferred("studio", PLUGIN_ANALYTICS_CONTEXT, eventName, args)
        end

        local function reportCounter(counterName, count)
            analyticsService:ReportCounter(counterName, count or 1)
        end

        local function sendAndCount(eventName, context)
            sendEvent(eventName, context)
            reportCounter(PLUGIN_ANALYTICS_CONTEXT .. eventName)
        end

        return {
            TryInstallPluginFromWeb = function(pluginId)
                sendAndCount("TryInstallPluginFromWeb", {
                    pluginId = pluginId,
                })
            end,
            InstallPluginFromWebSuccess = function(pluginId)
                sendAndCount("InstallPluginFromWebSuccess", {
                    pluginId = pluginId,
                })
            end,
            InstallPluginFromWebFailure = function(pluginId, pluginInstallStatusCode)
                sendAndCount("InstallPluginFromWebFailure", {
                    pluginId = pluginId,
                    pluginInstallStatusCode = pluginInstallStatusCode,
                })
            end,
            TryUpdatePlugin = function(pluginId)
                sendAndCount("TryUpdatePlugin", {
                    pluginId = pluginId,
                })
            end,
            TryUpdateAllPlugins = function()
                sendAndCount("TryUpdateAllPlugins")
            end,
            UpdatePluginSuccess = function(pluginId)
                sendAndCount("UpdatePluginSuccess", {
                    pluginId = pluginId,
                })
            end,
            UpdatePluginFailure = function(pluginId)
                sendAndCount("UpdatePluginFailure", {
                    pluginId = pluginId,
                })
            end,
        }
    end)
end
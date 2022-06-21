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
            TryInstallPluginFromWeb = function(eventName, pluginId)
                sendAndCount(eventName, {
                    pluginId = pluginId,
                })
            end,
            InstallPluginFromWebSuccess = function(eventName, pluginId)
                sendAndCount(eventName, {
                    pluginId = pluginId,
                })
            end,
            InstallPluginFromWebFailure = function(eventName, pluginId, pluginInstallStatusCode)
                sendAndCount(eventName, {
                    pluginId = pluginId,
                    pluginInstallStatusCode = pluginInstallStatusCode,
                })
            end,
            TryUpdatePlugin = function(eventName, pluginId)
                sendAndCount(eventName, {
                    pluginId = pluginId,
                })
            end,
            TryUpdateAllPlugins = function(eventName)
                sendAndCount(eventName)
            end,
            UpdatePluginSuccess = function(eventName, pluginId)
                sendAndCount(eventName, {
                    pluginId = pluginId,
                })
            end,
            UpdatePluginFailure = function(eventName, pluginId)
                sendAndCount(eventName, {
                    pluginId = pluginId,
                })
            end,
        }
    end)
end
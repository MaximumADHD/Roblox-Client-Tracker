local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local AnalyticsHandlers = require(Plugin.Src.Resources.AnalyticsHandlers)

local analytics = ContextServices.Analytics.new(AnalyticsHandlers)

return analytics
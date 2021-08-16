local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local FrameworkUtil = Framework.Util
local AnalyticsHolder = require(Plugin.Src.Resources.AnalyticsHolder)

local thunkContextItems = {}
thunkContextItems.analytics = AnalyticsHolder

local thunkWithArgsMiddleware = FrameworkUtil.ThunkWithArgsMiddleware(thunkContextItems)

local middlewares = {
	thunkWithArgsMiddleware,
}

return middlewares

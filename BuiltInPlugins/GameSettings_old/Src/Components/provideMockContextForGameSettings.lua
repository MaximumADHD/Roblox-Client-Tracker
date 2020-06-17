local Plugin = script.Parent.Parent.Parent

--Turn this on when debugging the store and actions
local LOG_STORE_STATE_AND_EVENTS = false

local Rodux = require(Plugin.Rodux)

local SettingsImpl = require(Plugin.Src.Networking.SettingsImpl)
local SettingsImplProvider = require(Plugin.Src.Providers.SettingsImplContextItem)
local ThumbnailLoaderProvider = require(Plugin.Src.Providers.ThumbnailLoaderContextItem)
local DialogProvider = require(Plugin.Src.Providers.DialogProviderContextItem)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Framework = Plugin.Framework
local UILibraryWrapper = require(Framework.ContextServices.UILibraryWrapper)
local provideMockContext = require(Framework.TestHelpers.provideMockContext)

local Theme = require(Plugin.Src.Util.Theme)

local middlewares = {
    Rodux.thunkMiddleware,
}

if LOG_STORE_STATE_AND_EVENTS then
	table.insert(middlewares, Rodux.loggerMiddleware)
end

return function(props, children)
    if not props then
        props = {}
    end

    local contextItems = {}

    local showDialog = props.ShowDialog
    if not showDialog then
        showDialog = function()
        end
        table.insert(contextItems, DialogProvider.new(showDialog))
    end

    local settingsSaverLoader = props.SettingsSaverLoader
    if not settingsSaverLoader then
        settingsSaverLoader = SettingsImpl.new("")
        table.insert(contextItems, SettingsImplProvider.new(settingsSaverLoader))
    end

    local store = props.Store
    if not store then
        store = Rodux.Store.new(MainReducer, nil, middlewares)
        table.insert(contextItems, ThumbnailLoaderProvider.new(store))
    else
        table.insert(contextItems, store)
    end

    local themeContext = props.Theme
    if not themeContext then
        themeContext = Theme.new()
        table.insert(contextItems, themeContext)
    end

    local uiLibWrapper = props.UILibraryWrapper
    if not uiLibWrapper then
        uiLibWrapper = UILibraryWrapper.new()
        table.insert(contextItems, uiLibWrapper)
    end

    return provideMockContext(contextItems, children)
end

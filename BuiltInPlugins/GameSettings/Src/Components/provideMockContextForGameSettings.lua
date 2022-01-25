local Plugin = script.Parent.Parent.Parent

--Turn this on when debugging the store and actions
local LOG_STORE_STATE_AND_EVENTS = false

local Rodux = require(Plugin.Rodux)

local Dialog = require(Plugin.Src.ContextServices.Dialog)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Framework = require(Plugin.Framework)
local ContextServices = Framework.ContextServices
local UILibraryWrapper = ContextServices.UILibraryWrapper :: any
local provideMockContext = Framework.TestHelpers.provideMockContext
local FFlagDevFrameworkUseCreateContext = game:GetFastFlag("DevFrameworkUseCreateContext")

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
        table.insert(contextItems, Dialog.new(showDialog))
    end

    local store = props.Store
    if not store then
        store = Rodux.Store.new(MainReducer, nil, middlewares)
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
        if not FFlagDevFrameworkUseCreateContext then
            table.insert(contextItems, uiLibWrapper)
        end
    end

    if FFlagDevFrameworkUseCreateContext then
        return provideMockContext(contextItems, {
            UILibraryWrapper = ContextServices.provide({uiLibWrapper}, children)
        })
    else
        return provideMockContext(contextItems, children)
    end
end

local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local UILibraryWrapper = ContextServices.UILibraryWrapper
local UILibrary = require(Plugin.Packages.UILibrary)
local Http = require(Plugin.Packages.Http)

local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
local SourceStrings = Plugin.Src.Resources.SourceStrings
local LocalizedStrings = Plugin.Src.Resources.LocalizedStrings
local createMainReducer = require(Plugin.Src.Reducers.createMainReducer)

local localization = ContextServices.Localization.new({
	stringResourceTable = SourceStrings,
	translationResourceTable = LocalizedStrings,
	pluginName = "PlayerEmulator",
})

local store = Rodux.Store.new(createMainReducer(), nil, { Rodux.thunkMiddleware })

local networkingImpl = Http.Networking.new({
	isInternal = true,
	loggingLevel = 0,
})

return {
	theme = MakeTheme(),
	localization = localization,
	store = ContextServices.Store.new(store),
	networking = NetworkingContext.new(networkingImpl),
	uiLibraryWrapper = UILibraryWrapper.new(UILibrary),
}

local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local UILibraryWrapper = require(Plugin.Packages.Framework).ContextServices.UILibraryWrapper
local Http = require(Plugin.Packages.Http)

local NetworkingContext = require(Plugin.Src.ContextServices.NetworkingContext)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local createMainReducer = require(Plugin.Src.Reducers.createMainReducer)

local localization = ContextServices.Localization.new({
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
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
	uiLibraryWrapper = UILibraryWrapper.new(),
}

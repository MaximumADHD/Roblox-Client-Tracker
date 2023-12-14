-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework).ContextServices
local var40 = {}
var40.stringResourceTable = var0.Src.Resources.SourceStrings
var40.translationResourceTable = var0.Src.Resources.LocalizedStrings
var40.pluginName = "PlayerEmulator"
local var43 = var1.Store
var43 = require(var0.Src.Reducers.createMainReducer)
local var48 = var1.thunkMiddleware
local var52 = {}
var52.isInternal = true
local var54 = 0
var52.loggingLevel = var54
local var7 = {}
var54 = require(var0.Src.Resources.MakeTheme)
var7.theme = var54()
var7.localization = var2.Localization.new(var40)
local var58 = var2.Store
var58 = var43.new(var43(), nil, {})
var7.store = var58.new(var58)
var7.networking = require(var0.Src.ContextServices.NetworkingContext).new(require(var0.Packages.Http).Networking.new(var52))
return var7

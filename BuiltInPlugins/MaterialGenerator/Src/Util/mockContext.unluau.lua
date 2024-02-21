-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Packages.React)
local var4 = require(var0.Packages.Rodux)
local var5 = require(var0.Packages.ReactUtils).ContextStack
local var6 = var2.ContextServices
local var7 = var2.TestHelpers
local var8 = var0.Src.Components
local var9 = require(var8.GenerationProvider)
local var10 = require(var8.GeneratedMaterialsProvider)
local var11 = require(var8.PluginSettingsProvider)
local var12 = require(var8.PreviewProvider)
local var13 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
local var14 = {}
local var70 = var6.Analytics.mock()
local var71 = var6.Localization
local var17 = var71.mock()
var71 = require(var0.Src.Resources.MakeTheme)
local var18 = var71(true)
local var19 = require(var0.Packages.MaterialFramework).Context.StudioServices.mock()
var70 = var13
if not var70() then
   local var81 = var4.Store
   var81 = require(var0.Src.Reducers.MainReducer)
   local var85 = var4.thunkMiddleware
   local var1 = var6.Store.new(var81.new(var81, nil, {}, nil))
   table.insert(var14, var1)
   local var2 = var14
   local var3 = require(var0.Src.Controllers.MaterialPreviewController).new(var1, true)
   table.insert()
end
return function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   if var13() then
      local var115 = var3.createElement(var9)
      local var119 = var3.createElement(var10)
      local var123 = var3.createElement(var11)
      local var127 = var3.createElement(var12)
      var115 = arg2
      local var134 = {}
      local var138 = {}
      var138.providers = var1.append({}, var115 or {})
      var134.ContextStack = var3.createElement(var5, var138, arg1)
      return var7.provideMockContext(var14, var134)
   end
   return var7.provideMockContext(var14, arg1)
end

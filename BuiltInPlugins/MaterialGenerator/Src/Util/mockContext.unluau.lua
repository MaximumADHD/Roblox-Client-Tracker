-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Rodux)
local var3 = var1.ContextServices
local var4 = var1.TestHelpers
local var42 = var2.Store
var42 = require(var0.Src.Reducers.MainReducer)
local var46 = var2.thunkMiddleware
local var7 = var3.Store.new(var42.new(var42, nil, {}, nil))
local var8 = {}
local var53 = var3.Analytics.mock()
local var10 = var3.Localization
var10 = var7
local var11 = require(var0.Src.Resources.MakeTheme)(true)
local var12 = require(var0.Packages.MaterialFramework).Context.StudioServices.new(true)
var53 = require(var0.Src.Flags.getFFlagMaterialGeneratorNewUI)
if not var53() then
   var10.mock() = var8
   var11 = var7
   local var0 = require(var0.Src.Controllers.MaterialPreviewController).new(var11, true)
   table.insert()
end
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var4.provideMockContext(var8, arg1)
end

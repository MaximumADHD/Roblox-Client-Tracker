-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework)
local var3 = var2.TestHelpers
local var4 = var2.ContextServices
local var37 = var1.Store
var37 = require(var0.Src.Reducers)
local var41 = var1.thunkMiddleware
local var7 = {}
local var48 = var4.Analytics.mock()
local var49 = var4.Localization
local var10 = var49.mock()
var49 = require(var0.Src.Resources.MakeTheme)
local var11 = var49(true)
local var12 = var4.Store.new(var37.new(var37, require(var0.Src.InitialStoreState), {}, nil))
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var3.provideMockContext(var7, arg1)
end

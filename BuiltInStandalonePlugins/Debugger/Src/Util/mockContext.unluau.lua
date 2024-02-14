-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework)
local var3 = var2.TestHelpers
local var4 = var2.ContextServices
local var5 = require(var0.Src.Reducers.MainReducer)
local var6 = require(var0.Src.Middleware.MainMiddleware)
local var7 = {}
local var136 = var4.Analytics.mock()
local var137 = var4.Localization
local var10 = var137.mock()
var137 = require(var0.Src.Resources.MakeTheme)
local var11 = var137(true)
return function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected initialStore to be a table")
   if type(arg2) == "table" then
      local var0 = false
   end
   assert(true, "Expected children to be a table")
   local var158 = var1
   var158 = arg1
   local var1 = var158.Store.new(var5, var158, var6)
   local var164 = var7
   local var166 = var4.Store
   var166 = var1
   local var3 = var166.new(var166)
   table.insert()
   local var4 = {}
   function var4.getStore()
      return var1
   end
   
   function var4.getChildrenWithMockContext()
      return var3.provideMockContext(var7, arg2)
   end
   
   return var4
end

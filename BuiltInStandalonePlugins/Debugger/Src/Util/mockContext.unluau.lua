-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework)
local var3 = var2.TestHelpers
local var4 = var2.ContextServices
local var5 = require(var0.Src.Reducers.MainReducer)
local var6 = require(var0.Src.Middleware.MainMiddleware)
local var7 = {}
local var40 = var4.Analytics.mock()
local var41 = var4.Localization
local var10 = var41.mock()
var41 = require(var0.Src.Resources.MakeTheme)
local var11 = var41(true)
return function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected initialStore to be a table")
   if type(arg2) == "table" then
      local var0 = false
   end
   assert(true, "Expected children to be a table")
   local var62 = var1
   var62 = arg1
   local var1 = var62.Store.new(var5, var62, var6)
   local var68 = var7
   local var70 = var4.Store
   var70 = var1
   local var3 = var70.new(var70)
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

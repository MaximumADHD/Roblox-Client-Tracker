-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework)
local var3 = var2.TestHelpers
local var4 = var2.ContextServices
local var5 = require(var0.Src.Reducers.MainReducer)
local var6 = require(var0.Src.Middleware.MainMiddleware)
local var7 = {}
local var32 = var4.Analytics.mock()
local var33 = var4.Localization
local var10 = var33.mock()
var33 = require(var0.Src.Resources.MakeTheme)
local var11 = var33(true)
return function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected initialStore to be a table")
   if type(arg2) == "table" then
      local var0 = false
   end
   assert(true, "Expected children to be a table")
   local var54 = var1
   var54 = arg1
   local var1 = var54.Store.new(var5, var54, var6)
   local var60 = var7
   local var62 = var4.Store
   var62 = var1
   local var3 = var62.new(var62)
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

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = require(var0.Src.Controllers.ServiceController)
local var5 = {}
local var23 = var3.Analytics.mock()
local var24 = var3.Localization
local var8 = var24.mock()
var24 = require(var0.Src.Resources.MakeTheme)
local var9 = var24(true)
return function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   local var0 = table.clone(var5)
   local var41 = arg2
   local var42 = nil
   local var43 = nil
   table.insert(var0, var45)
   local var47 = var2
   var47 = var0
   var43 = arg1
   return var47.provideMockContext(var47, var43)
end

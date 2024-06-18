-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.TestHelpers
local var3 = var1.ContextServices
local var4 = {}
local var103 = var3.Analytics.mock()
local var104 = var3.Localization
local var7 = var104.mock()
var104 = require(var0.Src.Resources.MakeTheme)
local var8 = var104(true)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var2.provideMockContext(var4, arg1)
end

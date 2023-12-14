-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).TestHelpers
local var11 = var0.Src.Resources
local var3 = {}
var11 = require(var11.MakeTheme)
local var16 = var11(true)
return function(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected story to be a table")
   return var1.provideMockContext(var3, arg1)
end

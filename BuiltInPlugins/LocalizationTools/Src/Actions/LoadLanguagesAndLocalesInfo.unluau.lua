-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1, arg2)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Expected allLanguages to be a table")
   if type(arg2) == "table" then
      local var0 = false
   end
   assert(true, "Expected localesToLanguages to be a table")
   local var0 = {}
   var0.allLanguages = arg1
   var0.localesToLanguages = arg2
   return var0
end)

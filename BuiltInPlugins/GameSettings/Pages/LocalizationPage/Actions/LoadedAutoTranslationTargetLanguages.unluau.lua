-- Generated with Unluau (https://github.com/valencefun/unluau)
local var9 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Util
var9 = var9.Action
return var9(script.Name, function(arg1, arg2)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true, "sourceLanguage must be a string")
   if type(arg2) == "table" then
      local var0 = false
   end
   assert(true, "targetLanguages must be a table")
   local var0 = {}
   var0.sourceLanguage = arg1
   var0.targetLanguages = arg2
   return var0
end)

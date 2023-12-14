-- Generated with Unluau (https://github.com/valencefun/unluau)
local var8 = require(script.Parent.Parent.Parent.Packages.Framework).Util
var8 = var8.Action
return var8(script.Name, function(arg1, arg2, arg3)
   if type(arg1) == "boolean" then
      local var0 = false
   end
   assert(true, "isUploadFeeEnabled must be a boolean")
   if arg2 == "type" then
      if type(arg2) == "number" then
         local var0 = false
      end
      local var0 = true
   end
   assert(true, "uploadFee must be a number or nil")
   if arg3 == "type" then
      if type(arg3) == "boolean" then
         local var0 = false
      end
      local var0 = true
   end
   assert(true, "canAffordUploadFee must be a boolean or nil")
   local var0 = {}
   var0.isUploadFeeEnabled = arg1
   var0.uploadFee = arg2
   var0.canAffordUploadFee = arg3
   return var0
end)

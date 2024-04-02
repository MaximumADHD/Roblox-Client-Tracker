-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Enums.PropertyNameValidationError)
local var2 = require(var0.Src.Types)
local var3 = {}
var1.DoesNotExist = "PropertyNameErrorDoesNotExist"
var1.DoesNotExistOnType = "PropertyNameErrorDoesNotExistOnType"
var1.AlreadyDefined = "PropertyNameErrorAlreadyDefined"
var3.Unknown = "ErrorUnknown"
return function(arg1, arg2, arg3)
   if arg2 == "Label" then
      return ""
   end
   return arg1:getText("Label", var3[arg2] or var3.Unknown, arg3)
end

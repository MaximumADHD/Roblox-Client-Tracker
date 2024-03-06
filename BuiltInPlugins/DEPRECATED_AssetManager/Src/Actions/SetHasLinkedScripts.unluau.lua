-- Generated with Unluau (https://github.com/valencefun/unluau)
local var12 = require(script.Parent.Parent.Parent.Packages.Framework).Util
if game:GetFastFlag("DisableLinkedScriptStudioEditing") then
   return nil
end
var12 = var12.Action
return var12(script.Name, function(arg1)
   if type(arg1) == "boolean" then
      local var0 = false
   end
   local var0 = true
   local var1 = string.format("SetHasLinkedScripts requires a boolean, not %s", type(arg1))
   assert()
   local var2 = {}
   var2.hasLinkedScripts = arg1
   return var2
end)

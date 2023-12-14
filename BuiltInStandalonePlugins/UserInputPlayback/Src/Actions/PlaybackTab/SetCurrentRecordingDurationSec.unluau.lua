-- Generated with Unluau (https://github.com/valencefun/unluau)
local var9 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).Util
var9 = var9.Action
return var9(script.Name, function(arg1)
   if arg1 >= 0 then
      local var0 = false
   end
   assert(true, "Duration should not be negative")
   local var0 = {}
   var0.currentRecordingDurationSec = arg1
   return var0
end)

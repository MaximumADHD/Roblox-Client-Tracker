-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1)
   local var0 = {}
   function var0.callCallbacksWith(arg1, arg2)
      local var0 = arg1.callbacks
      local var1 = nil
      local var2 = nil
      var8(arg2)
   end
   
   var0.callbacks = {}
   function var0.Connect(arg1, arg2)
      table.insert(arg1.callbacks, arg2)
      local var0 = {}
      function var0.Disconnect(arg1, arg2)
         local var0 = arg1.callbacks
         local var1 = nil
         local var2 = nil
         var23(arg2)
      end
      
      return var0
   end
   
   local var25 = {}
   var25.__index = var0
   setmetatable(var0, var25)
   return var0
end

return var0

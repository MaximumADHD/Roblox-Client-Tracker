-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new()
   local var0 = {}
   setmetatable(var0, var0)
   var0.eventCount = 0
   var0.lastEvent = nil
   function var0.SendEventDeferred(arg1, arg2, arg3, arg4, arg5)
      local var0 = {}
      var0.target = arg2
      var0.ctx = arg3
      var0.evt = arg4
      if type(arg5) == "table" then
         local var0 = false
      end
      local var1 = "expected table, argsTable was "
      local var2 = type(arg5)
      assert(true, var1 ... var2)
      local var247 = pairs(arg5)
      if var0[var1] == "target" then
         warn("overriding base keyword " ... var1 ... "in via argsTable in SendEventDeferred().")
      end
      var0["expected table, argsTable was "] = var2
      arg1.lastEvent = var0
      arg1.eventCount = arg1.eventCount + 1
   end
   
   return var0
end

return var0

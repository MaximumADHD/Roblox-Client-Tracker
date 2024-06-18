-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1, arg2)
   local var3 = {}
   var3._handler = arg2
   var3._draggerContext = arg1
   var3._boundsChanged = arg2
   return setmetatable(var3, var0)
end

function var0.install(arg1)
   arg1._scrubberChangedConnection = arg1._draggerContext.ScrubberSignal:Connect(arg1._boundsChanged)
end

function var0.uninstall(arg1)
   arg1._scrubberChangedConnection:Disconnect()
end

function var0.setSelection(arg1, arg2)
end

return var0

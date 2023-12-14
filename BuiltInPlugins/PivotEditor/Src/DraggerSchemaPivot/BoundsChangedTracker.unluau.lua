-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1, arg2)
   local var3 = {}
   var3._handler = arg2
   var3._installed = false
   return setmetatable(var3, var0)
end

function var0.install(arg1)
   arg1:_connect()
   arg1._installed = true
end

function var0.uninstall(arg1)
   arg1:_disconnect()
   arg1._installed = false
end

function var0.setSelection(arg1, arg2)
   if arg1._installed then
      arg1:_disconnect()
      arg1._instance = arg2:getPrimaryObject()
      arg1:_connect()
   end
end

function var0._connect(arg1)
   if not arg1._instance then
      arg1:_setPart(nil)
   end
   if arg1._instance:IsA("Model") then
      arg1._primaryConnection = arg1._instance:GetPropertyChangedSignal("PrimaryPart"):Connect(function(arg1, arg2)
         local var35 = {}
         var35._handler = arg2
         var35._installed = false
         return setmetatable(var35, var0)
      end)
      arg1._pivotChangedConnection = arg1._instance:GetPropertyChangedSignal("WorldPivot"):Connect(function(arg1)
         arg1:_connect()
         arg1._installed = true
      end)
      arg1:_setPart(arg1._instance.PrimaryPart)
   end
   if arg1._instance:IsA("BasePart") then
      arg1:_setPart(arg1._instance)
   end
   arg1:_setPart(nil)
end

function var0._disconnect(arg1)
   if arg1._primaryConnection then
      arg1._primaryConnection:Disconnect()
      arg1._primaryConnection = nil
   end
   if arg1._pivotChangedConnection then
      arg1._pivotChangedConnection:Disconnect()
      arg1._pivotChangedConnection = nil
   end
   arg1:_setPart(nil)
end

function var0._setPart(arg1, arg2)
   if arg1._movedConnection then
      arg1._movedConnection:Disconnect()
      arg1._movedConnection = nil
   end
   if arg1._partPivotChangedConnection then
      arg1._partPivotChangedConnection:Disconnect()
      arg1._partPivotChangedConnection = nil
   end
   if arg2 then
      local function fun0(arg1, arg2)
         local var85 = {}
         var85._handler = arg2
         var85._installed = false
         return setmetatable(var85, var0)
      end
      
      local var95 = arg2:GetPropertyChangedSignal("PivotOffset"):Connect(fun0)
      arg1._partPivotChangedConnection = var95
      var95 = arg2
      arg1._movedConnection = var95 or arg2:GetRootPart():GetPropertyChangedSignal("CFrame"):Connect(fun0)
   end
end

return var0

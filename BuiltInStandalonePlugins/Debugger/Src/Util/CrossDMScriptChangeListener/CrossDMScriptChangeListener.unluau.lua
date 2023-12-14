-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Actions
local var1 = require(var0.Common.SetFilenameForGuid)
local var2 = require(var0.Common.SetScriptSourceLine)
local var3 = {}
var3.__index = var3
local function var4(arg1, arg2)
   local var0 = arg2 or game:GetService("CrossDMScriptChangeListener")
   arg1._guidNameChangedConnection = var0.GuidNameChanged:Connect(function(arg1, arg2)
      local var0 = var1(arg1, arg2)
      arg1.store:dispatch()
   end)
   arg1._guidLineChangedConnection = var0.GuidLineContentsChanged:Connect(function(arg1, arg2, arg3)
      local var0 = var2(arg1, arg2, arg3)
      arg1.store:dispatch()
   end)
end

function var3.destroy(arg1)
   if arg1._guidNameChangedConnection then
      arg1._guidNameChangedConnection:Disconnect()
      arg1._guidNameChangedConnection = nil
   end
   if arg1._guidLineChangedConnection then
      arg1._guidLineChangedConnection:Disconnect()
      arg1._guidLineChangedConnection = nil
   end
end

function var3.new(arg1, arg2)
   local var0 = {}
   var0.store = arg1
   var4(var0, arg2)
   setmetatable(var0, var3)
   return var0
end

return var3

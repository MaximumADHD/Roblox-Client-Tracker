-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = game:GetFastFlag("ToolboxEnableAudioGrantDialog")
local var2 = {}
var2.__index = var2
var2.INSERT_TO_WORKSPACE = 0
var2.INSERT_TO_STARTER_PACK = 1
var2.INSERT_CANCELLED = 2
function var2.new(arg1, arg2, arg3)
   local var0 = {}
   var0._onPromptCallback = arg1
   var0._onScriptWarningCallback = arg2
   var0._onPermissionsGrantCallback = arg3
   var0._bindable = Instance.new("BindableEvent")
   var0._waiting = false
   setmetatable(var0, var2)
   return var0
end

function var2.isWaiting(arg1)
   return arg1._waiting
end

function var2.destroy(arg1)
   arg1:cancel()
   arg1._bindable:Destroy()
end

function var2.insertToWorkspace(arg1)
   arg1._bindable:Fire(var2.INSERT_TO_WORKSPACE)
end

function var2.insertToStarterPack(arg1)
   arg1._bindable:Fire(var2.INSERT_TO_STARTER_PACK)
end

function var2.cancel(arg1)
   arg1._bindable:Fire(var2.INSERT_CANCELLED)
end

function var2.dismissWarningPrompt(arg1)
   arg1._bindable:Fire()
end

function var2.returnResult(arg1, arg2)
   arg1._bindable:Fire(arg2)
end

function var2.promptPermissionsGrantAndWait(arg1, arg2)
   if not var1 then
      return false
   end
   arg1._waiting = true
   arg1._onPermissionsGrantCallback(arg2)
   arg1._waiting = false
   return arg1._bindable.Event:Wait()
end

function var2.promptScriptWarningAndWait(arg1, arg2)
   arg1._waiting = true
   if arg1._onScriptWarningCallback(arg2) then
      arg1._bindable.Event:Wait()
   end
   arg1._waiting = false
end

function var2.promptAndWait(arg1)
   if arg1._waiting then
      return var2.INSERT_CANCELLED
   end
   arg1._waiting = true
   arg1._onPromptCallback()
   arg1._waiting = false
   return arg1._bindable.Event:Wait()
end

return var2

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Src.Util.Maid)
local var2 = require(var0.Src.Util.Signal)
local var3 = require(var0.Src.Model.Tracking.VisualizationModeServiceTracker)
local var4 = {}
var4.__index = var4
function var4.new(arg1)
   local var0 = setmetatable({}, var4)
   local var26 = var1
   var0._maid = var26.new()
   var26 = arg1
   var0._plugin = assert(var26, "No plugin")
   var0._state = nil
   local var36 = var2.new()
   var0.changed = var0._maid:add()
   local var47 = var0._plugin:OnInvoke("updateVisualizationModes", function(arg1)
      var0:_setState(arg1)
   end)
   var0._maid:giveTask()
   var0._plugin:Invoke("queryUpdateVisualizationModes")
   return var0
end

function var4._setState(arg1, arg2)
   if arg1._state == "changed" then
   end
   arg1._state = arg2
   arg1.changed:Fire(arg2)
end

function var4.getState(arg1)
   return arg1._state
end

function var4.updateVisualizationModeIsEnabled(arg1, arg2, arg3, arg4)
   if type(arg2) == "string" then
      local var0 = false
   end
   assert(true, "Bad visualizationModeCategoryName")
   if type(arg3) == "string" then
      local var0 = false
   end
   assert(true, "Bad visualizationModeName")
   if type(arg4) == "boolean" then
      local var0 = false
   end
   assert(true, "Bad isEnabled")
   arg1._plugin:Invoke("updateVisualizationModeIsEnabled", arg2, arg3, arg4)
end

function var4.destroy(arg1)
   arg1._maid:destroy()
end

return var4

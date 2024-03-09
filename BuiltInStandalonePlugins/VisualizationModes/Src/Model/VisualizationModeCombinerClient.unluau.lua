-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Src.Util.Maid)
local var2 = require(var0.Src.Model.Tracking.VisualizationModeServiceTracker)
local var3 = {}
var3.__index = var3
function var3.new(arg1, arg2)
   local var0 = setmetatable({}, var3)
   local var22 = var1
   var0._maid = var22.new()
   var22 = arg2
   var0._tracker = assert(var22, "No tracker")
   var0._plugin = assert(arg1, "No plugin")
   var0:_setupStateBinding()
   var0:_bindRemoteRequests()
   return var0
end

function var3._bindRemoteRequests(arg1)
   local var0 = arg1._plugin:OnInvoke("updateVisualizationModeIsEnabled", function(arg1, arg2)
      local var0 = setmetatable({}, var3)
      local var44 = var1
      var0._maid = var44.new()
      var44 = arg2
      var0._tracker = assert(var44, "No tracker")
      var0._plugin = assert(arg1, "No plugin")
      var0:_setupStateBinding()
      var0:_bindRemoteRequests()
      return var0
   end)
   arg1._maid:giveTask()
end

function var3._setupStateBinding(arg1)
   local var82 = arg1._tracker.changed:Connect(function(arg1, arg2)
      local var0 = setmetatable({}, var3)
      local var69 = var1
      var0._maid = var69.new()
      var69 = arg2
      var0._tracker = assert(var69, "No tracker")
      var0._plugin = assert(arg1, "No plugin")
      var0:_setupStateBinding()
      var0:_bindRemoteRequests()
      return var0
   end)
   arg1._maid:giveTask()
   local var85 = "updateVisualizationModes"
   local var2 = arg1._tracker:getState()
   arg1._plugin:Invoke()
   local var3 = arg1._plugin:OnInvoke("queryUpdateVisualizationModes", function(arg1, arg2, arg3)
      if type(arg1) == "string" then
         local var0 = false
      end
      assert(true, "Bad visualizationModeCategoryName")
      if type(arg2) == "string" then
         local var0 = false
      end
      assert(true, "Bad visualizationModeName")
      if type(arg3) == "boolean" then
         local var0 = false
      end
      assert(true, "Bad isEnabled")
      arg1._tracker:updateVisualizationModeIsEnabled(arg1, arg2, arg3)
   end)
   arg1._maid:giveTask()
end

function var3.destroy(arg1)
   arg1._maid:destroy()
end

return var3

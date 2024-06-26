-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.Maid)
local var3 = require(var0.Src.Util.Signal)
local var4 = {}
var4.__index = var4
function var4.new(arg1)
   if typeof(arg1) == "Instance" then
      local var0 = arg1:IsA("VisualizationMode")
   end
   assert(false, "Bad visualizationMode")
   local var0 = setmetatable({}, var4)
   var0._maid = var2.new()
   var0._visualizationMode = arg1
   var0._state = nil
   local var1 = var3.new()
   var0.changed = var0._maid:add()
   var0:_startTracking()
   return var0
end

function var4.getState(arg1)
   return arg1._state
end

function var4._setState(arg1, arg2)
   if arg1._state == "changed" then
   end
   arg1._state = arg2
   arg1.changed:Fire(arg2)
end

function var4._startTracking(arg1)
   local var84 = arg1._visualizationMode:GetPropertyChangedSignal("Name"):Connect(function(arg1)
      if typeof(arg1) == "Instance" then
         local var0 = arg1:IsA("VisualizationMode")
      end
      assert(false, "Bad visualizationMode")
      local var0 = setmetatable({}, var4)
      var0._maid = var2.new()
      var0._visualizationMode = arg1
      var0._state = nil
      local var1 = var3.new()
      var0.changed = var0._maid:add()
      var0:_startTracking()
      return var0
   end)
   arg1._maid:giveTask()
   local var94 = arg1._visualizationMode:GetPropertyChangedSignal("Title"):Connect(function(arg1)
      return arg1._state
   end)
   arg1._maid:giveTask()
   local var108 = arg1._visualizationMode:GetPropertyChangedSignal("Enabled"):Connect(function(arg1, arg2)
      if arg1._state == "changed" then
      end
      arg1._state = arg2
      arg1.changed:Fire(arg2)
   end)
   arg1._maid:giveTask()
   local var3 = arg1._visualizationMode:GetPropertyChangedSignal("ToolTip"):Connect(function()
      arg1:_updateState()
   end)
   arg1._maid:giveTask()
   arg1:_updateState()
end

function var4.updateVisualizationModeIsEnabled(arg1, arg2)
   arg1._visualizationMode.Enabled = arg2
end

function var4._updateState(arg1)
   local var126 = {}
   var126.name = arg1._visualizationMode.Name
   var126.title = arg1._visualizationMode.Title
   var126.enabled = arg1._visualizationMode.Enabled
   var126.toolTip = arg1._visualizationMode.ToolTip
   local var0 = table.freeze(var126)
   arg1:_setState()
end

function var4.destroy(arg1)
   arg1._maid:destroy()
end

return var4

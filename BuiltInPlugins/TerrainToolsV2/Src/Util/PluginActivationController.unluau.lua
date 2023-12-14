-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.Util.Signal
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Src.Util.TerrainEnums).ToolId
local var5 = var1.ContextServices.ContextItem:extend("PluginActivationController")
function var5.new(arg1)
   local var27 = {}
   var27._plugin = arg1
   var27._active = false
   var27._activeTool = var4.None
   var27._selectedTool = var4.None
   var27._pluginDeactivationConnection = nil
   var27._onToolActivated = var2.new()
   var27._onToolDeactivated = var2.new()
   local var1 = setmetatable(var27, var5)
   assert(var1._plugin, "PluginActivationController.new() requires a plugin")
   function var1.onPluginDeactivation()
      var1:pauseActivatedTool()
   end
   
   return var1
end

function var5.pauseActivatedTool(arg1)
   if arg1._activeTool ~= var4.None then
      if not arg1._active then
      end
   end
   arg1._selectedTool = arg1._activeTool
   arg1:deactivateTool()
end

function var5.restoreSelectedTool(arg1)
   if arg1._activeTool == "_active" then
      if not arg1._active then
         if arg1._selectedTool == "_active" then
         end
      end
   end
   arg1:activateTool(arg1._selectedTool)
end

function var5.subscribeToToolActivated(arg1, ...)
   local var0 = ...
   return arg1._onToolActivated:Connect()
end

function var5.subscribeToToolDeactivated(arg1, ...)
   local var0 = ...
   return arg1._onToolDeactivated:Connect()
end

function var5.getActiveTool(arg1)
   return arg1._activeTool
end

function var5.destroy(arg1)
   arg1:deselectTool()
   if arg1._plugin:IsActivated() then
      arg1._plugin:Deactivate()
   end
end

function var5.activateTool(arg1, arg2)
   if arg2 == "_active" then
      local var0 = false
   end
   assert(true, "activateTool requires toolId to not be ToolId.None")
   arg1._active = true
   arg1._activeTool = arg2
   arg1._selectedTool = arg1._activeTool
   if var3.ToolActivatesPlugin[arg2] then
      arg1._plugin:Activate(true)
   end
   if arg1._pluginDeactivationConnection then
      arg1._pluginDeactivationConnection:Disconnect()
   end
   arg1._pluginDeactivationConnection = arg1._plugin.Deactivation:Connect(arg1.onPluginDeactivation)
   arg1._onToolActivated:Fire(arg2)
end

function var5.deactivateTool(arg1)
   if arg1._pluginDeactivationConnection then
      arg1._pluginDeactivationConnection:Disconnect()
      arg1._pluginDeactivationConnection = nil
   end
   arg1._active = false
   arg1._activeTool = var4.None
   if arg1._plugin:IsActivated() then
      arg1._plugin:Deactivate()
   end
   arg1._onToolDeactivated:Fire(arg1._activeTool)
end

function var5.deselectTool(arg1)
   arg1:deactivateTool()
   arg1._selectedTool = var4.None
end

return var5

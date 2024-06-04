-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
require(var0.Bin.Common.defineLuaFlags)
if not game:GetFastFlag("StudioVisualizationModes") then
end
local var1 = require(var0.Packages.TestLoader)
var1.launch("VisualizationModes", var0.Src)
if var1.isCli() then
end
local var22 = var0.Name
plugin.Name = var22
function var22(arg1)
   local var47 = var0.Src
   local var1 = require(var47.Util.Maid).new()
   local var54 = require(var0.Src.Modes.StudioVisualizationModeProvider).new()
   var1:add()
   var47 = require(var0.Src.VisualizationModesPlugin)
   local var57 = {}
   var57.Plugin = arg1
   local var4 = require(var0.Packages.ReactRoblox).createRoot(Instance.new("Frame"))
   var4:render(require(var0.Packages.React).createElement(var47, var57))
   var1:giveTask(function()
      var4:unmount()
   end)
   local var5 = arg1.Unloading:Connect(function()
      var1:destroy()
   end)
   var1:giveTask()
end

var22(plugin)

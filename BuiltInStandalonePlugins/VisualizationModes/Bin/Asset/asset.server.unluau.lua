-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script:FindFirstAncestor("VisualizationModes")
require(var0.Bin.Common.defineLuaFlags)
local var1 = require(var0.Packages.TestLoader)
var1.launch("VisualizationModes", var0.Src)
if var1.isCli() then
end
if not game:GetFastFlag("StudioVisualizationModes") then
end
local var2 = require(var0.Src.Util.Maid)
local var3 = var2.new()
plugin.Unloading:Connect(function()
   var3._mount = nil
end)
function()
   local var0 = var2.new()
   local var1 = require(var0.Src.Model.Tracking.VisualizationModeServiceTracker).new()
   local var308 = require(var0.Src.Model.VisualizationModeCombinerClient).new(plugin, var0:add())
   var0:add()
   local var3 = require(var0.Src.Modes.StudioVisualizationModeProvider).new()
   var0:add()
   var3._mount = var0
end()

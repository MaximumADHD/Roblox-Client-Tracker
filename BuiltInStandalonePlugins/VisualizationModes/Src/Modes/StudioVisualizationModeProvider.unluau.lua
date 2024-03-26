-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactRoblox)
local var3 = require(var0.Src.Util.Maid)
local var4 = require(var0.Src.Modes.StudioVisualizationModes)
local var5 = require(var0.Packages.Framework).ContextServices
local var6 = var0.Src.Resources.Localization.SourceStrings
local var7 = var0.Src.Resources.Localization.LocalizedStrings
local var8 = game:GetService("VisualizationModeService")
local var9 = {}
var9.ClassName = "StudioVisualizationModeProvider"
var9.__index = var9
function var9.new()
   local var0 = setmetatable({}, var9)
   var0._maid = var3.new()
   local var162 = {}
   var162.stringResourceTable = var6
   var162.translationResourceTable = var7
   var162.pluginName = "VisualizationModes"
   var0._localization = var5.Localization.new(var162)
   local var172 = Instance.new("Folder")
   var0._root = var2.createRoot(var0._maid:add())
   local var180 = var0._localization
   local var181 = {}
   local var187 = {}
   var187.Plugin = plugin
   var187.Localization = var0._localization
   var181.StudioVisualizationModes = var2.createPortal(var1.createElement(var4, var187), var8)
   local var193 = var5.provide({}, var181)
   var0._root:render()
   var0._maid:giveTask(function()
      var0._root:unmount()
   end)
   return var0
end

function var9.destroy(arg1)
   arg1._maid:destroy()
end

return var9

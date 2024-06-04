-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = game:GetService("VisualizationModeService")
local var2 = require(var0.Src.Resources.Localization.createLocalization)
local var3 = require(var0.Src.Util.Maid)
local var4 = require(var0.Packages.React)
local var5 = require(var0.Packages.ReactRoblox)
local var6 = require(var0.Src.Modes.StudioVisualizationModes)
local var7 = require(var0.Packages.Framework).ContextServices
local var8 = {}
var8.ClassName = "StudioVisualizationModeProvider"
var8.__index = var8
function var8.new()
   local var0 = setmetatable({}, var8)
   var0._maid = var3.new()
   var0._localization = var2()
   var1:ClearAllChildren()
   local var388 = Instance.new("Folder")
   var0._root = var5.createRoot(var0._maid:add())
   local var396 = var0._localization
   local var397 = {}
   local var403 = {}
   var403.Plugin = plugin
   var397.StudioVisualizationModes = var5.createPortal(var4.createElement(var6, var403), var1)
   local var408 = var7.provide({}, var397)
   var0._root:render()
   var0._maid:giveTask(function()
      var0._root:unmount()
   end)
   return var0
end

function var8.destroy(arg1)
   arg1._maid:destroy()
end

return var8

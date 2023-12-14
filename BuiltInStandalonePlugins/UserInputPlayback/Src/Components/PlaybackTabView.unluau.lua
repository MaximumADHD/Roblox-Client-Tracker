-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Pane
local var5 = require(var0.Src.Util.Enums)
local var6 = require(var0.Src.Components.FileSelectorUIGroup)
local var7 = require(var0.Src.Components.PlaybackInfoUIGroup)
local var8 = require(var0.Src.Components.FilterSettingsUIGroup)
local var9 = var1.PureComponent:extend("PlaybackTabView")
function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   if var0.PluginState ~= var5.PluginState.Playing then
      if var0.PluginState ~= var5.PluginState.Disabled then
         local var0 = false
      end
      local var0 = true
   end
   local var60 = {}
   var60.Size = UDim2.new(1, 0, 0, 0)
   var60.AutomaticSize = Enum.AutomaticSize.Y
   var60.Padding = var1.PaddingPx
   var60.Layout = Enum.FillDirection.Vertical
   var60.Spacing = UDim.new(0, var1.PaddingPx)
   var60.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var60.VerticalAlignment = Enum.VerticalAlignment.Top
   local var76 = {}
   local var80 = {}
   var80.LayoutOrder = 1
   var80.RoduxStoreContext = "playbackTabFilter"
   var76.FileSelector = var1.createElement(var6, var80)
   local var87 = {}
   var87.LayoutOrder = 2
   var76.PlaybackInfoGroup = var1.createElement(var7, var87)
   local var93 = {}
   var93.LayoutOrder = 3
   var93.RoduxStoreContext = "playbackTabFilter"
   var93.Disabled = true
   var76.FilterSettings = var1.createElement(var8, var93)
   return var1.createElement(var4, var60, var76)
end

local var99 = {}
local var100 = var3.Stylizer
var99.Stylizer = var100
var9 = var3.withContext(var99)(var9)
function var100(arg1, arg2)
   local var0 = {}
   var0.PluginState = arg1.common.pluginState
   return var0
end

return require(var0.Packages.RoactRodux).connect(var100, nil)(var9)

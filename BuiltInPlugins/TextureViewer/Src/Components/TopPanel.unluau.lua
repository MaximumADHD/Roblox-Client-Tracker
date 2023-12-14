-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Pane
local var4 = var2.UI.IconButton
local var5 = var2.UI.TextLabel
local var6 = var0.Src.Util
local var7 = require(var6.Utils)
local var8 = require(var6.Constants)
return function(arg1, arg2, arg3)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer.TopPanel
   local var36 = {}
   var36.Size = var2.Size
   var36.Layout = Enum.FillDirection.Horizontal
   var36.Padding = var2.Padding
   var36.LayoutOrder = 1
   local var41 = {}
   local var45 = {}
   var45.Text = "# " ... var1:getText("TopPanel", "Textures") ... ": " ... arg2
   var45.Size = var2.AggregateStats.NumTextures.Size
   var45.TextXAlignment = Enum.TextXAlignment.Left
   var45.LayoutOrder = 1
   var41.NumTextures = var1.createElement(var5, var45)
   local var64 = {}
   var64.Size = var2.Refresh.Size
   var64.AnchorPoint = var2.Refresh.AnchorPoint
   var64.Position = var2.Refresh.Position
   var64.LayoutOrder = 2
   local var72 = {}
   local var76 = {}
   var76.Text = var1:getText("TopPanel", "Refresh")
   var76.TextXAlignment = Enum.TextXAlignment.Center
   var76.LeftIcon = var2.Refresh.Button.Icon
   var76.Size = UDim2.fromScale(1, 1)
   function var76.OnClick()
      arg1:refreshData()
   end
   
   local var91 = var1.createElement(var4, var76)
   var72.RefreshTextures = var91
   var41.RefreshWrapper = var1.createElement(var3, var64, var72)
   local var96 = {}
   var91 = var1:getText("TopPanel", "Size")
   var96.Text = var91 ... ": " ... var7.round(arg3 / var8.BYTES_IN_MB, 2) ... " MB"
   var96.Size = var2.AggregateStats.TotalMemory.Size
   var96.TextXAlignment = Enum.TextXAlignment.Right
   var96.LayoutOrder = 3
   var41.TotalMemory = var1.createElement(var5, var96)
   return var1.createElement(var3, var36, var41)
end

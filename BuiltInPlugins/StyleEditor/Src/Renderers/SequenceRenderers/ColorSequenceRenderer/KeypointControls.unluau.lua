-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = var1.useContext
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = var3.UI.IconButton
local var6 = var3.UI.Pane
local var7 = require(var0.Packages.Dash).join
local var8 = require(var0.Src.Resources.ModernIcons)
local var9 = require(var0.Src.Renderers.SequenceRenderers.LabelCell)
local var10 = require(var0.Src.Renderers.ColorRenderer)
local var11 = require(var0.Src.Types)
local var12 = require(var0.Src.Renderers.SequenceRenderers.Types)
local var13 = {}
var13.Type = "Color"
local var14 = {}
var14.Type = "Number"
var14.Min = 0
var14.Max = 1
return function(arg1)
   local var0 = var2(var4.Context.Consumer)[var4.Localization.Key]
   local var86 = {}
   var86.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "X-Center X-Middle X-FitY X-Pad X-RowM"
   local var91 = {}
   local var95 = {}
   var95.LayoutOrder = 1
   var1.Tag = "X-Left X-Pad X-RowM X-FitY"
   var95.Size = UDim2.fromScale(0.5, 1)
   local var104 = {}
   local var108 = {}
   var108.LayoutOrder = 1
   var108.Text = var0:getText("Label", "Time")
   var108.Schema = var14
   var108.Disabled = arg1.IsKeypointFixed
   var108.Value = arg1.Keypoint.Time
   function var108.OnChanged(arg1)
      local var73 = {}
      var73.Time = arg1
      arg1.OnEdit(var7(arg1.Keypoint, var73))
   end
   
   var104.Time = var1.createElement(var9, var108)
   local var122 = {}
   var122.LayoutOrder = 2
   var122.Text = var0:getText("Label", "Color")
   var122.Schema = var13
   var122.Value = arg1.Keypoint.Value
   function var122.OnChanged(arg1)
      local var81 = {}
      var81.Value = arg1
      arg1.OnEdit(var7(arg1.Keypoint, var81))
   end
   
   var122.Renderer = var10
   var104.Color = var1.createElement(var9, var122)
   local var136 = {}
   var136.LayoutOrder = 3
   var136.TooltipText = var0:getText("Control", "DeleteTooltip")
   var136.LeftIcon = var8.delete()
   var136.Disabled = arg1.IsKeypointFixed
   var136.OnClick = arg1.OnDelete
   var104.Delete = var1.createElement(var5, var136)
   var91.SequenceButtonsContainer = var1.createElement(var6, var95, var104)
   local var152 = {}
   var152.LayoutOrder = 2
   var1.Tag = "X-Right X-Pad X-RowM X-FitY"
   var152.Size = UDim2.fromScale(0.5, 1)
   local var161 = {}
   local var165 = {}
   var165.LayoutOrder = 1
   var165.Text = var0:getText("Modal", "Save")
   var165.OnClick = arg1.OnSave
   var161.Save = var1.createElement(var5, var165)
   var91.CommitButtonsContainer = var1.createElement(var6, var152, var161)
   return var1.createElement(var6, var86, var91)
end

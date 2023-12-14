-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages.DraggerSchemaCore
local var2 = require(var1.BoundsChangedTracker)
local var3 = require(var0.Packages.FitFrame).FitFrameVertical
local var4 = require(var0.Packages.Roact)
local var5 = require(var0.Packages.Framework)
local var6 = var5.ContextServices
local var7 = var5.UI
local var8 = var7.Button
local var9 = var7.Container
local var10 = var7.ScrollingFrame
local var11 = var7.Box
local var12 = var7.TextLabel
local var13 = var5.Util
local var14 = var13.LayoutOrderIterator
local var15 = var13.StyleModifier
local var16 = require(var0.Src.Actions.SetAlignableObjects)
local var17 = require(var0.Src.Components.AlignmentSettings)
local var18 = require(var0.Src.Components.AlignObjectsPreview)
local var19 = require(var0.Src.Thunks.UpdateAlignEnabled)
local var20 = require(var0.Src.Thunks.UpdateAlignment)
local var21 = require(script.Parent.TeachingCallout)
local var22 = require(var0.Src.Utility.AlignToolError)
local var23 = require(var0.Src.Utility.getAlignableObjects)
local var24 = require(var1.Selection).new()
local var25 = var4.PureComponent:extend("MainView")
function var25.init(arg1)
   arg1._boundsChangedTracker = var2.new(nil, function()
      arg1.props.updateAlignEnabled()
   end)
   arg1:_updateSelectionInfo()
end

function var25.render(arg1)
   local var0 = arg1.props
   local var1 = var0.updateAlignment
   local var2 = var0.Analytics
   local var3 = var0.Localization
   local var4 = var0.Stylizer
   local var5 = var14.new()
   if not var0.alignEnabled then
      if var0.disabledReason == "props" then
         local var0 = var0.disabledReason.errorCode
         if var0 then
            local var112 = var22
            var112 = var3
            nil = var112.getErrorText(var112, var0, var0.disabledReason.formatParameters)
         end
      end
   end
   local var6 = UDim.new(0, var4.MainView.Padding)
   local var128 = {}
   var128.Background = var11
   local var130 = {}
   local var134 = {}
   var134.AutoSizeCanvas = true
   local var136 = {}
   var136.Padding = var4.MainView.ListItemPadding
   var134.AutoSizeLayoutOptions = var136
   local var139 = {}
   local var143 = {}
   var143.PaddingLeft = var6
   var143.PaddingTop = var6
   var143.PaddingBottom = var6
   var139.Padding = var4.createElement("UIPadding", var143)
   local var148 = {}
   var148.LayoutOrder = var5:getNextOrder()
   var139.AlignmentSettings = var4.createElement(var17, var148)
   local var155 = {}
   var155.AutomaticSize = Enum.AutomaticSize.Y
   local var158 = var5:getNextOrder()
   var155.LayoutOrder = var158
   var155.Text = var158
   var155.Size = UDim2.fromScale(1, 0)
   var155.Style = "Error"
   var139.InfoLabel = var4.createElement(var12, var155)
   local var168 = {}
   local var169 = {}
   var169.left = 0
   var169.top = var4.MainView.Padding
   var169.right = 0
   var169.bottom = 0
   var168.margin = var169
   var168.width = UDim.new(1, 0)
   var168.BackgroundTransparency = 1
   var168.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var168.LayoutOrder = var5:getNextOrder()
   local var183 = {}
   local var187 = {}
   var187.Size = var4.MainView.PrimaryButtonSize
   var187.Style = "RoundPrimary"
   var187.StyleModifier = var0.alignEnabled and var15.Disabled
   var187.Text = var3:getText("MainView", "AlignButton")
   function var187.OnClick()
      arg1.props.updateAlignEnabled()
   end
   
   local var202 = {}
   local var206 = {}
   var206.Offset = Vector2.new(0, 6)
   var206.DefinitionId = "AlignToolCallout"
   var206.LocationId = "AlignButton"
   var202.TeachingCallout = var4.createElement(var21, var206)
   var183.Button = var4.createElement(var8, var187, var202)
   var139.ButtonContainer = var4.createElement(var3, var168, var183)
   var130.Scroller = var4.createElement(var10, var134, var139)
   if var0.previewVisible and var0.alignEnabled then
      local var0 = var4.createElement(var18) or nil
   end
   var130.AlignObjectsPreview = nil
   return var4.createElement(var9, var128, var130)
end

function var25._updateSelectionInfo(arg1)
   local var232 = arg1.props
   var232 = var23(var24:Get())
   var232.setAlignableObjects(var232)
   arg1._boundsChangedTracker:setParts(var235)
end

function var25.didMount(arg1)
   arg1._boundsChangedTracker:install()
   arg1._selectionChangedConnection = var24.SelectionChanged:Connect(function()
      arg1.props.updateAlignEnabled()
   end)
end

local function fun7(arg1)
   arg1._selectionChangedConnection:Disconnect()
   arg1._selectionChangedConnection = nil
   arg1._boundsChangedTracker:uninstall()
end

function var25.willUnmount(arg1)
   arg1._selectionChangedConnection:Disconnect()
   arg1._selectionChangedConnection = nil
   arg1._boundsChangedTracker:uninstall()
end

fun7 = var6.withContext
local var253 = {}
var253.Localization = var6.Localization
var253.Plugin = var6.Plugin
var253.Stylizer = var6.Stylizer
var253.Analytics = var6.Analytics
var25 = fun7(var253)(var25)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.previewVisible = arg1.previewVisible
   var0.alignEnabled = arg1.alignEnabled
   var0.disabledReason = arg1.disabledReason
   var0.alignableObjects = arg1.alignableObjects
   var0.alignmentMode = arg1.alignmentMode
   var0.alignmentSpace = arg1.alignmentSpace
   var0.enabledAxes = arg1.enabledAxes
   return var0
end, function(arg1)
   local var0 = {}
   function var0.updateAlignEnabled()
      arg1.props.updateAlignEnabled()
   end
   
   function var0.updateAlignment(arg1)
      arg1._boundsChangedTracker = var2.new(nil, function()
         arg1.props.updateAlignEnabled()
      end)
      arg1:_updateSelectionInfo()
   end
   
   function var0.setAlignableObjects()
      if arg1 then
         var16(var19)
      end
   end
   
   return var0
end)(var25)

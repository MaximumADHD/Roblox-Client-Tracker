-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.AvatarToolsShared)
local var3 = require(var0.Src.Actions.SetDocked)
local var4 = require(var0.Src.Thunks.UpdatePreviewAssetsSelected)
local var5 = require(var0.Packages.Framework)
local var6 = var5.ContextServices
local var7 = var5.Util
local var8 = var7.LayoutOrderIterator
local var9 = var5.UI.Pane
local var10 = var2.Components
local var11 = var10.PreviewDockWidget
local var12 = var10.PreviewViewportFrame
local var13 = var2.Util.AccessoryAndBodyToolShared.PreviewingInfo
local var14 = var1.PureComponent:extend("PreviewViewportFrameContainer")
var7.Typecheck.wrap(var14, script)
function var14.init(arg1)
   function arg1.onPoppedOut()
      arg1.props.SetDocked(false)
   end
   
   function arg1.onWidgetClosed()
      arg1.props.SetDocked(true)
   end
   
end

local function fun3(arg1)
   local var0 = arg1.props
   local var1 = var0.Docked
   local var2 = var0.SetDocked
   local var3 = {}
   var3.OnCapacityReached = arg1.props.UpdatePreviewAssetsSelected
   if var1 then
      var3.ShowPopoutButton = var1
      var3.OnPopoutClicked = arg1.onPoppedOut
      local var73 = {}
      var73.Size = UDim2.new(1, 0, 0, var0.Stylizer.PreviewViewportFrameHeight)
      var73.LayoutOrder = var0.LayoutOrder
      local var80 = {}
      var80.PreviewViewportFrame = var1.createElement(var12, var3)
      return var1.createElement(var9, var73, var80)
   end
   var3.OnClose = arg1.onWidgetClosed
   return var1.createElement(var11, var3)
end

function var14.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Docked
   local var2 = var0.SetDocked
   local var3 = {}
   var3.OnCapacityReached = arg1.props.UpdatePreviewAssetsSelected
   if var1 then
      var3.ShowPopoutButton = var1
      var3.OnPopoutClicked = arg1.onPoppedOut
      local var73 = {}
      var73.Size = UDim2.new(1, 0, 0, var0.Stylizer.PreviewViewportFrameHeight)
      var73.LayoutOrder = var0.LayoutOrder
      local var80 = {}
      var80.PreviewViewportFrame = var1.createElement(var12, var3)
      return var1.createElement(var9, var73, var80)
   end
   var3.OnClose = arg1.onWidgetClosed
   return var1.createElement(var11, var3)
end

fun3 = var6.withContext
local var93 = {}
var93.Stylizer = var6.Stylizer
var14 = fun3(var93)(var14)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = arg1.animation
   local var1 = {}
   var1.Docked = arg1.previewStatus.docked
   return var1
end, function(arg1)
   local var0 = {}
   function var0.SetDocked()
      arg1.props.SetDocked(false)
   end
   
   function var0.UpdatePreviewAssetsSelected()
      arg1.props.SetDocked(true)
   end
   
   return var0
end)(var14)

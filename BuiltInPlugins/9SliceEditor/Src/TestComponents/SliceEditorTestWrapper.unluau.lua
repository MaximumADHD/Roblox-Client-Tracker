-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.SliceRectUtil)
local var4 = require(var0.Src.Components.SliceEditorMain)
local var5 = var1.PureComponent:extend("SliceEditorTestWrapper")
function var5.init(arg1, arg2)
   local var0 = {}
   var0.sliceRect = arg2.sliceRect
   arg1.state = var0
end

function var5.didMount(arg1)
   arg1.sliceCenterChangedSignal = arg1.props.selectedObject:GetPropertyChangedSignal("SliceCenter"):Connect(function(arg1, arg2)
      local var0 = {}
      var0.sliceRect = arg2.sliceRect
      arg1.state = var0
   end)
end

function var5.willUnmount(arg1)
   if arg1.sliceCenterChangedSignal then
      arg1.sliceCenterChangedSignal:Disconnect()
      arg1.sliceCenterChangedSignal = nil
   end
end

local function fun5(arg1)
   local var0 = arg1.props
   local var57 = {}
   var57.selectedObject = var0.selectedObject
   var57.pixelDimensions = var0.pixelDimensions
   function var57.onClose()
   end
   
   var57.sliceRect = arg1.state.sliceRect
   var57.revertSliceRect = var0.sliceRect
   return var1.createElement(var4, var57)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var57 = {}
   var57.selectedObject = var0.selectedObject
   var57.pixelDimensions = var0.pixelDimensions
   function var57.onClose()
   end
   
   var57.sliceRect = arg1.state.sliceRect
   var57.revertSliceRect = var0.sliceRect
   return var1.createElement(var4, var57)
end

fun5 = var2.withContext
local var63 = {}
var63.Analytics = var2.Analytics
var63.Localization = var2.Localization
var63.Stylizer = var2.Stylizer
var63.Mouse = var2.Mouse
var5 = fun5(var63)(var5)
return var5

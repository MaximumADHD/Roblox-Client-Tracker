-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = var1.PureComponent:extend("TeachingCallout")
function var2.init(arg1)
   arg1.targetRef = var1.createRef()
end

function var2.didMount(arg1)
   arg1._isMounted = true
   spawn(function(arg1)
      arg1.targetRef = var1.createRef()
   end)
end

function var2.willUnmount(arg1)
   arg1._isMounted = false
   if arg1._attachedDefinitionId then
      arg1.props.CalloutController:detachCalloutsByDefinitionId(arg1._attachedDefinitionId)
   end
end

local function fun4(arg1)
   local var0 = arg1.props.Offset or Vector2.new(0, 0)
   local var52 = {}
   var52.BackgroundTransparency = 1
   var52.Position = UDim2.new(0, var0.X, 0, var0.Y)
   var52.Size = UDim2.new(1, 0, 1, 0)
   var1.Ref = arg1.targetRef
   return var1.createElement("Frame", var52)
end

function var2.render(arg1)
   local var0 = arg1.props.Offset or Vector2.new(0, 0)
   local var52 = {}
   var52.BackgroundTransparency = 1
   var52.Position = UDim2.new(0, var0.X, 0, var0.Y)
   var52.Size = UDim2.new(1, 0, 1, 0)
   var1.Ref = arg1.targetRef
   return var1.createElement("Frame", var52)
end

fun4 = require(var0.Packages.Framework).ContextServices.withContext
local var70 = {}
var70.CalloutController = require(var0.Src.Util.CalloutController)
var2 = fun4(var70)(var2)
return var2

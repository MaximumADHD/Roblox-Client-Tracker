-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.AvatarToolsShared)
local var3 = var2.Components.PreviewAvatarWheel
local var4 = require(var0.Packages.Framework).ContextServices
local var5 = var1.PureComponent:extend("InExperiencePreviewerFrame")
function var5.init(arg1)
   local var0 = {}
   var0.index = 1
   arg1.state = var0
end

function var5.didMount(arg1)
   arg1.modelSelectionChangedHandle = arg1.props.PreviewContext:getPreviewModelChangedSignal():Connect(function(arg1)
      local var0 = {}
      var0.index = 1
      arg1.state = var0
   end)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var214 = {}
   var214.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   local var216 = {}
   local var220 = {}
   var220.PreviewAvatars = var0.PreviewContext:getAvatars()
   var220.SelectedIndex = arg1.state.index
   var220.Size = var0.Stylizer.Size
   var220.Position = UDim2.fromScale(0.5, 1)
   var220.AnchorPoint = Vector2.new(0.5, 1)
   var220.Capacity = 3
   var216.AvatarSelection = var1.createElement(var3, var220)
   return var1.createElement("ScreenGui", var214, var216)
end

local function fun6(arg1)
   if arg1.modelSelectionChangedHandle then
      arg1.modelSelectionChangedHandle:Disconnect()
      arg1.modelSelectionChangedHandle = nil
   end
end

function var5.willUnmount(arg1)
   if arg1.modelSelectionChangedHandle then
      arg1.modelSelectionChangedHandle:Disconnect()
      arg1.modelSelectionChangedHandle = nil
   end
end

fun6 = var4.withContext
local var240 = {}
var240.Stylizer = var4.Stylizer
var240.PreviewContext = var2.Contexts.PreviewContext
var5 = fun6(var240)(var5)
return var5

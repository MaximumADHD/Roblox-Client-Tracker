-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.AutoThumbnails.AutoThumbnail)
local var4 = var1.Component:extend(script.Name)
function var4.getThumbnail(arg1, arg2, arg3)
   local var0 = arg1.props.Stylizer
   if arg3 == Enum.AssetFetchStatus.Success then
      return arg2
   end
   if arg3 == Enum.AssetFetchStatus.Success then
      return var0.subjectThumbnail.loadFailureImage
   end
   return var0.subjectThumbnail.loadingImage
end

function var4.init(arg1)
   arg1.maskRef = var1.createRef()
   arg1.maskBackgroundParent = nil
   arg1.parentChanged = nil
   arg1.colorChanged = nil
   function arg1.getBackgroundParent(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.subjectThumbnail.loadFailureImage
      end
      return var0.subjectThumbnail.loadingImage
   end
   
end

function var4.didMount(arg1)
   local function fun0(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.subjectThumbnail.loadFailureImage
      end
      return var0.subjectThumbnail.loadingImage
   end
   
   local function fun1(arg1)
      local var0 = arg1.Parent
      if var0 == "Parent" then
         if not var0:IsA("GuiObject") then
            return nil
         end
      end
      return nil
      if var0.BackgroundTransparency == 1 then
         return var0
      end
      local var75 = arg1
      var75 = var0
      return var75.getBackgroundParent(var75)
   end
   
   local var84 = arg1.maskRef:getValue().AncestryChanged:Connect(fun1)
   arg1.parentChanged = var84
   function var84(arg1)
      local var0 = arg1.Parent
      if var0 == "Parent" then
         if not var0:IsA("GuiObject") then
            return nil
         end
      end
      return nil
      if var0.BackgroundTransparency == 1 then
         return var0
      end
      local var75 = arg1
      var75 = var0
      return var75.getBackgroundParent(var75)
   end
   
   var84()
end

function var4.willUnmount(arg1)
   arg1.parentChanged:Disconnect()
   if arg1.colorChanged then
      arg1.colorChanged:Disconnect()
   end
end

local function fun8(arg1)
   local var0 = arg1.props
   local var102 = {}
   var102.BackgroundTransparency = 1
   var102.Size = var0.Size
   var102.Position = var0.Position
   var102.AnchorPoint = var0.AnchorPoint
   var102.LayoutOrder = var0.LayoutOrder
   var102.ZIndex = var0.ZIndex
   local var104 = {}
   local var108 = {}
   var108.Id = var0.Id
   var108.ThumbnailType = "AvatarHeadShot"
   function var108.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.subjectThumbnail.loadFailureImage
      end
      return var0.subjectThumbnail.loadingImage
   end
   
   var104.AutoThumbnail = var1.createElement(var3, var108)
   return var1.createElement("Frame", var102, var104)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var102 = {}
   var102.BackgroundTransparency = 1
   var102.Size = var0.Size
   var102.Position = var0.Position
   var102.AnchorPoint = var0.AnchorPoint
   var102.LayoutOrder = var0.LayoutOrder
   var102.ZIndex = var0.ZIndex
   local var104 = {}
   local var108 = {}
   var108.Id = var0.Id
   var108.ThumbnailType = "AvatarHeadShot"
   function var108.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.subjectThumbnail.loadFailureImage
      end
      return var0.subjectThumbnail.loadingImage
   end
   
   var104.AutoThumbnail = var1.createElement(var3, var108)
   return var1.createElement("Frame", var102, var104)
end

fun8 = var2.withContext
local var123 = {}
var123.Stylizer = var2.Stylizer
var4 = fun8(var123)(var4)
return var4

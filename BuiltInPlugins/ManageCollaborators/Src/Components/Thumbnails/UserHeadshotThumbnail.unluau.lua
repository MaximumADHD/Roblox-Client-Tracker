-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Components.Thumbnails.AutoThumbnail)
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
      local var77 = arg1
      var77 = var0
      return var77.getBackgroundParent(var77)
   end
   
   local var86 = arg1.maskRef:getValue().AncestryChanged:Connect(fun1)
   arg1.parentChanged = var86
   function var86(arg1)
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
      local var77 = arg1
      var77 = var0
      return var77.getBackgroundParent(var77)
   end
   
   var86()
end

function var4.willUnmount(arg1)
   arg1.parentChanged:Disconnect()
   if arg1.colorChanged then
      arg1.colorChanged:Disconnect()
   end
end

local function fun8(arg1)
   local var0 = arg1.props
   local var104 = {}
   var104.BackgroundTransparency = 1
   var104.Size = var0.Size
   var104.Position = var0.Position
   var104.AnchorPoint = var0.AnchorPoint
   var104.LayoutOrder = var0.LayoutOrder
   var104.ZIndex = var0.ZIndex
   local var106 = {}
   local var110 = {}
   var110.Id = var0.Id
   var110.ThumbnailType = "AvatarHeadShot"
   function var110.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.subjectThumbnail.loadFailureImage
      end
      return var0.subjectThumbnail.loadingImage
   end
   
   var106.AutoThumbnail = var1.createElement(var3, var110)
   return var1.createElement("Frame", var104, var106)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var104 = {}
   var104.BackgroundTransparency = 1
   var104.Size = var0.Size
   var104.Position = var0.Position
   var104.AnchorPoint = var0.AnchorPoint
   var104.LayoutOrder = var0.LayoutOrder
   var104.ZIndex = var0.ZIndex
   local var106 = {}
   local var110 = {}
   var110.Id = var0.Id
   var110.ThumbnailType = "AvatarHeadShot"
   function var110.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.subjectThumbnail.loadFailureImage
      end
      return var0.subjectThumbnail.loadingImage
   end
   
   var106.AutoThumbnail = var1.createElement(var3, var110)
   return var1.createElement("Frame", var104, var106)
end

fun8 = var2.ContextServices.withContext
local var125 = {}
var125.Stylizer = var2.Style.Stylizer
var4 = fun8(var125)(var4)
return var4

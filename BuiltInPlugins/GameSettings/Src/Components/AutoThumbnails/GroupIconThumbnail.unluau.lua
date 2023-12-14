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
      return var0.groupThumbnail.loadFailureImage
   end
   return var0.groupThumbnail.loadingImage
end

local function fun2(arg1)
   local var0 = arg1.props
   local var48 = {}
   var48.BackgroundTransparency = 1
   var48.Size = var0.Size
   var48.Position = var0.Position
   var48.AnchorPoint = var0.AnchorPoint
   var48.LayoutOrder = var0.LayoutOrder
   var48.ZIndex = var0.ZIndex
   local var50 = {}
   local var54 = {}
   var54.Id = var0.Id
   var54.ThumbnailType = "GroupIcon"
   function var54.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.groupThumbnail.loadFailureImage
      end
      return var0.groupThumbnail.loadingImage
   end
   
   var50.AutoThumbnail = var1.createElement(var3, var54)
   return var1.createElement("Frame", var48, var50)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var48 = {}
   var48.BackgroundTransparency = 1
   var48.Size = var0.Size
   var48.Position = var0.Position
   var48.AnchorPoint = var0.AnchorPoint
   var48.LayoutOrder = var0.LayoutOrder
   var48.ZIndex = var0.ZIndex
   local var50 = {}
   local var54 = {}
   var54.Id = var0.Id
   var54.ThumbnailType = "GroupIcon"
   function var54.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.groupThumbnail.loadFailureImage
      end
      return var0.groupThumbnail.loadingImage
   end
   
   var50.AutoThumbnail = var1.createElement(var3, var54)
   return var1.createElement("Frame", var48, var50)
end

fun2 = var2.withContext
local var69 = {}
var69.Stylizer = var2.Stylizer
var4 = fun2(var69)(var4)
return var4

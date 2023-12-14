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
      return var0.groupThumbnail.loadFailureImage
   end
   return var0.groupThumbnail.loadingImage
end

local function fun13(arg1)
   local var0 = arg1.props
   local var382 = {}
   var382.BackgroundTransparency = 1
   var382.Size = var0.Size
   var382.Position = var0.Position
   var382.AnchorPoint = var0.AnchorPoint
   var382.LayoutOrder = var0.LayoutOrder
   var382.ZIndex = var0.ZIndex
   local var384 = {}
   local var388 = {}
   var388.Id = var0.Id
   var388.ThumbnailType = "GroupIcon"
   function var388.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.groupThumbnail.loadFailureImage
      end
      return var0.groupThumbnail.loadingImage
   end
   
   var384.AutoThumbnail = var1.createElement(var3, var388)
   return var1.createElement("Frame", var382, var384)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var382 = {}
   var382.BackgroundTransparency = 1
   var382.Size = var0.Size
   var382.Position = var0.Position
   var382.AnchorPoint = var0.AnchorPoint
   var382.LayoutOrder = var0.LayoutOrder
   var382.ZIndex = var0.ZIndex
   local var384 = {}
   local var388 = {}
   var388.Id = var0.Id
   var388.ThumbnailType = "GroupIcon"
   function var388.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.groupThumbnail.loadFailureImage
      end
      return var0.groupThumbnail.loadingImage
   end
   
   var384.AutoThumbnail = var1.createElement(var3, var388)
   return var1.createElement("Frame", var382, var384)
end

fun13 = var2.ContextServices.withContext
local var403 = {}
var403.Stylizer = var2.Style.Stylizer
var4 = fun13(var403)(var4)
return var4

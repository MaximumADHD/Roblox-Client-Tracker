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
   local var392 = {}
   var392.BackgroundTransparency = 1
   var392.Size = var0.Size
   var392.Position = var0.Position
   var392.AnchorPoint = var0.AnchorPoint
   var392.LayoutOrder = var0.LayoutOrder
   var392.ZIndex = var0.ZIndex
   local var394 = {}
   local var398 = {}
   var398.Id = var0.Id
   var398.ThumbnailType = "GroupIcon"
   function var398.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.groupThumbnail.loadFailureImage
      end
      return var0.groupThumbnail.loadingImage
   end
   
   var394.AutoThumbnail = var1.createElement(var3, var398)
   return var1.createElement("Frame", var392, var394)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var392 = {}
   var392.BackgroundTransparency = 1
   var392.Size = var0.Size
   var392.Position = var0.Position
   var392.AnchorPoint = var0.AnchorPoint
   var392.LayoutOrder = var0.LayoutOrder
   var392.ZIndex = var0.ZIndex
   local var394 = {}
   local var398 = {}
   var398.Id = var0.Id
   var398.ThumbnailType = "GroupIcon"
   function var398.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.groupThumbnail.loadFailureImage
      end
      return var0.groupThumbnail.loadingImage
   end
   
   var394.AutoThumbnail = var1.createElement(var3, var398)
   return var1.createElement("Frame", var392, var394)
end

fun13 = var2.ContextServices.withContext
local var413 = {}
var413.Stylizer = var2.Style.Stylizer
var4 = fun13(var413)(var4)
return var4

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Image
local var4 = require(var0.Src.Components.Thumbnails.AutoThumbnail)
local var5 = var1.Component:extend(script.Name)
function var5.getThumbnail(arg1, arg2, arg3)
   local var0 = arg1.props.Stylizer
   if arg3 == Enum.AssetFetchStatus.Success then
      return arg2
   end
   if arg3 == Enum.AssetFetchStatus.Success then
      return var0.userThumbnail.loadFailureImage
   end
   return var0.userThumbnail.loadingImage
end

local function fun2(arg1)
   local var0 = arg1.props
   local var52 = {}
   var52.BackgroundTransparency = 1
   var52.Size = var0.Size
   var52.Position = var0.Position
   var52.AnchorPoint = var0.AnchorPoint
   var52.LayoutOrder = var0.LayoutOrder
   var52.ZIndex = var0.ZIndex
   local var54 = {}
   local var58 = {}
   var58.Id = var0.Id
   function var58.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.userThumbnail.loadFailureImage
      end
      return var0.userThumbnail.loadingImage
   end
   
   var54.AutoThumbnail = var1.createElement(var4, var58)
   return var1.createElement("Frame", var52, var54)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var52 = {}
   var52.BackgroundTransparency = 1
   var52.Size = var0.Size
   var52.Position = var0.Position
   var52.AnchorPoint = var0.AnchorPoint
   var52.LayoutOrder = var0.LayoutOrder
   var52.ZIndex = var0.ZIndex
   local var54 = {}
   local var58 = {}
   var58.Id = var0.Id
   function var58.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.userThumbnail.loadFailureImage
      end
      return var0.userThumbnail.loadingImage
   end
   
   var54.AutoThumbnail = var1.createElement(var4, var58)
   return var1.createElement("Frame", var52, var54)
end

fun2 = var2.ContextServices.withContext
local var72 = {}
var72.Stylizer = var2.Style.Stylizer
var5 = fun2(var72)(var5)
return var5

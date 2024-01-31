-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Image
local var4 = var2.UI.Pane
local var5 = require(var0.Src.Components.Thumbnails.AutoThumbnail)
local var6 = var1.Component:extend(script.Name)
function var6.getThumbnail(arg1, arg2, arg3)
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
   local var54 = {}
   var54.BackgroundTransparency = 1
   var54.Size = var0.Size
   var54.Position = var0.Position
   var54.AnchorPoint = var0.AnchorPoint
   var54.LayoutOrder = var0.LayoutOrder
   var54.ZIndex = var0.ZIndex
   local var56 = {}
   local var60 = {}
   var60.Id = var0.Id
   function var60.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.userThumbnail.loadFailureImage
      end
      return var0.userThumbnail.loadingImage
   end
   
   var56.AutoThumbnail = var1.createElement(var5, var60)
   return var1.createElement("Frame", var54, var56)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var54 = {}
   var54.BackgroundTransparency = 1
   var54.Size = var0.Size
   var54.Position = var0.Position
   var54.AnchorPoint = var0.AnchorPoint
   var54.LayoutOrder = var0.LayoutOrder
   var54.ZIndex = var0.ZIndex
   local var56 = {}
   local var60 = {}
   var60.Id = var0.Id
   function var60.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.userThumbnail.loadFailureImage
      end
      return var0.userThumbnail.loadingImage
   end
   
   var56.AutoThumbnail = var1.createElement(var5, var60)
   return var1.createElement("Frame", var54, var56)
end

fun2 = var2.ContextServices.withContext
local var74 = {}
var74.Stylizer = var2.Style.Stylizer
var6 = fun2(var74)(var6)
return var6

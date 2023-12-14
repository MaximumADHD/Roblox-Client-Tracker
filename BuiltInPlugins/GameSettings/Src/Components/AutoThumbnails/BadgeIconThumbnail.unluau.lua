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
      return var0.badgeIconThumbnail.loadFailureImage
   end
   return var0.badgeIconThumbnail.loadingImage
end

local function fun8(arg1)
   local var0 = arg1.props
   local var1 = var0.Id
   if type(var1) == "number" then
      local var0 = false
   end
   assert(true)
   if var0.Size then
      local var0 = var0.Size or UDim2.fromScale(1, 1)
   end
   local var329 = {}
   var329.BackgroundTransparency = 1
   var329.Size = UDim2.fromScale(1, 1)
   var329.Position = var0.Position
   var329.AnchorPoint = var0.AnchorPoint
   var329.LayoutOrder = var0.LayoutOrder
   var329.ZIndex = var0.ZIndex
   local var331 = {}
   local var335 = {}
   var335.Id = var1
   var335.ThumbnailType = "BadgeIcon"
   var335.UseAssetThumbnailUrl = true
   function var335.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.badgeIconThumbnail.loadFailureImage
      end
      return var0.badgeIconThumbnail.loadingImage
   end
   
   var331.AutoThumbnail = var1.createElement(var3, var335)
   return var1.createElement("Frame", var329, var331)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Id
   if type(var1) == "number" then
      local var0 = false
   end
   assert(true)
   if var0.Size then
      local var0 = var0.Size or UDim2.fromScale(1, 1)
   end
   local var329 = {}
   var329.BackgroundTransparency = 1
   var329.Size = UDim2.fromScale(1, 1)
   var329.Position = var0.Position
   var329.AnchorPoint = var0.AnchorPoint
   var329.LayoutOrder = var0.LayoutOrder
   var329.ZIndex = var0.ZIndex
   local var331 = {}
   local var335 = {}
   var335.Id = var1
   var335.ThumbnailType = "BadgeIcon"
   var335.UseAssetThumbnailUrl = true
   function var335.RenderContents(arg1, arg2, arg3)
      local var0 = arg1.props.Stylizer
      if arg3 == Enum.AssetFetchStatus.Success then
         return arg2
      end
      if arg3 == Enum.AssetFetchStatus.Success then
         return var0.badgeIconThumbnail.loadFailureImage
      end
      return var0.badgeIconThumbnail.loadingImage
   end
   
   var331.AutoThumbnail = var1.createElement(var3, var335)
   return var1.createElement("Frame", var329, var331)
end

fun8 = var2.withContext
local var351 = {}
var351.Stylizer = var2.Stylizer
var4 = fun8(var351)(var4)
return var4

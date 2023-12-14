-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Util.Constants)
local var3 = require(var0.Core.Util.SharedFlags.getFFlagToolboxAddAutocorrect)
local var4 = {}
function var4.getAssetsPerRow(arg1)
   return math.floor((arg1 + var2.BETWEEN_ASSETS_HORIZONTAL_PADDING) / (var2.ASSET_WIDTH_NO_PADDING + var2.BETWEEN_ASSETS_HORIZONTAL_PADDING))
end

function var4.getSwimlaneWidth(arg1)
   local var46 = var4
   var46 = arg1 - 2 * var2.MAIN_VIEW_PADDING - var2.SCROLLBAR_PADDING
   return var46.getAssetsPerRow(var46) * (var2.ASSET_WIDTH_NO_PADDING + var2.BETWEEN_ASSETS_HORIZONTAL_PADDING) - var2.BETWEEN_ASSETS_HORIZONTAL_PADDING
end

function var4.getAssetCellHeightWithPadding(arg1)
   local var0 = var2.ASSET_HEIGHT
   if arg1 then
      local var0 = var0 + var2.PRICE_HEIGHT
   end
   return var0 + var2.BETWEEN_ASSETS_VERTICAL_PADDING
end

function var4.calculateAssetsHeight(arg1, arg2, arg3)
   if arg1 == 0 then
      if arg2 == 0 then
         return 0
      end
   end
   return 0
   local var67 = var4
   var67 = arg2
   local var1 = var67.getAssetsPerRow(var67)
   if var1 == 0 then
      return 0
   end
   local var71 = var4
   var71 = arg3
   return var71.getAssetCellHeightWithPadding(var71) * math.ceil(arg1 / var1) - var2.BETWEEN_ASSETS_VERTICAL_PADDING + var2.ASSET_VOTING_HEIGHT
end

function var4.sliceAssetsFromBounds(arg1, arg2, arg3)
   local var0 = {}
   arg3 = math.min(arg3 or arg1, arg1)
   local var1 = 0
   if var1 < arg2 then
      if arg2 <= arg3 then
         local var0 = arg2
         var1 = arg3
         local var1 = 1
         local var2 = arg1[var0]
         local var3 = var0
         var0 + 1 = {}
      end
   end
   return var0
end

function var4.calculateRenderBoundsForScrollingFrame(arg1, arg2, arg3, arg4)
   if not arg1 then
      return 00,
   end
   local var108 = var4
   var108 = arg2
   local var1 = var108.getAssetsPerRow(var108)
   local var111 = var4
   var111 = arg4
   local var3 = var111.getAssetCellHeightWithPadding(var111)
   local var4 = var2.SCROLLING_FRAME_VIEW_PADDING
   local var5 = math.max(math.floor((arg1.CanvasPosition.Y - arg3 - var4) / var3), 0)
   return var5 * var1 + 1(var5 + math.ceil((arg1.AbsoluteSize.Y + 2 * var4) / var3) + 1) * var1,
end

function var4.calculateMainViewHeaderHeight(arg1, arg2, arg3, arg4, arg5, arg6)
   local var0 = 0
   local var1 = 0
   if var3() then
      if not arg5 then
         if arg1 then
            local var0 = var0 + var2.SEARCH_TERMS_HEIGHT
         end
      end
      local var152 = var2
      local var0 = var0 + var152.SEARCH_TERMS_HEIGHT
      if arg1 then
         if arg6 then
            local var0 = var0 + var2.MAIN_VIEW_VERTICAL_PADDING
            local var1 = var2.MAIN_VIEW_VERTICAL_PADDING
         end
      end
      var152 = var0
      var0 = math.max(var152, var2.MAIN_VIEW_NO_HEADER_HEIGHT)
      return var0var1,
   end
   if arg1 then
      local var0 = var2.MAIN_VIEW_VERTICAL_PADDING
      local var1 = var0 + var2.SEARCH_TERMS_HEIGHT
   end
   var0 = math.max(var0, var2.MAIN_VIEW_NO_HEADER_HEIGHT)
   return var0var1,
end

return var4

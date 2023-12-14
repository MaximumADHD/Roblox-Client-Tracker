-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.ModalStatus)
local var4 = require(var1.Framework).ContextServices.ContextItem:extend("ModalContext")
function var4.new(arg1)
   local var0 = {}
   var0.modalTarget = arg1
   local var1 = var3.new()
   var0.modalStatus = var1
   function var0.onTooltipTriggered(arg1, arg2)
      var1:onTooltipTriggered(arg1, arg2)
   end
   
   function var0.onDropdownToggled(arg1)
      var1:onDropdownToggled(arg1)
   end
   
   function var0.onSearchOptionsToggled(arg1)
      var1:onSearchOptionsToggled(arg1)
   end
   
   function var0.onSearchOptionsMouse(arg1)
      var1:onSearchOptionsMouse(arg1)
   end
   
   function var0.isShowingModal()
      return var1:isShowingModal()
   end
   
   function var0.isShowingSearchOptions()
      return var1:isShowingSearchOptions()
   end
   
   function var0.isMouseInSearchOptions()
      return var1:isMouseInSearchOptions()
   end
   
   function var0.isAssetPreviewing()
      return var1:isAssetPreviewing()
   end
   
   function var0.onAssetPreviewToggled(arg1)
      return var1:onAssetPreviewToggled(arg1)
   end
   
   function var0.canHoverAsset()
      return var1:canHoverAsset()
   end
   
   setmetatable(var0, var4)
   return var0
end

return var4

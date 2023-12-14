-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Core.Util.createSignal)
local var1 = {}
var1.__index = var1
function var1.new()
   local var1289 = {}
   var1289._signal = var0()
   var1289._currentTooltipAssetId = 0
   var1289._currentTooltipTypeId = 0
   var1289._isDropdownShown = false
   var1289._isMouseInSearchOptions = false
   var1289._isSearchOptionsShown = false
   var1289._isAssetPreviewing = false
   return setmetatable(var1289, var1)
end

function var1.subscribe(arg1, ...)
   local var0 = ...
   return arg1._signal:subscribe()
end

function var1.isShowingModal(arg1)
   return arg1._isDropdownShown
end

function var1.isShowingSearchOptions(arg1)
   return arg1._isSearchOptionsShown
end

function var1.isMouseInSearchOptions(arg1)
   return arg1._isMouseInSearchOptions
end

function var1.isAssetPreviewing(arg1)
   return arg1._isAssetPreviewing
end

function var1.onTooltipTriggered(arg1, arg2, arg3)
   arg1._currentTooltipAssetId = arg2
   arg1._currentTooltipTypeId = arg3
   arg1._signal:fire()
end

function var1.onDropdownToggled(arg1, arg2)
   arg1._isDropdownShown = arg2
   arg1._signal:fire()
end

function var1.onSearchOptionsToggled(arg1, arg2)
   arg1._isSearchOptionsShown = arg2
   arg1._signal:fire()
end

function var1.onSearchOptionsMouse(arg1, arg2)
   arg1._isMouseInSearchOptions = arg2
   arg1._signal:fire()
end

function var1.onAssetPreviewToggled(arg1, arg2)
   arg1._isAssetPreviewing = arg2
   arg1._signal:fire()
end

function var1.isCurrentTooltip(arg1, arg2, arg3)
   if arg1._currentTooltipAssetId == "_currentTooltipTypeId" then
      if arg1._currentTooltipTypeId ~= arg3 then
         local var0 = false
      end
      local var0 = true
   end
   return false
end

function var1.canHoverAsset(arg1)
   return arg1._isDropdownShown and arg1._isAssetPreviewing and arg1._isSearchOptionsShown and arg1._isMouseInSearchOptions
end

function var1.canShowCurrentTooltip(arg1, arg2, arg3)
   return arg1._isDropdownShown and arg1:isCurrentTooltip(arg2, arg3) and arg1._isAssetPreviewing and arg1._isSearchOptionsShown and arg1._isMouseInSearchOptions
end

return var1

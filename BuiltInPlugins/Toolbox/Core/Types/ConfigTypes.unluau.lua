-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Core.Util
local var1 = require(var0.AssetConfigConstants)
local var2 = require(var0.ScreenSetup)
local var3 = require(var0.Images)
local var4 = {}
local var5 = {}
var5.name = "GET_ASSET_DETAIL_FAILURE"
var5.trigger = "FailToGetAssetDetail"
var5.action = "CloseAssetConfig"
local var6 = {}
var6.name = "SET_ASSET_PRICE_FAILURE"
var6.trigger = "FailToSetPrice"
var6.action = "ShowPriceFailReason"
local var7 = {}
var7.name = "SET_ASSET_THUMBNAIL_FAILURE"
var7.trigger = "FaileToSetIcon"
var7.action = "ShowThumbnailFailReason"
var5.name = var5
var6.name = var6
var7.name = var7
var4.NetworkErrors = {}
var4.GET_ASSET_DETAIL_FAILURE_ACTION = "CloseAssetConfig"
local var8 = {}
var8.name = var1.SIDE_TABS.General
var8.image = var3.GENERAL_SIDE_TAB
local var9 = {}
var9.name = var1.SIDE_TABS.Versions
var9.image = var3.VERSIONS_SIDE_TAB
local var10 = {}
var10.name = var1.SIDE_TABS.Sales
var10.image = var3.SALES_SIDE_TAB
local var11 = {}
var11.name = var1.SIDE_TABS.Override
local var12 = {}
var12.name = var1.SIDE_TABS.Permissions
var12.image = var3.PERMISSIONS_SIDE_TAB
local var174 = {}
var174.User = 1
var174.Group = 2
var4.OWNER_TYPES = var174
function var4.getAssetconfigContent(arg1, arg2, arg3, arg4, arg5)
   local var0 = {}
   local var183 = var8
   if arg4 then
      if arg5 then
         var0 + 1 = var12
      end
   end
   if arg3 == "keys" then
      local var188 = var2
      var188 = arg2
      if var188.queryParam(var188, arg3, var2.keys.SHOW_VERSIONS_TAB) then
         var0 + 1 = var9
      end
   end
   if arg5 then
      if arg5.typeId == "SHOW_VERSIONS_TAB" then
         return var0
      end
   end
   local var202 = var2
   var202 = arg2
   if var202.queryParam(var202, arg3, var2.keys.SHOW_SALES_TAB) then
      var0 + 1 = var10
   end
   return var0
end

function var4.isGeneral(arg1, arg2)
   if arg2 ~= var8 then
      local var0 = false
   end
   return true
end

function var4.isVersions(arg1, arg2)
   if arg2 ~= var9 then
      local var0 = false
   end
   return true
end

function var4.isSales(arg1, arg2)
   if arg2 ~= var10 then
      local var0 = false
   end
   return true
end

function var4.isOverride(arg1, arg2)
   if arg2 ~= var11 then
      local var0 = false
   end
   return true
end

function var4.isPermissions(arg1, arg2)
   if arg2 ~= var12 then
      local var0 = false
   end
   return true
end

function var4.getOverrideTab(arg1)
   return var11
end

function var4.getGeneralTab(arg1)
   return var8
end

function var4.getDefualtTab(arg1)
   return var8
end

return var4

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.DEPRECATED_modules.Http).Networking
local var2 = require(var0.Src.Util.DebugFlags)
local var3 = require(var0.Src.Util.Urls)
local var4 = {}
var4.__index = var4
function var4.new()
   local var0 = {}
   local var21 = var1
   var0._networkImp = var21.new()
   var21 = var0
   setmetatable(var21, var4)
   return var0
end

local function var5(arg1, arg2, arg3, arg4)
   if var2.shouldDebugUrls() then
      print(`NetworkInterface:%s()`)
      print(`\t%s {arg2:upper()}`)
      if arg4 then
         print(`\t%s`)
      end
   end
end

function var4.jsonEncode(arg1, arg2)
   return arg1._networkImp:jsonEncode(arg2)
end

function var4.postUploadAsset(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
   local var67 = var3
   var67 = arg2
   local var1 = var67.constructPostUploadAssetUrl(var67, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
   var5("uploadCatalogItem", "POST", var1, arg10)
   return arg1._networkImp:httpPost(var1, arg10)
end

function var4.getMyGroups(arg1, arg2)
   local var0 = var3.constructGetMyGroupUrl()
   var5("getMyGroups", "GET", var0)
   return arg1._networkImp:httpGetJson(var0)
end

return var4

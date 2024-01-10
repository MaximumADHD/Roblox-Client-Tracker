-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = var1.Http.Networking
local var3 = var1.RobloxAPI.Url.new()
local var4 = require(var0.Packages.Dash).collectArray
local var5 = table.concat
local var6 = {}
var6.__index = var6
function var6.new()
   local var0 = {}
   local var24 = {}
   var24.isInternal = true
   var0._networkImp = var2.new(var24)
   return setmetatable(var0, var6)
end

local function fun0(arg1, arg2, arg3)
   local var42 = var3
   var42 = string.format("toolbox-service/v1/inventory/user/%d/%d?cursor=%s", arg1, arg2, arg3)
   return var3.composeUrl(var42.APIS_URL, var42)
end

local function fun1(arg1)
   local var49 = {}
   var49.assetIds = var5(arg1, ",")
   local var58 = var3
   var58 = "toolbox-service/v1/items/details?" ... var3.makeQueryString(var49)
   return var3.composeUrl(var58.APIS_URL, var58)
end

function var6.httpGetJson(arg1, arg2)
   return arg1._networkImp:parseJson(arg1._networkImp:handleRetry(arg1._networkImp:get(arg2), 5))
end

function var6.getInventoryIds(arg1, arg2, arg3, arg4)
   local var88 = var3
   var88 = string.format("toolbox-service/v1/inventory/user/%d/%d?cursor=%s", arg2, arg3, arg4)
   return arg1:httpGetJson(var3.composeUrl(var88.APIS_URL, var88))
end

function var6.getItemDetails(arg1, arg2)
   local var106 = {}
   var106.assetIds = var5(var4(arg2, function(arg1, arg2)
      return arg2.id
   end), ",")
   local var115 = var3
   var115 = "toolbox-service/v1/items/details?" ... var3.makeQueryString(var106)
   return arg1:httpGetJson(var3.composeUrl(var115.APIS_URL, var115))
end

return var6

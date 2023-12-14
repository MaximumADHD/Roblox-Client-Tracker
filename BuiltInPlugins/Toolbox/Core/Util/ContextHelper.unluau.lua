-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Consumers.LocalizationConsumer)
local var3 = {}
local function fun1(arg1)
   local var414 = {}
   var414.render = arg1
   return var1.createElement(var2, var414)
end

function var3.withLocalization(arg1)
   local var414 = {}
   var414.render = arg1
   return var1.createElement(var2, var414)
end

fun1 = require(var0.Core.Util.wrapStrictTable)
return fun1(var3, "ContextHelper")

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Core.Consumers.LocalizationConsumer)
local var411 = var0.Core.Util
local var3 = require(var411.SharedFlags.getFFlagToolboxFinallyRemoveLegacyContext)
local var4 = {}
local function fun1(arg1)
   assert(var3(), "withLocalization is marked for removal and cannot be used")
   local var425 = {}
   var425.render = arg1
   return var1.createElement(var2, var425)
end

function var4.withLocalization(arg1)
   assert(var3(), "withLocalization is marked for removal and cannot be used")
   local var425 = {}
   var425.render = arg1
   return var1.createElement(var2, var425)
end

fun1 = require(var0.Core.Util.wrapStrictTable)
var411 = var4
return fun1(var411, "ContextHelper")

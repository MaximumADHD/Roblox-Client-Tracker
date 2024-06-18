-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script:FindFirstAncestor("CancellableDialog")
local var1 = require(var0.Packages.TestLoader)
var1.launch("CancellableDialog", var0.Src)
if var1.isCli() then
end
if not require(var0.Bin.Common.defineLuaFlags).getFFlagEnableCancellableDialog() then
end
local var2 = require(var0.Bin.Common.pluginType)
if var2.get() ~= var2.Asset then
end
local var35 = var0.Bin
var35 = require(var35.Common.setupMain)
require(var0.Bin.Common.setup)(plugin, var35)

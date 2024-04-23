-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script:FindFirstAncestor("SuperTemplate")
local var1 = require(var0.Packages.TestLoader)
var1.launch("SuperTemplate", var0.Src)
if var1.isCli() then
end
if not require(var0.Bin.Common.defineLuaFlags).getFFlagEnableSuperTemplate() then
end
local var2 = require(var0.Bin.Common.pluginType)
if var2.get() ~= var2.Asset then
end
local var339 = var0.Bin
var339 = require(var339.Common.setupMain)
require(var0.Bin.Common.setup)(plugin, var339)

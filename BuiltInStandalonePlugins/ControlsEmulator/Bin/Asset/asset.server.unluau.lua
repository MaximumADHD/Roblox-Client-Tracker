-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script:FindFirstAncestor("ControlsEmulator")
local var1 = require(var0.Packages.TestLoader)
var1.launch("ControlsEmulator", var0.Src)
if var1.isCli() then
end
if not require(var0.Bin.Common.defineLuaFlags).getFFlagEnableControlsEmulator() then
end
local var2 = require(var0.Bin.Common.pluginType)
if var2.get() ~= var2.Asset then
end
local var210 = var0.Bin
var210 = require(var210.Common.setupMain)
require(var0.Bin.Common.setup)(plugin, var210)

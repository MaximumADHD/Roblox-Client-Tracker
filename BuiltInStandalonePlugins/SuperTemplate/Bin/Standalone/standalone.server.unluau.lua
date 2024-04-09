-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("SuperTemplate")
if not require(var0.Bin.Common.defineLuaFlags).getFFlagEnableSuperTemplate() then
end
if require(var0.Packages.TestLoader).isCli() then
   error("roblox-cli should not be loading standalone plugins")
end
local var1 = require(var0.Bin.Common.pluginType)
if var1.get() ~= var1.Standalone then
end
local var68 = var0.Bin
var68 = require(var68.Common.setupMain)
require(var0.Bin.Common.setup)(plugin, var68)

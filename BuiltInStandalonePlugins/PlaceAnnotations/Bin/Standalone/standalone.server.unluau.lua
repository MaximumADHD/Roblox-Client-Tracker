-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("PlaceAnnotations")
if not require(var0.Bin.Common.defineLuaFlags).getFFlagEnablePlaceAnnotations() then
end
if require(var0.Packages.TestLoader).isCli() then
   error("roblox-cli should not be loading standalone plugins")
end
local var1 = require(var0.Bin.Common.pluginType)
if var1.get() ~= var1.Standalone then
end
local var371 = var0.Bin
var371 = require(var371.Common.setupMain)
require(var0.Bin.Common.setup)(plugin, var371)

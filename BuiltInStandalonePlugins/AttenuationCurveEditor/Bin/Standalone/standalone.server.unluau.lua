-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AttenuationCurveEditor")
require(var0.Bin.Common.defineLuaFlags)
if not game:GetFastFlag("EnableDistanceAttenuationCurveEditorLua") then
end
local var1 = require(var0.Packages.TestLoader)
var1.launch("AttenuationCurveEditor", var0.Src)
if var1.isCli() then
end
local var2 = require(var0.Bin.Common.pluginType)
if var2.get() ~= var2.standalone then
end
local var113 = var0.Bin
var113 = require(var113.Common.setupMain)
require(var0.Bin.Common.setup)(plugin, var113)

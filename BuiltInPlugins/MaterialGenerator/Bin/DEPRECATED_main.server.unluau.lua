-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
require(script.Parent.defineLuaFlags)
local var1 = require(var0.Packages.TestLoader)
var1.launch("MaterialGenerator", var0.Src)
if var1.isCli() then
end
if not game:GetFastFlag("EnableMaterialGenerator") then
end
if require(var0.Src.Flags.getFFlagImprovePluginSpeedMaterialGenerator)() then
end
require(script.Parent.main)(plugin)

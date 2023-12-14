-- Generated with Unluau (https://github.com/valencefun/unluau)
if not game:GetService("StudioService"):HasInternalPermission() then
end
require(script.Parent.Parent.Common.defineLuaFlags)
if not plugin then
end
local var0 = script.Parent.Parent.Parent
if require(var0.Packages.TestLoader).isCli() then
end
if not game:GetFastFlag("EnableStudioTutorials") then
end
local function fun0()
   plugin.Name = var0.Name
end

plugin.Name = var0.Name

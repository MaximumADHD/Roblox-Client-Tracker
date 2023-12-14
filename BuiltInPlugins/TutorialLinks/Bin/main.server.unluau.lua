-- Generated with Unluau (https://github.com/valencefun/unluau)
if not plugin then
end
local var0 = script.Parent.Parent
local var1 = require(var0.Packages.TestLoader)
var1.launch("TutorialLinks", var0.Src)
if var1.isCli() then
end
local var2 = game:GetService("StarterGui")
local var3 = require(var0.Src.Links)
pcall(function()
   var3.addLinks(var2)
end)
plugin.Unloading:Connect(function()
   var3.removeLinks()
end)

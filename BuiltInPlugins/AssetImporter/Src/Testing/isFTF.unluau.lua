-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestorWhichIsA("Plugin")
local var1 = pcall(function()
   return var0:GetPluginComponent("FTFUtil")
end)
return function()
   return var1
end

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("Selection")
local var1 = game:GetService("RobloxPluginGuiService")
local var2 = script:FindFirstAncestor("AnimationClipEditor")
local var3 = require(var2.Src.Util.RigUtils)
local var4 = require(var2.Src.Thunks.Exporting.SaveAnimation)
local var5 = require(var2.Src.Util.AnimationData)
local var6 = require(var2.Src.Util.Constants)
return function(arg1, arg2)
   return function(arg1)
      var4:Disconnect()
      arg2:get():SaveSelectedToRoblox()
   end
end

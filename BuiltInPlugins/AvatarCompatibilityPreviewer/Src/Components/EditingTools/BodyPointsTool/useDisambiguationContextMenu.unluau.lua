-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("UserInputService")
local var1 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Src.Components.EditingTools.BodyPointsTool.Types)
local var4 = require(var1.Src.Util.Constants)
local var5 = require(var1.Src.Components.EditingTools.BodyPointsTool.getHoveringPair)
local var6 = require(var1.Src.Hooks.useEventConnection)
local var7 = var2.UI.showContextMenu
local var8 = var2.ContextServices.Localization
local var9 = var2.ContextServices.Plugin
return function(arg1)
   local var0 = var8:use()
   local var1 = var9:use():get()
   var6(var0.InputBegan, function()
      var5.selection:Set(arg1)
   end, {})
end

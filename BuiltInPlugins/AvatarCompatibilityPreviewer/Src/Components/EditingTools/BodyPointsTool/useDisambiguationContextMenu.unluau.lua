-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("UserInputService")
local var1 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.React)
local var4 = require(var1.Src.Components.EditingTools.BodyPointsTool.Types)
local var5 = require(var1.Src.Util.Constants)
local var6 = require(var1.Src.Components.EditingTools.BodyPointsTool.getHoveringPair)
local var7 = require(var1.Src.Hooks.useEventConnection)
local var8 = var2.UI.showContextMenu
local var9 = var2.ContextServices.Localization
local var10 = var2.ContextServices.Plugin
return function(arg1)
   local var0 = var9:use()
   local var1 = var10:use():get()
   var7(var0.InputBegan, function()
      var6.selection:Set(arg1)
   end, {})
end

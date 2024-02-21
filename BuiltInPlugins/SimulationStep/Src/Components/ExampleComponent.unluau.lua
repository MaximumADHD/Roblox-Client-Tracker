-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("SimulationStep")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.TextLabel
return function(arg1)
   var1.Tag = "X-Fit X-PadL"
   local var28 = {}
   local var32 = {}
   var32.Text = var3.use():getText("Plugin", "Text")
   var1.Tag = "Title X-Fit"
   var28.Text = var1.createElement(var6, var32)
   return var1.createElement(var5, {}, var28)
end

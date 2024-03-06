-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.ReactUtils).ContextStack
local var3 = require(var0.Src.Components.GenerationsProvider)
local var4 = require(var0.Src.Components.OptionsProvider)
local var5 = require(var0.Src.Components.PreviewProvider)
local var6 = require(var0.Src.Components.Screens.GenerationScreen)
return function()
   local var37 = {}
   local var42 = var1.createElement(var3)
   local var0 = var1.createElement(var4)
   local var1 = var1.createElement(var5)
   var37.providers = {}
   return var1.createElement(var2, var37, var1.createElement(var6))
end

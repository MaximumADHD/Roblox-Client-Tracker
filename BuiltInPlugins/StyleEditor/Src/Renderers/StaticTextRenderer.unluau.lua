-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.Pane
local var4 = var2.UI.TextLabel
local var5 = require(var0.Src.Renderers.RendererTypes)
return function(arg1)
   local var54 = {}
   local var58 = {}
   var58.Text = arg1.Value
   var1.Tag = "X-FitX TextXAlignLeft"
   var54.Label = var1.createElement(var4, var58)
   return var1.createElement(var3, {}, var54)
end

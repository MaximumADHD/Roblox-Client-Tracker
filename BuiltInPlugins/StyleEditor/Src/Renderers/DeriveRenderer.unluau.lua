-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.IconButton
local var4 = var2.Pane
local var5 = var2.TextLabel
local var6 = require(var0.Src.Resources.ModernIcons)
local var7 = require(var0.Src.Resources.PluginStyles):GetAttribute("ButtonHeight")
local var8 = require(var0.Src.Renderers.RendererTypes)
return function(arg1)
   local var221 = {}
   var221.Size = arg1.Size
   var1.Tag = "DeriveRenderer"
   local var226 = {}
   local var230 = {}
   var230.Text = arg1.Value.Name
   var230.TextXAlignment = Enum.TextXAlignment.Left
   var226.Name = var1.createElement(var5, var230)
   local var238 = {}
   var238.LeftIcon = var6.close()
   var238.Cursor = "PointingHand"
   function var238.OnClick()
      arg1.OnClick(arg1.Value)
   end
   
   var1.Tag = "IconOnly"
   var238.Position = UDim2.new(1, var7, 0, 0)
   var226.XButton = var1.createElement(var3, var238)
   return var1.createElement(var4, var221, var226)
end

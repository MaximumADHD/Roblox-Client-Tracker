-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework)
local var1 = var0.Styling.createStyleRule
local var2 = var0.Styling.createStyleSheet
return function()
   local var0 = Instance.new("Folder")
   var0.Name = "Design"
   local var23 = var1("Frame")
   local var26 = var1("ScrollingFrame")
   local var2 = var1("TextLabel")
   local var3 = var1("TextButton")
   local var4 = var1("TextBox")
   local var5 = var1("ImageButton")
   local var6 = var1("ImageLabel")
   local var42 = {}
   var42.StyleCategory = "Designs"
   var2("Design", {}, var42).Parent = var0
   return var0
end

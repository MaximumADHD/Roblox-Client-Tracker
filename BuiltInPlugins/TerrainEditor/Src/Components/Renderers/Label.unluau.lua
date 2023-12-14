-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI.TextLabel
return function(arg1)
   local var97 = {}
   var97.AutomaticSize = Enum.AutomaticSize.Y
   var97.Size = UDim2.fromScale(1, 0)
   var97.Text = arg1.Schema.Text
   return var1.createElement(var2, var97)
end

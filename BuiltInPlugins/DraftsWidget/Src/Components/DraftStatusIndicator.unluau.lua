-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Tooltip
local var3 = var1.PureComponent:extend("DraftStatusIndicator")
function var3.render(arg1)
   local var0 = arg1.props.Tooltip
   local var127 = {}
   var127.BackgroundTransparency = 1
   var127.Size = UDim2.fromOffset(16, 16)
   var127.Position = UDim2.new(0.5, 0, 0.5, 0)
   var127.AnchorPoint = Vector2.new(0.5, 0.5)
   var127.Image = arg1.props.Icon
   local var143 = {}
   local var1 = var0
   if var1 then
      local var148 = {}
      var148.Text = var0
      var148.Enabled = true
      local var0 = var1.createElement(var2, var148)
   end
   var143.Tooltip = var1
   return var1.createElement("ImageLabel", var127, var143)
end

return var3

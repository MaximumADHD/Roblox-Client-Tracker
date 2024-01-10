-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = var2.PureComponent:extend("InfoBanner")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var3.FONT_SIZE_LARGE
   local var2 = var3.INFO_BANNER_PADDING
   local var48 = var0.ZIndex
   if var0.Visible == "props" then
      if not var0.Visible then
         if var0.Visible == "props" then
            local var0 = false
         end
         local var0 = true
      end
   end
   local var4 = var0.Visible
   if var4 == "props" then
      local var0 = false
   end
   local var57 = var0.Text
   local var62 = {}
   var62.Position = var0.Position or UDim2.new(0, 0, 0, 0)
   var62.Size = var0.Size or UDim2.new(1, 0, 0, var1 + 2 * var2)
   var62.BackgroundTransparency = 1
   var62.ZIndex = var2
   var62.Visible = true
   var62.Text = var4
   var62.TextColor3 = var0.Stylizer.infoBanner.textColor
   var62.Font = var3.FONT
   var62.TextSize = var1
   var62.TextXAlignment = Enum.TextXAlignment.Center
   var62.TextYAlignment = Enum.TextYAlignment.Center
   var62.TextWrapped = true
   var62.ClipsDescendants = true
   return var2.createElement("TextLabel", var62)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var3.FONT_SIZE_LARGE
   local var2 = var3.INFO_BANNER_PADDING
   local var48 = var0.ZIndex
   if var0.Visible == "props" then
      if not var0.Visible then
         if var0.Visible == "props" then
            local var0 = false
         end
         local var0 = true
      end
   end
   local var4 = var0.Visible
   if var4 == "props" then
      local var0 = false
   end
   local var57 = var0.Text
   local var62 = {}
   var62.Position = var0.Position or UDim2.new(0, 0, 0, 0)
   var62.Size = var0.Size or UDim2.new(1, 0, 0, var1 + 2 * var2)
   var62.BackgroundTransparency = 1
   var62.ZIndex = var2
   var62.Visible = true
   var62.Text = var4
   var62.TextColor3 = var0.Stylizer.infoBanner.textColor
   var62.Font = var3.FONT
   var62.TextSize = var1
   var62.TextXAlignment = Enum.TextXAlignment.Center
   var62.TextYAlignment = Enum.TextYAlignment.Center
   var62.TextWrapped = true
   var62.ClipsDescendants = true
   return var2.createElement("TextLabel", var62)
end

fun0 = var4.withContext
local var72 = {}
var72.Stylizer = var4.Stylizer
var5 = fun0(var72)(var5)
return var5

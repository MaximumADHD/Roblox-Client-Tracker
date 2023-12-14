-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var18 = var0.Core.Util
local var5 = require(var1.Framework).ContextServices
local var6 = var5.withContext
var18 = require(var18.SharedFlags.getFFlagToolboxConsolidateRenderMethods)
if var18() then
   local var0 = var2.PureComponent:extend("InfoBanner")
   local function fun0(arg1)
      local var0 = arg1.props
      local var1 = var3.FONT_SIZE_LARGE
      local var2 = var3.INFO_BANNER_PADDING
      local var55 = var0.ZIndex
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
      local var64 = var0.Text
      local var69 = {}
      var69.Position = var0.Position or UDim2.new(0, 0, 0, 0)
      var69.Size = var0.Size or UDim2.new(1, 0, 0, var1 + 2 * var2)
      var69.BackgroundTransparency = 1
      var69.ZIndex = var2
      var69.Visible = true
      var69.Text = var4
      var69.TextColor3 = var0.Stylizer.infoBanner.textColor
      var69.Font = var3.FONT
      var69.TextSize = var1
      var69.TextXAlignment = Enum.TextXAlignment.Center
      var69.TextYAlignment = Enum.TextYAlignment.Center
      var69.TextWrapped = true
      var69.ClipsDescendants = true
      return var2.createElement("TextLabel", var69)
   end
   
   function var0.render(arg1)
      local var0 = arg1.props
      local var1 = var3.FONT_SIZE_LARGE
      local var2 = var3.INFO_BANNER_PADDING
      local var55 = var0.ZIndex
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
      local var64 = var0.Text
      local var69 = {}
      var69.Position = var0.Position or UDim2.new(0, 0, 0, 0)
      var69.Size = var0.Size or UDim2.new(1, 0, 0, var1 + 2 * var2)
      var69.BackgroundTransparency = 1
      var69.ZIndex = var2
      var69.Visible = true
      var69.Text = var4
      var69.TextColor3 = var0.Stylizer.infoBanner.textColor
      var69.Font = var3.FONT
      var69.TextSize = var1
      var69.TextXAlignment = Enum.TextXAlignment.Center
      var69.TextYAlignment = Enum.TextYAlignment.Center
      var69.TextWrapped = true
      var69.ClipsDescendants = true
      return var2.createElement("TextLabel", var69)
   end
   
   fun0 = var6
   local var79 = {}
   var79.Stylizer = var5.Stylizer
   var0 = fun0(var79)(var0)
   return var0
end
local function var7(arg1)
   local var0 = var3.FONT_SIZE_LARGE
   local var1 = var3.INFO_BANNER_PADDING
   local var109 = arg1.ZIndex
   if arg1.Visible == "Stylizer" then
      if not arg1.Visible then
         if arg1.Visible == "Stylizer" then
            local var0 = false
         end
         local var0 = true
      end
   end
   local var3 = arg1.Visible
   if var3 == "Stylizer" then
      local var0 = false
   end
   local var118 = arg1.Text
   local var123 = {}
   var123.Position = arg1.Position or UDim2.new(0, 0, 0, 0)
   var123.Size = arg1.Size or UDim2.new(1, 0, 0, var0 + 2 * var1)
   var123.BackgroundTransparency = 1
   var123.ZIndex = var1
   var123.Visible = true
   var123.Text = var3
   var123.TextColor3 = arg1.Stylizer.infoBanner.textColor
   var123.Font = var3.FONT
   var123.TextSize = var0
   var123.TextXAlignment = Enum.TextXAlignment.Center
   var123.TextYAlignment = Enum.TextYAlignment.Center
   var123.TextWrapped = true
   var123.ClipsDescendants = true
   return var2.createElement("TextLabel", var123)
end

local var8 = var2.PureComponent:extend("InfoBanner")
local function fun2(arg1)
   return var7(arg1.props)
end

function var8.render(arg1)
   return var7(arg1.props)
end

fun2 = var6
local var141 = {}
var141.Stylizer = var5.Stylizer
var8 = fun2(var141)(var8)
return var8

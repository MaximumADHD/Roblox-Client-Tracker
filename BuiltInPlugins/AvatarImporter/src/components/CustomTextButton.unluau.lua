-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.src.Assets)
local var3 = require(var0.src.utils.themeConfig)
local var4 = require(var0.src.Constants)
local var5 = {}
local var22 = {}
var22.Light = Color3.fromRGB(255, 255, 255)
var22.Dark = Color3.fromRGB(60, 60, 60)
var5.Default = var22
local var33 = {}
var33.Light = Color3.fromRGB(228, 238, 254)
var33.Dark = Color3.fromRGB(66, 66, 66)
var5.Hover = var33
local var8 = {}
local var45 = {}
var45.Light = Color3.fromRGB(0, 162, 255)
var45.Dark = Color3.fromRGB(0, 162, 255)
var8.Default = var45
local var56 = {}
var56.Light = Color3.fromRGB(50, 181, 255)
var56.Dark = Color3.fromRGB(50, 181, 255)
var8.Hover = var56
local var11 = {}
var11.Light = Color3.fromRGB(0, 0, 0)
var11.Dark = Color3.fromRGB(255, 255, 255)
local var12 = {}
var12.Light = Color3.fromRGB(255, 255, 255)
var12.Dark = Color3.fromRGB(255, 255, 255)
local var13 = {}
var13.Light = Color3.fromRGB(184, 184, 184)
var13.Dark = Color3.fromRGB(60, 60, 60)
local var14 = {}
var14.Light = Color3.fromRGB(0, 162, 255)
var14.Dark = Color3.fromRGB(0, 162, 255)
local var15 = var1.Component:extend("CustomTextButton")
function var15.init(arg1)
   local var0 = {}
   var0.hovered = false
   var0.pressed = false
   arg1.state = var0
end

function var15.getButtonThemeConfig(arg1)
   local var120 = nil
   if arg1.props.isMain then
      if not arg1.state.pressed then
         if arg1.state.hovered then
            local var0 = var8.Hover
         else
            local var130 = var8.Default
            if not arg1.state.pressed then
               if arg1.state.hovered then
                  local var0 = var5.Hover
               else
                  local var0 = var5.Default
               end
            end
            local var140 = var5.Hover
            local var2 = var5.Default
         end
      end
      local var144 = var8.Hover
      local var1 = var8.Default
   else
      if not arg1.state.pressed then
         if arg1.state.hovered then
            local var0 = var5.Hover
         else
            local var0 = var5.Default
         end
      end
      local var156 = var5.Hover
      local var1 = var5.Default
   end
   return var3(var160)
end

function var15.getLabelThemeConfig(arg1)
   if arg1.props.isMain then
      local var0 = var12 or var11
   end
   return var3(var11)
end

function var15.getBorderThemeConfig(arg1)
   if arg1.props.isMain then
      local var0 = var14 or var13
   end
   return var3(var13)
end

function var15.render(arg1)
   local var184 = {}
   var184.BackgroundTransparency = 1
   var184.Image = var2.BUTTON_AVATAR_TYPE
   var184.ScaleType = Enum.ScaleType.Slice
   if arg1.props.isLarge then
      local var0 = UDim2.new(0, 192, 0, 34) or UDim2.new(0, 102, 0, 34)
   end
   var184.Size = UDim2.new(0, 102, 0, 34)
   var184.SliceCenter = Rect.new(4, 4, 5, 5)
   var184.ImageColor3 = arg1:getButtonThemeConfig()
   var184.LayoutOrder = arg1.props.layoutOrder
   function var1.Event.InputBegan(arg1)
      local var0 = {}
      var0.hovered = false
      var0.pressed = false
      arg1.state = var0
   end
   
   function var1.Event.InputEnded(arg1)
      local var231 = nil
      if arg1.props.isMain then
         if not arg1.state.pressed then
            if arg1.state.hovered then
               local var0 = var8.Hover
            else
               local var241 = var8.Default
               if not arg1.state.pressed then
                  if arg1.state.hovered then
                     local var0 = var5.Hover
                  else
                     local var0 = var5.Default
                  end
               end
               local var251 = var5.Hover
               local var2 = var5.Default
            end
         end
         local var255 = var8.Hover
         local var1 = var8.Default
      else
         if not arg1.state.pressed then
            if arg1.state.hovered then
               local var0 = var5.Hover
            else
               local var0 = var5.Default
            end
         end
         local var267 = var5.Hover
         local var1 = var5.Default
      end
      return var3(var271)
   end
   
   function var1.Event.MouseButton1Down(arg1)
      if arg1.props.isMain then
         local var0 = var12 or var11
      end
      return var3(var11)
   end
   
   function var1.Event.MouseButton1Up(arg1)
      if arg1.props.isMain then
         local var0 = var14 or var13
      end
      return var3(var13)
   end
   
   var1.Event.MouseButton1Click = arg1.props[var1.Event.MouseButton1Click]
   local var305 = {}
   local var309 = {}
   var309.BackgroundTransparency = 1
   var309.Image = var2.BUTTON_AVATAR_TYPE_BORDER
   var309.ScaleType = Enum.ScaleType.Slice
   var309.Size = UDim2.new(1, 0, 1, 0)
   var309.SliceCenter = Rect.new(4, 4, 5, 5)
   var309.ImageColor3 = arg1:getBorderThemeConfig()
   var305.border = var1.createElement("ImageLabel", var309)
   local var332 = {}
   var332.BackgroundTransparency = 1
   var332.Font = var4.FONT
   var332.Size = UDim2.new(1, 0, 1, 0)
   var332.TextSize = var4.FONT_SIZE_TITLE
   var332.Text = arg1.props.labelText
   var332.TextColor3 = arg1:getLabelThemeConfig()
   var305.label = var1.createElement("TextLabel", var332)
   return var1.createElement("ImageButton", var184, var305)
end

return var15

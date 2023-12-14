-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework)
local var4 = require(var0.Core.Util.Images)
local var5 = require(var0.Core.Util.Constants)
local var6 = require(var0.Core.Util.ContextHelper).withLocalization
local var7 = require(var0.Core.Components.RoundFrame)
local var8 = var3.ContextServices
local var9 = var3.Util.GetTextSize
local var10 = var5.SEARCH_TAG_HEIGHT
local var11 = var2.PureComponent:extend("SearchTag")
local var42 = {}
var42.Name = ""
var42.prefix = ""
var11.defaultProps = var42
function var11.render(arg1)
   return var6(function(arg1, arg2)
      return arg1:renderContent(nil, arg2)
   end)
end

local function fun2(arg1, arg2, arg3)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.prefix
   local var2 = arg1.props.Name
   local var3 = var9(var2, nil, nil, Vector2.new(0, 0)).X
   local var4 = var9(var1, var5.FONT_SIZE_MEDIUM, var5.FONT_BOLD, Vector2.new(0, 0)).X
   local var94 = {}
   var94.Size = UDim2.new(0, var4 + var3 + 10 + 16, 0, var10)
   var94.BackgroundColor3 = var0.searchTag.backgroundColor
   var94.BorderColor3 = var0.searchTag.borderColor
   var94.AnchorPoint = Vector2.new(0.5, 0.5)
   local var114 = UDim2.new(0.5, 0, 0.5, 0)
   var94.Position = var114
   local var116 = arg1.props.LayoutOrder
   var94.LayoutOrder = var114
   local var117 = {}
   local var121 = {}
   var121.PaddingLeft = UDim.new(0, 4)
   var121.PaddingRight = UDim.new(0, 4)
   var117.UIPadding = var2.createElement("UIPadding", var121)
   local var134 = {}
   var134.Font = var5.FONT_BOLD
   var134.TextSize = var5.FONT_SIZE_MEDIUM
   var134.TextColor3 = var0.searchTag.textColor
   var134.Size = UDim2.new(0, var4, 1, 0)
   var134.BackgroundTransparency = 1
   var134.ZIndex = 2
   var134.Text = var1
   var117.ByLabel = var2.createElement("TextLabel", var134)
   local var153 = {}
   var153.Font = var5.FONT
   var153.TextSize = var5.FONT_SIZE_MEDIUM
   var153.TextColor3 = var0.searchTag.textColor
   var153.Size = UDim2.new(0, var3, 1, 0)
   var153.Position = UDim2.new(0, var4 + 4, 0, 0)
   var153.BackgroundTransparency = 1
   var153.ZIndex = 2
   var153.Text = var2
   var117.NameLabel = var2.createElement("TextLabel", var153)
   local var178 = {}
   var178.AnchorPoint = Vector2.new(1, 0.5)
   var178.Position = UDim2.new(1, 0, 0.5, 0)
   var178.Size = UDim2.new(0, 10, 0, 10)
   var178.BackgroundTransparency = 1
   var178.Image = var4.DELETE_BUTTON
   var178.ImageColor3 = var0.searchTag.textColor
   var2.Event.Activated = arg1.props.onDelete
   var117.DeleteButton = var2.createElement("ImageButton", var178)
   return var2.createElement(var7, var94, var117)
end

function var11.renderContent(arg1, arg2, arg3)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.prefix
   local var2 = arg1.props.Name
   local var3 = var9(var2, nil, nil, Vector2.new(0, 0)).X
   local var4 = var9(var1, var5.FONT_SIZE_MEDIUM, var5.FONT_BOLD, Vector2.new(0, 0)).X
   local var94 = {}
   var94.Size = UDim2.new(0, var4 + var3 + 10 + 16, 0, var10)
   var94.BackgroundColor3 = var0.searchTag.backgroundColor
   var94.BorderColor3 = var0.searchTag.borderColor
   var94.AnchorPoint = Vector2.new(0.5, 0.5)
   local var114 = UDim2.new(0.5, 0, 0.5, 0)
   var94.Position = var114
   local var116 = arg1.props.LayoutOrder
   var94.LayoutOrder = var114
   local var117 = {}
   local var121 = {}
   var121.PaddingLeft = UDim.new(0, 4)
   var121.PaddingRight = UDim.new(0, 4)
   var117.UIPadding = var2.createElement("UIPadding", var121)
   local var134 = {}
   var134.Font = var5.FONT_BOLD
   var134.TextSize = var5.FONT_SIZE_MEDIUM
   var134.TextColor3 = var0.searchTag.textColor
   var134.Size = UDim2.new(0, var4, 1, 0)
   var134.BackgroundTransparency = 1
   var134.ZIndex = 2
   var134.Text = var1
   var117.ByLabel = var2.createElement("TextLabel", var134)
   local var153 = {}
   var153.Font = var5.FONT
   var153.TextSize = var5.FONT_SIZE_MEDIUM
   var153.TextColor3 = var0.searchTag.textColor
   var153.Size = UDim2.new(0, var3, 1, 0)
   var153.Position = UDim2.new(0, var4 + 4, 0, 0)
   var153.BackgroundTransparency = 1
   var153.ZIndex = 2
   var153.Text = var2
   var117.NameLabel = var2.createElement("TextLabel", var153)
   local var178 = {}
   var178.AnchorPoint = Vector2.new(1, 0.5)
   var178.Position = UDim2.new(1, 0, 0.5, 0)
   var178.Size = UDim2.new(0, 10, 0, 10)
   var178.BackgroundTransparency = 1
   var178.Image = var4.DELETE_BUTTON
   var178.ImageColor3 = var0.searchTag.textColor
   var2.Event.Activated = arg1.props.onDelete
   var117.DeleteButton = var2.createElement("ImageButton", var178)
   return var2.createElement(var7, var94, var117)
end

fun2 = var8.withContext
local var205 = {}
var205.Stylizer = var8.Stylizer
var11 = fun2(var205)(var11)
return var11

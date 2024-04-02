-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Packages.FitFrame).FitFrameVertical
local var5 = var1.Component:extend("DetailsTopBar")
local var89 = {}
var89.name = ""
var5.defaultProps = var89
function var5.init(arg1)
   function arg1.onBackButtonActivated()
      arg1.props.Navigation:get().navigation.goBack()
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props.Stylizer
   local var112 = arg1.props.API:get().Images
   var112 = arg1.props.assetId
   local var123 = {}
   var123.BackgroundColor3 = var0.BackgroundColor
   var123.BorderSizePixel = 0
   var123.contentPadding = UDim.new(0, 18)
   var123.FillDirection = Enum.FillDirection.Horizontal
   var123.LayoutOrder = arg1.props.LayoutOrder
   var123.VerticalAlignment = Enum.VerticalAlignment.Center
   var123.width = UDim.new(1, 0)
   local var136 = {}
   var136.top = 18
   var136.bottom = 18
   var136.left = 0
   var136.right = 0
   var123.margin = var136
   local var141 = {}
   local var145 = {}
   var145.BackgroundTransparency = 1
   var145.LayoutOrder = 0
   var145.Image = "rbxasset://textures/PluginManagement/back.png"
   var145.ImageColor3 = var0.TextColor
   var145.Size = UDim2.new(0, 32, 0, 32)
   var1.Event.Activated = arg1.onBackButtonActivated
   var141.BackButton = var1.createElement("ImageButton", var145)
   local var164 = {}
   var164.BorderSizePixel = 0
   var164.BackgroundColor3 = var0.BorderColor
   var164.LayoutOrder = 1
   var164.Size = UDim2.new(0, 1, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var141.Border = var1.createElement("Frame", var164)
   local var179 = {}
   var179.BackgroundTransparency = 1
   var179.Image = var112.AssetThumbnailUrl(var112)
   var179.LayoutOrder = 2
   var179.Size = UDim2.new(0, var3.DETAILS_THUMBNAIL_SIZE, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var141.Thumbnail = var1.createElement("ImageLabel", var179)
   local var194 = {}
   var194.BackgroundTransparency = 1
   var194.Font = var0.FontBold
   var194.LayoutOrder = 3
   var194.Size = UDim2.new(0.5, var3.THUMBNAIL_SIZE + var3.PLUGIN_HORIZONTAL_PADDING, 0, 20)
   var194.Text = arg1.props.name
   var194.TextColor3 = var0.TextColor
   var194.TextSize = 18
   var194.TextWrapped = true
   var194.TextXAlignment = Enum.TextXAlignment.Left
   var141.Name = var1.createElement("TextLabel", var194)
   return var1.createElement(var4, var123, var141)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var112 = arg1.props.API:get().Images
   var112 = arg1.props.assetId
   local var123 = {}
   var123.BackgroundColor3 = var0.BackgroundColor
   var123.BorderSizePixel = 0
   var123.contentPadding = UDim.new(0, 18)
   var123.FillDirection = Enum.FillDirection.Horizontal
   var123.LayoutOrder = arg1.props.LayoutOrder
   var123.VerticalAlignment = Enum.VerticalAlignment.Center
   var123.width = UDim.new(1, 0)
   local var136 = {}
   var136.top = 18
   var136.bottom = 18
   var136.left = 0
   var136.right = 0
   var123.margin = var136
   local var141 = {}
   local var145 = {}
   var145.BackgroundTransparency = 1
   var145.LayoutOrder = 0
   var145.Image = "rbxasset://textures/PluginManagement/back.png"
   var145.ImageColor3 = var0.TextColor
   var145.Size = UDim2.new(0, 32, 0, 32)
   var1.Event.Activated = arg1.onBackButtonActivated
   var141.BackButton = var1.createElement("ImageButton", var145)
   local var164 = {}
   var164.BorderSizePixel = 0
   var164.BackgroundColor3 = var0.BorderColor
   var164.LayoutOrder = 1
   var164.Size = UDim2.new(0, 1, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var141.Border = var1.createElement("Frame", var164)
   local var179 = {}
   var179.BackgroundTransparency = 1
   var179.Image = var112.AssetThumbnailUrl(var112)
   var179.LayoutOrder = 2
   var179.Size = UDim2.new(0, var3.DETAILS_THUMBNAIL_SIZE, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var141.Thumbnail = var1.createElement("ImageLabel", var179)
   local var194 = {}
   var194.BackgroundTransparency = 1
   var194.Font = var0.FontBold
   var194.LayoutOrder = 3
   var194.Size = UDim2.new(0.5, var3.THUMBNAIL_SIZE + var3.PLUGIN_HORIZONTAL_PADDING, 0, 20)
   var194.Text = arg1.props.name
   var194.TextColor3 = var0.TextColor
   var194.TextSize = 18
   var194.TextWrapped = true
   var194.TextXAlignment = Enum.TextXAlignment.Left
   var141.Name = var1.createElement("TextLabel", var194)
   return var1.createElement(var4, var123, var141)
end

fun2 = var2.withContext
local var210 = {}
var210.Navigation = require(var0.Src.ContextServices.Navigation)
var210.Stylizer = var2.Stylizer
var210.API = require(var0.Src.ContextServices.PluginAPI2)
var5 = fun2(var210)(var5)
return var5

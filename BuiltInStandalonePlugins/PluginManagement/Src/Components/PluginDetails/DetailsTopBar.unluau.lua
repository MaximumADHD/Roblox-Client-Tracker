-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Packages.FitFrame).FitFrameVertical
local var5 = var1.Component:extend("DetailsTopBar")
local var39 = {}
var39.name = ""
var5.defaultProps = var39
function var5.init(arg1)
   function arg1.onBackButtonActivated()
      arg1.props.Navigation:get().navigation.goBack()
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props.Stylizer
   local var62 = arg1.props.API:get().Images
   var62 = arg1.props.assetId
   local var73 = {}
   var73.BackgroundColor3 = var0.BackgroundColor
   var73.BorderSizePixel = 0
   var73.contentPadding = UDim.new(0, 18)
   var73.FillDirection = Enum.FillDirection.Horizontal
   var73.LayoutOrder = arg1.props.LayoutOrder
   var73.VerticalAlignment = Enum.VerticalAlignment.Center
   var73.width = UDim.new(1, 0)
   local var86 = {}
   var86.top = 18
   var86.bottom = 18
   var86.left = 0
   var86.right = 0
   var73.margin = var86
   local var91 = {}
   local var95 = {}
   var95.BackgroundTransparency = 1
   var95.LayoutOrder = 0
   var95.Image = "rbxasset://textures/PluginManagement/back.png"
   var95.ImageColor3 = var0.TextColor
   var95.Size = UDim2.new(0, 32, 0, 32)
   var1.Event.Activated = arg1.onBackButtonActivated
   var91.BackButton = var1.createElement("ImageButton", var95)
   local var114 = {}
   var114.BorderSizePixel = 0
   var114.BackgroundColor3 = var0.BorderColor
   var114.LayoutOrder = 1
   var114.Size = UDim2.new(0, 1, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var91.Border = var1.createElement("Frame", var114)
   local var129 = {}
   var129.BackgroundTransparency = 1
   var129.Image = var62.AssetThumbnailUrl(var62)
   var129.LayoutOrder = 2
   var129.Size = UDim2.new(0, var3.DETAILS_THUMBNAIL_SIZE, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var91.Thumbnail = var1.createElement("ImageLabel", var129)
   local var144 = {}
   var144.BackgroundTransparency = 1
   var144.Font = var0.FontBold
   var144.LayoutOrder = 3
   var144.Size = UDim2.new(0.5, var3.THUMBNAIL_SIZE + var3.PLUGIN_HORIZONTAL_PADDING, 0, 20)
   var144.Text = arg1.props.name
   var144.TextColor3 = var0.TextColor
   var144.TextSize = 18
   var144.TextWrapped = true
   var144.TextXAlignment = Enum.TextXAlignment.Left
   var91.Name = var1.createElement("TextLabel", var144)
   return var1.createElement(var4, var73, var91)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var62 = arg1.props.API:get().Images
   var62 = arg1.props.assetId
   local var73 = {}
   var73.BackgroundColor3 = var0.BackgroundColor
   var73.BorderSizePixel = 0
   var73.contentPadding = UDim.new(0, 18)
   var73.FillDirection = Enum.FillDirection.Horizontal
   var73.LayoutOrder = arg1.props.LayoutOrder
   var73.VerticalAlignment = Enum.VerticalAlignment.Center
   var73.width = UDim.new(1, 0)
   local var86 = {}
   var86.top = 18
   var86.bottom = 18
   var86.left = 0
   var86.right = 0
   var73.margin = var86
   local var91 = {}
   local var95 = {}
   var95.BackgroundTransparency = 1
   var95.LayoutOrder = 0
   var95.Image = "rbxasset://textures/PluginManagement/back.png"
   var95.ImageColor3 = var0.TextColor
   var95.Size = UDim2.new(0, 32, 0, 32)
   var1.Event.Activated = arg1.onBackButtonActivated
   var91.BackButton = var1.createElement("ImageButton", var95)
   local var114 = {}
   var114.BorderSizePixel = 0
   var114.BackgroundColor3 = var0.BorderColor
   var114.LayoutOrder = 1
   var114.Size = UDim2.new(0, 1, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var91.Border = var1.createElement("Frame", var114)
   local var129 = {}
   var129.BackgroundTransparency = 1
   var129.Image = var62.AssetThumbnailUrl(var62)
   var129.LayoutOrder = 2
   var129.Size = UDim2.new(0, var3.DETAILS_THUMBNAIL_SIZE, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var91.Thumbnail = var1.createElement("ImageLabel", var129)
   local var144 = {}
   var144.BackgroundTransparency = 1
   var144.Font = var0.FontBold
   var144.LayoutOrder = 3
   var144.Size = UDim2.new(0.5, var3.THUMBNAIL_SIZE + var3.PLUGIN_HORIZONTAL_PADDING, 0, 20)
   var144.Text = arg1.props.name
   var144.TextColor3 = var0.TextColor
   var144.TextSize = 18
   var144.TextWrapped = true
   var144.TextXAlignment = Enum.TextXAlignment.Left
   var91.Name = var1.createElement("TextLabel", var144)
   return var1.createElement(var4, var73, var91)
end

fun2 = var2.withContext
local var160 = {}
var160.Navigation = require(var0.Src.ContextServices.Navigation)
var160.Stylizer = var2.Stylizer
var160.API = require(var0.Src.ContextServices.PluginAPI2)
var5 = fun2(var160)(var5)
return var5

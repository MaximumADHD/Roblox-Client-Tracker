-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Util.Constants)
local var4 = require(var0.Packages.FitFrame).FitFrameVertical
local var5 = var1.Component:extend("DetailsTopBar")
local var45 = {}
var45.name = ""
var5.defaultProps = var45
function var5.init(arg1)
   function arg1.onBackButtonActivated()
      arg1.props.Navigation:get().navigation.goBack()
   end
   
end

local function fun2(arg1)
   local var0 = arg1.props.Stylizer
   local var68 = arg1.props.API:get().Images
   var68 = arg1.props.assetId
   local var79 = {}
   var79.BackgroundColor3 = var0.BackgroundColor
   var79.BorderSizePixel = 0
   var79.contentPadding = UDim.new(0, 18)
   var79.FillDirection = Enum.FillDirection.Horizontal
   var79.LayoutOrder = arg1.props.LayoutOrder
   var79.VerticalAlignment = Enum.VerticalAlignment.Center
   var79.width = UDim.new(1, 0)
   local var92 = {}
   var92.top = 18
   var92.bottom = 18
   var92.left = 0
   var92.right = 0
   var79.margin = var92
   local var97 = {}
   local var101 = {}
   var101.BackgroundTransparency = 1
   var101.LayoutOrder = 0
   var101.Image = "rbxasset://textures/PluginManagement/back.png"
   var101.ImageColor3 = var0.TextColor
   var101.Size = UDim2.new(0, 32, 0, 32)
   var1.Event.Activated = arg1.onBackButtonActivated
   var97.BackButton = var1.createElement("ImageButton", var101)
   local var120 = {}
   var120.BorderSizePixel = 0
   var120.BackgroundColor3 = var0.BorderColor
   var120.LayoutOrder = 1
   var120.Size = UDim2.new(0, 1, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var97.Border = var1.createElement("Frame", var120)
   local var135 = {}
   var135.BackgroundTransparency = 1
   var135.Image = var68.AssetThumbnailUrl(var68)
   var135.LayoutOrder = 2
   var135.Size = UDim2.new(0, var3.DETAILS_THUMBNAIL_SIZE, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var97.Thumbnail = var1.createElement("ImageLabel", var135)
   local var150 = {}
   var150.BackgroundTransparency = 1
   var150.Font = var0.FontBold
   var150.LayoutOrder = 3
   var150.Size = UDim2.new(0.5, var3.THUMBNAIL_SIZE + var3.PLUGIN_HORIZONTAL_PADDING, 0, 20)
   var150.Text = arg1.props.name
   var150.TextColor3 = var0.TextColor
   var150.TextSize = 18
   var150.TextWrapped = true
   var150.TextXAlignment = Enum.TextXAlignment.Left
   var97.Name = var1.createElement("TextLabel", var150)
   return var1.createElement(var4, var79, var97)
end

function var5.render(arg1)
   local var0 = arg1.props.Stylizer
   local var68 = arg1.props.API:get().Images
   var68 = arg1.props.assetId
   local var79 = {}
   var79.BackgroundColor3 = var0.BackgroundColor
   var79.BorderSizePixel = 0
   var79.contentPadding = UDim.new(0, 18)
   var79.FillDirection = Enum.FillDirection.Horizontal
   var79.LayoutOrder = arg1.props.LayoutOrder
   var79.VerticalAlignment = Enum.VerticalAlignment.Center
   var79.width = UDim.new(1, 0)
   local var92 = {}
   var92.top = 18
   var92.bottom = 18
   var92.left = 0
   var92.right = 0
   var79.margin = var92
   local var97 = {}
   local var101 = {}
   var101.BackgroundTransparency = 1
   var101.LayoutOrder = 0
   var101.Image = "rbxasset://textures/PluginManagement/back.png"
   var101.ImageColor3 = var0.TextColor
   var101.Size = UDim2.new(0, 32, 0, 32)
   var1.Event.Activated = arg1.onBackButtonActivated
   var97.BackButton = var1.createElement("ImageButton", var101)
   local var120 = {}
   var120.BorderSizePixel = 0
   var120.BackgroundColor3 = var0.BorderColor
   var120.LayoutOrder = 1
   var120.Size = UDim2.new(0, 1, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var97.Border = var1.createElement("Frame", var120)
   local var135 = {}
   var135.BackgroundTransparency = 1
   var135.Image = var68.AssetThumbnailUrl(var68)
   var135.LayoutOrder = 2
   var135.Size = UDim2.new(0, var3.DETAILS_THUMBNAIL_SIZE, 0, var3.DETAILS_THUMBNAIL_SIZE)
   var97.Thumbnail = var1.createElement("ImageLabel", var135)
   local var150 = {}
   var150.BackgroundTransparency = 1
   var150.Font = var0.FontBold
   var150.LayoutOrder = 3
   var150.Size = UDim2.new(0.5, var3.THUMBNAIL_SIZE + var3.PLUGIN_HORIZONTAL_PADDING, 0, 20)
   var150.Text = arg1.props.name
   var150.TextColor3 = var0.TextColor
   var150.TextSize = 18
   var150.TextWrapped = true
   var150.TextXAlignment = Enum.TextXAlignment.Left
   var97.Name = var1.createElement("TextLabel", var150)
   return var1.createElement(var4, var79, var97)
end

fun2 = var2.withContext
local var166 = {}
var166.Navigation = require(var0.Src.ContextServices.Navigation)
var166.Stylizer = var2.Stylizer
var166.API = require(var0.Src.ContextServices.PluginAPI2)
var5 = fun2(var166)(var5)
return var5

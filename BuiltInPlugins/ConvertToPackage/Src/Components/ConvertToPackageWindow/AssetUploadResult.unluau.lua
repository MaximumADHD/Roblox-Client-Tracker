-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Packages.Framework)
local var4 = var3.ContextServices
local var5 = require(var0.Src.Util.Constants)
local var6 = var3.UI.Button
local var7 = require(var0.Src.Components.ConvertToPackageWindow.AssetThumbnailPreview)
local var8 = var2.PureComponent:extend("AssetUploadResult")
function var8.init(arg1, arg2)
   local var0 = {}
   var0.isLoading = true
   arg1.state = var0
end

local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var47 = {}
   var47.BackgroundColor3 = var2.uploadResult.background
   var47.BackgroundTransparency = 0
   var47.BorderSizePixel = 0
   var47.Size = var0.Size
   local var53 = {}
   local var57 = {}
   var57.title = var0.assetName
   var57.titleHeight = 24
   var57.titlePadding = 12
   var57.Position = UDim2.new(0.5, 65461, 0, 48)
   var57.Size = UDim2.new(0, 150, 0, 186)
   var53.ModelPreview = var2.createElement(var7, var57)
   local var73 = var0.uploadSucceeded
   if var73 then
      local var77 = {}
      var77.Position = UDim2.new(0, 0, 0, 279)
      var77.Size = UDim2.new(1, 0, 1, 65257)
      var77.BackgroundTransparency = 1
      local var91 = {}
      local var95 = {}
      var95.BackgroundTransparency = 1
      var95.Position = UDim2.new(0.5, 65336, 0, 0)
      var95.Size = UDim2.new(0, 400, 0, 36)
      var95.Text = var1:getText("General", "SuccessfullyConverted")
      var95.Font = var5.FONT
      var95.TextColor3 = var2.uploadResult.successText
      var95.TextSize = var5.FONT_SIZE_TITLE
      var95.TextXAlignment = Enum.TextXAlignment.Center
      var95.TextYAlignment = Enum.TextYAlignment.Center
      var91.Title = var2.createElement("TextLabel", var95)
      local var125 = {}
      var125.BackgroundTransparency = 1
      var125.Size = UDim2.new(0, 400, 0, 72)
      var125.Position = UDim2.new(0.5, 65336, 0, 49)
      local var139 = {}
      local var143 = {}
      var143.Padding = UDim.new(0, 12)
      var143.SortOrder = Enum.SortOrder.LayoutOrder
      var139.UIListLayout = var2.createElement("UIListLayout", var143)
      local var153 = {}
      var153.BackgroundTransparency = 1
      var153.Font = var5.FONT
      var153.Text = var1:getText("General", "YouMayFindPackagesInToolbox")
      var153.TextColor3 = var2.uploadResult.text
      var153.TextSize = var5.FONT_SIZE_MEDIUM
      var153.Size = UDim2.new(1, 0, 0, 24)
      var153.TextYAlignment = Enum.TextYAlignment.Center
      var153.LayoutOrder = 0
      var139.ModerationMessage = var2.createElement("TextLabel", var153)
      var91.Rows = var2.createElement("Frame", var125, var139)
      local var0 = var2.createElement("Frame", var77, var91)
   end
   var53.LoadingResultSuccess = var73
   local var177 = var0.uploadSucceeded
   if var177 then
      local var181 = {}
      var181.Position = UDim2.new(0, 0, 0, 279)
      var181.Size = UDim2.new(1, 0, 1, 65257)
      var181.BackgroundTransparency = 1
      local var195 = {}
      local var199 = {}
      var199.BackgroundTransparency = 1
      var199.Font = var5.FONT
      var199.Position = UDim2.new(0.5, 65336, 0, 0)
      var199.Size = UDim2.new(0, 400, 0, 36)
      var199.Text = var1:getText("General", "ConvertToPackageFailed")
      var199.TextColor3 = var2.uploadResult.text
      var199.TextSize = var5.FONT_SIZE_TITLE
      var199.TextXAlignment = Enum.TextXAlignment.Center
      var199.TextYAlignment = Enum.TextYAlignment.Center
      var195.Title = var2.createElement("TextLabel", var199)
      local var229 = {}
      var229.BackgroundTransparency = 1
      var229.Font = var5.FONT
      var229.Position = UDim2.new(0.5, 65336, 0, 49)
      var229.Size = UDim2.new(0, 400, 0, 72)
      var229.Text = var0.networkError.responseBody
      var229.TextWrapped = true
      var229.TextColor3 = var2.uploadResult.text
      var229.TextSize = var5.FONT_SIZE_MEDIUM
      var229.TextXAlignment = Enum.TextXAlignment.Center
      var229.TextYAlignment = Enum.TextYAlignment.Top
      var195.Reason = var2.createElement("TextLabel", var229)
      local var0 = var2.createElement("Frame", var181, var195)
   end
   var53.LoadingResultFailure = var177
   local var259 = {}
   var259.BackgroundTransparency = 1
   var259.Position = UDim2.new(0, 0, 1, 65456)
   var259.Size = UDim2.new(1, 0, 0, 80)
   local var273 = {}
   local var277 = {}
   var277.LayoutOrder = 0
   var277.OnClick = var0.onClose
   var277.Position = UDim2.new(0.5, 65476, 0.5, 65520)
   var277.Size = UDim2.new(0, 120, 0, 32)
   var277.Style = "Round"
   var277.Text = var1:getText("Action", "Close")
   var273.CloseButton = var2.createElement(var6, var277)
   var53.Footer = var2.createElement("Frame", var259, var273)
   return var2.createElement("Frame", var47, var53)
end

function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var47 = {}
   var47.BackgroundColor3 = var2.uploadResult.background
   var47.BackgroundTransparency = 0
   var47.BorderSizePixel = 0
   var47.Size = var0.Size
   local var53 = {}
   local var57 = {}
   var57.title = var0.assetName
   var57.titleHeight = 24
   var57.titlePadding = 12
   var57.Position = UDim2.new(0.5, 65461, 0, 48)
   var57.Size = UDim2.new(0, 150, 0, 186)
   var53.ModelPreview = var2.createElement(var7, var57)
   local var73 = var0.uploadSucceeded
   if var73 then
      local var77 = {}
      var77.Position = UDim2.new(0, 0, 0, 279)
      var77.Size = UDim2.new(1, 0, 1, 65257)
      var77.BackgroundTransparency = 1
      local var91 = {}
      local var95 = {}
      var95.BackgroundTransparency = 1
      var95.Position = UDim2.new(0.5, 65336, 0, 0)
      var95.Size = UDim2.new(0, 400, 0, 36)
      var95.Text = var1:getText("General", "SuccessfullyConverted")
      var95.Font = var5.FONT
      var95.TextColor3 = var2.uploadResult.successText
      var95.TextSize = var5.FONT_SIZE_TITLE
      var95.TextXAlignment = Enum.TextXAlignment.Center
      var95.TextYAlignment = Enum.TextYAlignment.Center
      var91.Title = var2.createElement("TextLabel", var95)
      local var125 = {}
      var125.BackgroundTransparency = 1
      var125.Size = UDim2.new(0, 400, 0, 72)
      var125.Position = UDim2.new(0.5, 65336, 0, 49)
      local var139 = {}
      local var143 = {}
      var143.Padding = UDim.new(0, 12)
      var143.SortOrder = Enum.SortOrder.LayoutOrder
      var139.UIListLayout = var2.createElement("UIListLayout", var143)
      local var153 = {}
      var153.BackgroundTransparency = 1
      var153.Font = var5.FONT
      var153.Text = var1:getText("General", "YouMayFindPackagesInToolbox")
      var153.TextColor3 = var2.uploadResult.text
      var153.TextSize = var5.FONT_SIZE_MEDIUM
      var153.Size = UDim2.new(1, 0, 0, 24)
      var153.TextYAlignment = Enum.TextYAlignment.Center
      var153.LayoutOrder = 0
      var139.ModerationMessage = var2.createElement("TextLabel", var153)
      var91.Rows = var2.createElement("Frame", var125, var139)
      local var0 = var2.createElement("Frame", var77, var91)
   end
   var53.LoadingResultSuccess = var73
   local var177 = var0.uploadSucceeded
   if var177 then
      local var181 = {}
      var181.Position = UDim2.new(0, 0, 0, 279)
      var181.Size = UDim2.new(1, 0, 1, 65257)
      var181.BackgroundTransparency = 1
      local var195 = {}
      local var199 = {}
      var199.BackgroundTransparency = 1
      var199.Font = var5.FONT
      var199.Position = UDim2.new(0.5, 65336, 0, 0)
      var199.Size = UDim2.new(0, 400, 0, 36)
      var199.Text = var1:getText("General", "ConvertToPackageFailed")
      var199.TextColor3 = var2.uploadResult.text
      var199.TextSize = var5.FONT_SIZE_TITLE
      var199.TextXAlignment = Enum.TextXAlignment.Center
      var199.TextYAlignment = Enum.TextYAlignment.Center
      var195.Title = var2.createElement("TextLabel", var199)
      local var229 = {}
      var229.BackgroundTransparency = 1
      var229.Font = var5.FONT
      var229.Position = UDim2.new(0.5, 65336, 0, 49)
      var229.Size = UDim2.new(0, 400, 0, 72)
      var229.Text = var0.networkError.responseBody
      var229.TextWrapped = true
      var229.TextColor3 = var2.uploadResult.text
      var229.TextSize = var5.FONT_SIZE_MEDIUM
      var229.TextXAlignment = Enum.TextXAlignment.Center
      var229.TextYAlignment = Enum.TextYAlignment.Top
      var195.Reason = var2.createElement("TextLabel", var229)
      local var0 = var2.createElement("Frame", var181, var195)
   end
   var53.LoadingResultFailure = var177
   local var259 = {}
   var259.BackgroundTransparency = 1
   var259.Position = UDim2.new(0, 0, 1, 65456)
   var259.Size = UDim2.new(1, 0, 0, 80)
   local var273 = {}
   local var277 = {}
   var277.LayoutOrder = 0
   var277.OnClick = var0.onClose
   var277.Position = UDim2.new(0.5, 65476, 0.5, 65520)
   var277.Size = UDim2.new(0, 120, 0, 32)
   var277.Style = "Round"
   var277.Text = var1:getText("Action", "Close")
   var273.CloseButton = var2.createElement(var6, var277)
   var53.Footer = var2.createElement("Frame", var259, var273)
   return var2.createElement("Frame", var47, var53)
end

fun1 = var4.withContext
local var300 = {}
var300.Localization = var4.Localization
var300.Stylizer = var4.Stylizer
var8 = fun1(var300)(var8)
return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.assetId = arg1.AssetConfigReducer.assetId
   var0.assetName = arg1.AssetConfigReducer.assetName
   var0.uploadSucceeded = arg1.AssetConfigReducer.uploadSucceeded
   var0.networkError = arg1.NetworkReducer.networkError
   var0.assetConfigData = arg1.AssetConfigReducer.assetConfigData
   var0.assetTypeEnum = arg1.AssetConfigReducer.assetTypeEnum
   return var0
end, function(arg1)
   return {}
end)(var8)

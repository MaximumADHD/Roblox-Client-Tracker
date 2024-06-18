-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = require(var0.Src.Util.Constants)
local var5 = require(var0.Src.Actions.SetCurrentScreen)
local var6 = var0.Src.Components
local var7 = require(var6.ConvertToPackageWindow.LoadingBar)
local var8 = require(var6.ConvertToPackageWindow.AssetThumbnailPreview)
local var9 = var2.PureComponent:extend("AssetUpload")
function var9.init(arg1, arg2)
   local var0 = {}
   var0.isLoading = true
   arg1.state = var0
end

local function fun2(arg1)
   local var0 = arg1.props
   local var301 = {}
   var301.BackgroundColor3 = var0.Stylizer.typeValidation.background
   var301.BackgroundTransparency = 0
   var301.BorderSizePixel = 0
   var301.Size = var0.Size
   local var307 = {}
   local var311 = {}
   var311.titleHeight = 24
   var311.titlePadding = 12
   var311.title = var0.assetName
   var311.Position = UDim2.new(0.5, 65461, 0, 48)
   var311.Size = UDim2.new(0, 150, 0, 186)
   var307.ModelPreview = var2.createElement(var8, var311)
   local var330 = {}
   var330.loadingText = var0.Localization:getText("Action", "Converting")
   var330.loadingTime = 0.5
   var330.holdPercent = 0.92
   var330.Size = UDim2.new(0, 400, 0, 6)
   var330.Position = UDim2.new(0.5, 65336, 0, 314)
   if var0.uploadSucceeded == "props" then
      local var0 = var0.onNext or nil
   end
   var330.onFinish = nil
   var307.LoadingBar = var2.createElement(var7, var330)
   return var2.createElement("Frame", var301, var307)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var301 = {}
   var301.BackgroundColor3 = var0.Stylizer.typeValidation.background
   var301.BackgroundTransparency = 0
   var301.BorderSizePixel = 0
   var301.Size = var0.Size
   local var307 = {}
   local var311 = {}
   var311.titleHeight = 24
   var311.titlePadding = 12
   var311.title = var0.assetName
   var311.Position = UDim2.new(0.5, 65461, 0, 48)
   var311.Size = UDim2.new(0, 150, 0, 186)
   var307.ModelPreview = var2.createElement(var8, var311)
   local var330 = {}
   var330.loadingText = var0.Localization:getText("Action", "Converting")
   var330.loadingTime = 0.5
   var330.holdPercent = 0.92
   var330.Size = UDim2.new(0, 400, 0, 6)
   var330.Position = UDim2.new(0.5, 65336, 0, 314)
   if var0.uploadSucceeded == "props" then
      local var0 = var0.onNext or nil
   end
   var330.onFinish = nil
   var307.LoadingBar = var2.createElement(var7, var330)
   return var2.createElement("Frame", var301, var307)
end

fun2 = var3.withContext
local var356 = {}
var356.Localization = var3.Localization
var356.Stylizer = var3.Stylizer
var9 = fun2(var356)(var9)
return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.uploadSucceeded = arg1.AssetConfigReducer.uploadSucceeded
   var0.assetId = arg1.AssetConfigReducer.assetId
   var0.assetName = arg1.AssetConfigReducer.assetName
   return var0
end, function(arg1)
   local var0 = {}
   function var0.onNext(arg1, arg2)
      local var0 = {}
      var0.isLoading = true
      arg1.state = var0
   end
   
   return var0
end)(var9)

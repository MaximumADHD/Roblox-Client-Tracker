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

local function fun7(arg1)
   local var0 = arg1.props
   local var440 = {}
   var440.BackgroundColor3 = var0.Stylizer.typeValidation.background
   var440.BackgroundTransparency = 0
   var440.BorderSizePixel = 0
   var440.Size = var0.Size
   local var446 = {}
   local var450 = {}
   var450.titleHeight = 24
   var450.titlePadding = 12
   var450.title = var0.assetName
   var450.Position = UDim2.new(0.5, 65461, 0, 48)
   var450.Size = UDim2.new(0, 150, 0, 186)
   var446.ModelPreview = var2.createElement(var8, var450)
   local var469 = {}
   var469.loadingText = var0.Localization:getText("Action", "Converting")
   var469.loadingTime = 0.5
   var469.holdPercent = 0.92
   var469.Size = UDim2.new(0, 400, 0, 6)
   var469.Position = UDim2.new(0.5, 65336, 0, 314)
   if var0.uploadSucceeded == "props" then
      local var0 = var0.onNext or nil
   end
   var469.onFinish = nil
   var446.LoadingBar = var2.createElement(var7, var469)
   return var2.createElement("Frame", var440, var446)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var440 = {}
   var440.BackgroundColor3 = var0.Stylizer.typeValidation.background
   var440.BackgroundTransparency = 0
   var440.BorderSizePixel = 0
   var440.Size = var0.Size
   local var446 = {}
   local var450 = {}
   var450.titleHeight = 24
   var450.titlePadding = 12
   var450.title = var0.assetName
   var450.Position = UDim2.new(0.5, 65461, 0, 48)
   var450.Size = UDim2.new(0, 150, 0, 186)
   var446.ModelPreview = var2.createElement(var8, var450)
   local var469 = {}
   var469.loadingText = var0.Localization:getText("Action", "Converting")
   var469.loadingTime = 0.5
   var469.holdPercent = 0.92
   var469.Size = UDim2.new(0, 400, 0, 6)
   var469.Position = UDim2.new(0.5, 65336, 0, 314)
   if var0.uploadSucceeded == "props" then
      local var0 = var0.onNext or nil
   end
   var469.onFinish = nil
   var446.LoadingBar = var2.createElement(var7, var469)
   return var2.createElement("Frame", var440, var446)
end

fun7 = var3.withContext
local var495 = {}
var495.Localization = var3.Localization
var495.Stylizer = var3.Stylizer
var9 = fun7(var495)(var9)
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

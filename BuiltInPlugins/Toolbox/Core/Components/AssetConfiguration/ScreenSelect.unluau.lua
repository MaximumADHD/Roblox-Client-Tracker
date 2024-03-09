-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = var0.Core.Components
local var4 = require(var3.AssetConfiguration.AssetConfig)
local var5 = require(var3.AssetConfiguration.AssetTypeSelection)
local var6 = require(var3.AssetConfiguration.AssetValidation)
local var7 = require(var3.AssetConfiguration.AssetUpload)
local var8 = require(var3.AssetConfiguration.AssetUploadResult)
local var9 = require(var0.Core.Util.AssetConfigConstants)
local function fun0(arg1)
   if arg1 ~= var9.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   return true
end

local function fun1(arg1)
   if arg1 ~= var9.SCREENS.ASSET_TYPE_SELECTION then
      local var0 = false
   end
   return true
end

local function fun2(arg1)
   if arg1 ~= var9.SCREENS.ASSET_VALIDATION then
      local var0 = false
   end
   return true
end

local function fun3(arg1)
   if arg1 ~= var9.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   return true
end

local function fun4(arg1)
   if arg1 ~= var9.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   return true
end

local var10 = var2.PureComponent:extend("ScreenSelect")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.currentScreen
   local var1041 = {}
   var1041.Size = UDim2.new(1, 0, 1, 0)
   var1041.BackgroundTransparency = 1
   local var1049 = {}
   if var1 ~= var9.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   local var1054 = true
   if var1054 then
      local var1058 = {}
      var1058.Size = UDim2.new(1, 0, 1, 0)
      var1058.assetId = var0.assetId
      var1058.assetTypeEnum = var0.assetTypeEnum
      var1058.onClose = var0.onClose
      var1058.pluginGui = var0.pluginGui
      local var0 = var2.createElement(var4, var1058)
   end
   var1049.AssetConfig = var1054
   if var1 ~= var9.SCREENS.ASSET_TYPE_SELECTION then
      local var0 = false
   end
   local var1074 = true
   if var1074 then
      local var1078 = {}
      var1078.Size = UDim2.new(1, 0, 1, 0)
      var1078.onClose = var0.onClose
      local var0 = var2.createElement(var5, var1078)
   end
   var1049.AssetTypeSelection = var1074
   if var1 ~= var9.SCREENS.ASSET_VALIDATION then
      local var0 = false
   end
   local var1091 = true
   if var1091 then
      local var1095 = {}
      var1095.Size = UDim2.new(1, 0, 1, 0)
      var1095.onClose = var0.onClose
      local var0 = var2.createElement(var6, var1095)
   end
   var1049.AssetValidation = var1091
   if var1 ~= var9.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   local var1108 = true
   if var1108 then
      local var1112 = {}
      var1112.Size = UDim2.new(1, 0, 1, 0)
      var1112.onClose = var0.onClose
      local var0 = var2.createElement(var7, var1112)
   end
   var1049.AssetUpload = var1108
   if var1 ~= var9.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   local var6 = true
   if var6 then
      local var1129 = {}
      var1129.Size = UDim2.new(1, 0, 1, 0)
      var1129.onClose = var0.onClose
      local var0 = var2.createElement(var8, var1129)
   end
   var1049.AssetUploadResult = var6
   return var2.createElement("Frame", var1041, var1049)
end

return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.currentScreen = arg1.currentScreen
   return var0
end)(var10)

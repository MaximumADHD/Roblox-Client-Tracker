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
   local var1052 = {}
   var1052.Size = UDim2.new(1, 0, 1, 0)
   var1052.BackgroundTransparency = 1
   local var1060 = {}
   if var1 ~= var9.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   local var1065 = true
   if var1065 then
      local var1069 = {}
      var1069.Size = UDim2.new(1, 0, 1, 0)
      var1069.assetId = var0.assetId
      var1069.assetTypeEnum = var0.assetTypeEnum
      var1069.onClose = var0.onClose
      var1069.pluginGui = var0.pluginGui
      local var0 = var2.createElement(var4, var1069)
   end
   var1060.AssetConfig = var1065
   if var1 ~= var9.SCREENS.ASSET_TYPE_SELECTION then
      local var0 = false
   end
   local var1085 = true
   if var1085 then
      local var1089 = {}
      var1089.Size = UDim2.new(1, 0, 1, 0)
      var1089.onClose = var0.onClose
      local var0 = var2.createElement(var5, var1089)
   end
   var1060.AssetTypeSelection = var1085
   if var1 ~= var9.SCREENS.ASSET_VALIDATION then
      local var0 = false
   end
   local var1102 = true
   if var1102 then
      local var1106 = {}
      var1106.Size = UDim2.new(1, 0, 1, 0)
      var1106.onClose = var0.onClose
      local var0 = var2.createElement(var6, var1106)
   end
   var1060.AssetValidation = var1102
   if var1 ~= var9.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   local var1119 = true
   if var1119 then
      local var1123 = {}
      var1123.Size = UDim2.new(1, 0, 1, 0)
      var1123.onClose = var0.onClose
      local var0 = var2.createElement(var7, var1123)
   end
   var1060.AssetUpload = var1119
   if var1 ~= var9.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   local var6 = true
   if var6 then
      local var1140 = {}
      var1140.Size = UDim2.new(1, 0, 1, 0)
      var1140.onClose = var0.onClose
      local var0 = var2.createElement(var8, var1140)
   end
   var1060.AssetUploadResult = var6
   return var2.createElement("Frame", var1052, var1060)
end

return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.currentScreen = arg1.currentScreen
   return var0
end)(var10)

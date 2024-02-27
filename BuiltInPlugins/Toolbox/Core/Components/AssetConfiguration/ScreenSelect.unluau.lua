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
   local var1047 = {}
   var1047.Size = UDim2.new(1, 0, 1, 0)
   var1047.BackgroundTransparency = 1
   local var1055 = {}
   if var1 ~= var9.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   local var1060 = true
   if var1060 then
      local var1064 = {}
      var1064.Size = UDim2.new(1, 0, 1, 0)
      var1064.assetId = var0.assetId
      var1064.assetTypeEnum = var0.assetTypeEnum
      var1064.onClose = var0.onClose
      var1064.pluginGui = var0.pluginGui
      local var0 = var2.createElement(var4, var1064)
   end
   var1055.AssetConfig = var1060
   if var1 ~= var9.SCREENS.ASSET_TYPE_SELECTION then
      local var0 = false
   end
   local var1080 = true
   if var1080 then
      local var1084 = {}
      var1084.Size = UDim2.new(1, 0, 1, 0)
      var1084.onClose = var0.onClose
      local var0 = var2.createElement(var5, var1084)
   end
   var1055.AssetTypeSelection = var1080
   if var1 ~= var9.SCREENS.ASSET_VALIDATION then
      local var0 = false
   end
   local var1097 = true
   if var1097 then
      local var1101 = {}
      var1101.Size = UDim2.new(1, 0, 1, 0)
      var1101.onClose = var0.onClose
      local var0 = var2.createElement(var6, var1101)
   end
   var1055.AssetValidation = var1097
   if var1 ~= var9.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   local var1114 = true
   if var1114 then
      local var1118 = {}
      var1118.Size = UDim2.new(1, 0, 1, 0)
      var1118.onClose = var0.onClose
      local var0 = var2.createElement(var7, var1118)
   end
   var1055.AssetUpload = var1114
   if var1 ~= var9.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   local var6 = true
   if var6 then
      local var1135 = {}
      var1135.Size = UDim2.new(1, 0, 1, 0)
      var1135.onClose = var0.onClose
      local var0 = var2.createElement(var8, var1135)
   end
   var1055.AssetUploadResult = var6
   return var2.createElement("Frame", var1047, var1055)
end

return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.currentScreen = arg1.currentScreen
   return var0
end)(var10)

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
   local var1046 = {}
   var1046.Size = UDim2.new(1, 0, 1, 0)
   var1046.BackgroundTransparency = 1
   local var1054 = {}
   if var1 ~= var9.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   local var1059 = true
   if var1059 then
      local var1063 = {}
      var1063.Size = UDim2.new(1, 0, 1, 0)
      var1063.assetId = var0.assetId
      var1063.assetTypeEnum = var0.assetTypeEnum
      var1063.onClose = var0.onClose
      var1063.pluginGui = var0.pluginGui
      local var0 = var2.createElement(var4, var1063)
   end
   var1054.AssetConfig = var1059
   if var1 ~= var9.SCREENS.ASSET_TYPE_SELECTION then
      local var0 = false
   end
   local var1079 = true
   if var1079 then
      local var1083 = {}
      var1083.Size = UDim2.new(1, 0, 1, 0)
      var1083.onClose = var0.onClose
      local var0 = var2.createElement(var5, var1083)
   end
   var1054.AssetTypeSelection = var1079
   if var1 ~= var9.SCREENS.ASSET_VALIDATION then
      local var0 = false
   end
   local var1096 = true
   if var1096 then
      local var1100 = {}
      var1100.Size = UDim2.new(1, 0, 1, 0)
      var1100.onClose = var0.onClose
      local var0 = var2.createElement(var6, var1100)
   end
   var1054.AssetValidation = var1096
   if var1 ~= var9.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   local var1113 = true
   if var1113 then
      local var1117 = {}
      var1117.Size = UDim2.new(1, 0, 1, 0)
      var1117.onClose = var0.onClose
      local var0 = var2.createElement(var7, var1117)
   end
   var1054.AssetUpload = var1113
   if var1 ~= var9.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   local var6 = true
   if var6 then
      local var1134 = {}
      var1134.Size = UDim2.new(1, 0, 1, 0)
      var1134.onClose = var0.onClose
      local var0 = var2.createElement(var8, var1134)
   end
   var1054.AssetUploadResult = var6
   return var2.createElement("Frame", var1046, var1054)
end

return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.currentScreen = arg1.currentScreen
   return var0
end)(var10)

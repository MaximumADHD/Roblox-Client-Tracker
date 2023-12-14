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
   local var165 = {}
   var165.Size = UDim2.new(1, 0, 1, 0)
   var165.BackgroundTransparency = 1
   local var173 = {}
   if var1 ~= var9.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   local var178 = true
   if var178 then
      local var182 = {}
      var182.Size = UDim2.new(1, 0, 1, 0)
      var182.assetId = var0.assetId
      var182.assetTypeEnum = var0.assetTypeEnum
      var182.onClose = var0.onClose
      var182.pluginGui = var0.pluginGui
      local var0 = var2.createElement(var4, var182)
   end
   var173.AssetConfig = var178
   if var1 ~= var9.SCREENS.ASSET_TYPE_SELECTION then
      local var0 = false
   end
   local var198 = true
   if var198 then
      local var202 = {}
      var202.Size = UDim2.new(1, 0, 1, 0)
      var202.onClose = var0.onClose
      local var0 = var2.createElement(var5, var202)
   end
   var173.AssetTypeSelection = var198
   if var1 ~= var9.SCREENS.ASSET_VALIDATION then
      local var0 = false
   end
   local var215 = true
   if var215 then
      local var219 = {}
      var219.Size = UDim2.new(1, 0, 1, 0)
      var219.onClose = var0.onClose
      local var0 = var2.createElement(var6, var219)
   end
   var173.AssetValidation = var215
   if var1 ~= var9.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   local var232 = true
   if var232 then
      local var236 = {}
      var236.Size = UDim2.new(1, 0, 1, 0)
      var236.onClose = var0.onClose
      local var0 = var2.createElement(var7, var236)
   end
   var173.AssetUpload = var232
   if var1 ~= var9.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   local var6 = true
   if var6 then
      local var253 = {}
      var253.Size = UDim2.new(1, 0, 1, 0)
      var253.onClose = var0.onClose
      local var0 = var2.createElement(var8, var253)
   end
   var173.AssetUploadResult = var6
   return var2.createElement("Frame", var165, var173)
end

return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.currentScreen = arg1.currentScreen
   return var0
end)(var10)

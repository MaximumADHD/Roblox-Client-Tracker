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
   local var161 = {}
   var161.Size = UDim2.new(1, 0, 1, 0)
   var161.BackgroundTransparency = 1
   local var169 = {}
   if var1 ~= var9.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   local var174 = true
   if var174 then
      local var178 = {}
      var178.Size = UDim2.new(1, 0, 1, 0)
      var178.assetId = var0.assetId
      var178.assetTypeEnum = var0.assetTypeEnum
      var178.onClose = var0.onClose
      var178.pluginGui = var0.pluginGui
      local var0 = var2.createElement(var4, var178)
   end
   var169.AssetConfig = var174
   if var1 ~= var9.SCREENS.ASSET_TYPE_SELECTION then
      local var0 = false
   end
   local var194 = true
   if var194 then
      local var198 = {}
      var198.Size = UDim2.new(1, 0, 1, 0)
      var198.onClose = var0.onClose
      local var0 = var2.createElement(var5, var198)
   end
   var169.AssetTypeSelection = var194
   if var1 ~= var9.SCREENS.ASSET_VALIDATION then
      local var0 = false
   end
   local var211 = true
   if var211 then
      local var215 = {}
      var215.Size = UDim2.new(1, 0, 1, 0)
      var215.onClose = var0.onClose
      local var0 = var2.createElement(var6, var215)
   end
   var169.AssetValidation = var211
   if var1 ~= var9.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   local var228 = true
   if var228 then
      local var232 = {}
      var232.Size = UDim2.new(1, 0, 1, 0)
      var232.onClose = var0.onClose
      local var0 = var2.createElement(var7, var232)
   end
   var169.AssetUpload = var228
   if var1 ~= var9.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   local var6 = true
   if var6 then
      local var249 = {}
      var249.Size = UDim2.new(1, 0, 1, 0)
      var249.onClose = var0.onClose
      local var0 = var2.createElement(var8, var249)
   end
   var169.AssetUploadResult = var6
   return var2.createElement("Frame", var161, var169)
end

return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.currentScreen = arg1.currentScreen
   return var0
end)(var10)

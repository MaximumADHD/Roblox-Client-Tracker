-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = var0.Src.Components
local var4 = require(var3.ConvertToPackageWindow.AssetConfig)
local var5 = require(var3.ConvertToPackageWindow.AssetUpload)
local var6 = require(var3.ConvertToPackageWindow.AssetUploadResult)
local var7 = require(var0.Src.Util.Constants)
local function fun0(arg1)
   if arg1 ~= var7.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   return true
end

local function fun1(arg1)
   if arg1 ~= var7.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   return true
end

local function fun2(arg1)
   if arg1 ~= var7.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   return true
end

local var8 = var2.PureComponent:extend("ScreenSelect")
function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.currentScreen
   local var2 = UDim2.new(1, 0, 1, 0)
   local var3 = var0.onClose
   local var4 = var0.instances
   local var69 = {}
   var69.Size = var2
   var69.BackgroundTransparency = 1
   local var71 = {}
   if var1 ~= var7.SCREENS.CONFIGURE_ASSET then
      local var0 = false
   end
   local var76 = true
   if var76 then
      local var80 = {}
      var80.Size = var2
      var80.assetName = var0.assetName
      var80.onClose = var3
      var80.pluginGui = var0.pluginGui
      var80.instances = var4
      local var0 = var2.createElement(var4, var80)
   end
   var71.AssetConfig = var76
   if var1 ~= var7.SCREENS.UPLOADING_ASSET then
      local var0 = false
   end
   local var86 = true
   if var86 then
      local var90 = {}
      var90.Size = var2
      var90.onClose = var3
      var90.instances = var4
      local var0 = var2.createElement(var5, var90)
   end
   var71.AssetUpload = var86
   if var1 ~= var7.SCREENS.UPLOAD_ASSET_RESULT then
      local var0 = false
   end
   local var7 = true
   if var7 then
      local var100 = {}
      var100.Size = var2
      var100.onClose = var3
      var100.instances = var4
      local var0 = var2.createElement(var6, var100)
   end
   var71.AssetUploadResult = var7
   return var2.createElement("Frame", var69, var71)
end

return require(var1.RoactRodux).connect(function(arg1, arg2)
   arg1 = arg1 or {}
   local var0 = {}
   var0.currentScreen = arg1.AssetConfigReducer.currentScreen
   return var0
end)(var8)

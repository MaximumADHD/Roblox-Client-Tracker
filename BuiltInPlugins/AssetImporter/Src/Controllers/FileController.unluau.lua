-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = var0.Src.Actions
local var2 = require(var1.ResetState)
local var3 = require(var1.SetShowError)
local var4 = require(var1.SetShowPreview)
local var5 = require(var1.SetShowProgress)
local var6 = require(var1.SetShowQueue)
local var7 = require(var1.SetUploading)
local var8 = var0.Src.Thunks
local var9 = require(var8.ShowImportPreview)
local var10 = require(var0.Src.Flags.getFFlagAssetImportEnableMultipleFiles)
local var11 = require(var0.Packages.Framework).ContextServices.ContextItem:extend("FileController")
function var11.new(arg1, arg2, arg3)
   local var46 = {}
   var46._store = arg1
   var46._presetController = arg2
   var46._mock = arg3
   var46.promptRequested = false
   if arg3 then
      function var46.showImportPrompt()
         error("Please call FileController.overrideShowImportPrompt to provide testing function")
      end
      
      function var46.overrideShowImportPrompt(arg1)
         var46.showImportPrompt = arg1
      end
      
      function var46.setPromptRequested(arg1)
         var46.promptRequested = arg1
      end
      
   else
      function var46.showImportPrompt(arg1)
         local var0 = require(var8.ShowImportPrompt)(arg1)
         var46._store:dispatch()
      end
      
   end
   return setmetatable(var66, var11)
end

function var11.mock(arg1)
   local var0 = {}
   function var0.initializePresets(...)
   end
   
   function var0.createPresetFromLastImport(...)
   end
   
   local var71 = var11
   var71 = arg1
   return var71.new(var71, var0, true)
end

function var11.DEPRECATED_cleanupPreview(arg1)
   local var0 = arg1._store:getState().Preview.assetImportSession
   if var0 then
      arg1:DEPRECATED_onSessionCanceled(var0)
   end
   local var1 = var2()
   arg1._store:dispatch()
end

function var11.DEPRECATED_onSessionCanceled(arg1, arg2)
   if arg2 then
      arg2:Cancel()
   end
   local var94 = var4(false)
   arg1._store:dispatch()
   local var1 = var7(false)
   arg1._store:dispatch()
end

function var11.destroy(arg1)
   arg1:DEPRECATED_cleanupPreview()
end

function var11.onPluginButtonClicked(arg1)
   local var0 = arg1._store:getState()
   if var10() then
      if var0.Dialogs.uploading then
      end
   end
   local var1 = var0.Dialogs.showPreview or var0.Dialogs.showError or var0.Dialogs.showProgress or arg1.promptRequested
   local var122 = var10()
   if var122 then
      var122 = var1
      var1 = var122 or var0.Dialogs.showQueue
   end
   if not var1 then
      arg1:requestFilePicker()
   end
   if arg1.promptRequested then
   end
   local var131 = var4(false)
   arg1._store:dispatch()
   local var4 = var3(false)
   arg1._store:dispatch()
   if var10() then
      local var0 = var6(false)
      arg1._store:dispatch()
   end
end

function var11.requestFilePicker(arg1)
   arg1.promptRequested = true
   if var10() then
      arg1._presetController:initializePresets()
      local var0 = var6(true)
      arg1._store:dispatch()
      arg1.showImportPrompt(function()
         error("Please call FileController.overrideShowImportPrompt to provide testing function")
      end)
   end
   arg1.showImportPrompt(function(arg1)
      var46.showImportPrompt = arg1
   end)
end

function var11.requestPreview(arg1, arg2)
   local var0 = var9(arg2, function(arg1, arg2)
   end)
   arg1._store:dispatch()
end

function var11.DEPRECATED_onImport(arg1, arg2)
   if not arg2 then
      local var176 = var4(false)
      arg1._store:dispatch()
      local var1 = var3(true)
      arg1._store:dispatch()
   end
   if arg1._store:getState().Dialogs.uploading then
   end
   local var190 = arg2:GetImportTree()
   arg1._presetController:createPresetFromLastImport()
   arg2:Upload()
   local var196 = var4(false)
   arg1._store:dispatch()
   local var201 = var7(true)
   arg1._store:dispatch()
   local var3 = var5(true)
   arg1._store:dispatch()
end

function var11.DEPRECATED_onImportCompleted(arg1)
   local var0 = var7(false)
   arg1._store:dispatch()
   arg1:DEPRECATED_cleanupPreview()
end

return var11

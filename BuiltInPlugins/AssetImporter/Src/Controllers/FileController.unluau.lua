-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = var0.Src.Actions
local var2 = require(var1.ResetState)
local var3 = require(var1.SetShowError)
local var4 = require(var1.SetShowPreview)
local var5 = require(var1.SetShowProgress)
local var6 = require(var1.SetUploading)
local var7 = var0.Src.Thunks
local var8 = require(var0.Packages.Framework).ContextServices.ContextItem:extend("FileController")
function var8.new(arg1, arg2, arg3)
   local var35 = {}
   var35._store = arg1
   var35._presetController = arg2
   var35._mock = arg3
   var35.promptRequested = false
   if arg3 then
      function var35.showImportPrompt()
         error("Please call FileController.overrideShowImportPrompt to provide testing function")
      end
      
      function var35.overrideShowImportPrompt(arg1)
         var35.showImportPrompt = arg1
      end
      
      function var35.setPromptRequested(arg1)
         var35.promptRequested = arg1
      end
      
   else
      function var35.showImportPrompt(arg1)
         local var0 = require(var7.ShowImportPrompt)(arg1)
         var35._store:dispatch()
      end
      
   end
   return setmetatable(var55, var8)
end

function var8.mock(arg1)
   local var0 = {}
   function var0.initializePresets(...)
   end
   
   function var0.createPresetFromLastImport(...)
   end
   
   local var60 = var8
   var60 = arg1
   return var60.new(var60, var0, true)
end

function var8.cleanupPreview(arg1)
   local var0 = arg1._store:getState().Preview.assetImportSession
   if var0 then
      arg1:onSessionCanceled(var0)
   end
   local var1 = var2()
   arg1._store:dispatch()
end

function var8.onSessionCanceled(arg1, arg2)
   if arg2 then
      arg2:Cancel()
   end
   local var83 = var4(false)
   arg1._store:dispatch()
   local var1 = var6(false)
   arg1._store:dispatch()
end

function var8.destroy(arg1)
   arg1:cleanupPreview()
end

function var8.onPluginButtonClicked(arg1)
   local var0 = arg1._store:getState()
   if not var0.Dialogs.showPreview or var0.Dialogs.showError or var0.Dialogs.showProgress or arg1.promptRequested then
      arg1:requestFilePicker()
   end
   if arg1.promptRequested then
   end
   local var111 = var4(false)
   arg1._store:dispatch()
   local var2 = var3(false)
   arg1._store:dispatch()
end

function var8.requestFilePicker(arg1)
   arg1.promptRequested = true
   arg1.showImportPrompt(function()
      error("Please call FileController.overrideShowImportPrompt to provide testing function")
   end)
end

function var8.onImport(arg1, arg2)
   if not arg2 then
      local var128 = var4(false)
      arg1._store:dispatch()
      local var1 = var3(true)
      arg1._store:dispatch()
   end
   if arg1._store:getState().Dialogs.uploading then
   end
   local var142 = arg2:GetImportTree()
   arg1._presetController:createPresetFromLastImport()
   arg2:Upload()
   local var148 = var4(false)
   arg1._store:dispatch()
   local var153 = var6(true)
   arg1._store:dispatch()
   local var3 = var5(true)
   arg1._store:dispatch()
end

function var8.onImportCompleted(arg1)
   local var0 = var6(false)
   arg1._store:dispatch()
   arg1:cleanupPreview()
end

return var8

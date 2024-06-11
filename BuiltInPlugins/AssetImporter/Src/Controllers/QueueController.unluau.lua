-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Framework)
local var2 = var1.Util.Promise
local var3 = var0.Src.Actions
local var4 = require(var3.SetShowPreview)
local var5 = require(var3.SetUploading)
local var6 = require(var3.SetSessionQueue)
local var7 = require(var3.UpdateQueueItem)
local var8 = require(var0.Src.DataTypes.QueuedSession)
local var9 = var0.Src.Thunks
local var10 = require(var9.InsertModelInWorkspace)
local var11 = require(var9.ClosePreview)
local var12 = require(var0.Src.Utility.openInAvatarPreviewer)
local var13 = require(var0.Src.Flags.getFFlagImporterOpensAvatarPreviewerBetaCheck)
local var14 = var1.ContextServices.ContextItem:extend("QueueController")
function var14.new(arg1, arg2)
   local var0 = {}
   var0._store = arg1
   var0._mock = arg2
   function var0.resolveUploadPromise(arg1, arg2)
      local var0 = arg2.session
      local var1 = var0:GetImportTree()
      local var63 = var8
      var63 = arg2
      local var65 = {}
      var65.uploaded = true
      local var68 = var7(var63.update(var63, var65))
      var0._store:dispatch()
      local var3 = var0
      local var4 = var10(arg1, var1)
      var3._store:dispatch()
      if var13() then
         var3 = arg1
         var4 = var1
         var12(var3, var4, var0)
      end
   end
   
   function var0.rejectUploadPromise(arg1)
   end
   
   return setmetatable(var0, var14)
end

function var14.mock(arg1)
   local var87 = var14
   var87 = arg1
   return var87.new(var87, true)
end

function var14.destroy(arg1)
   if arg1._store:getState().Dialogs.uploading then
   end
   arg1:removeAllQueuedFiles()
end

function var14._getSessionQueue(arg1)
   return arg1._store:getState().Sessions.sessionQueue
end

function var14.destroyItem(arg1, arg2)
   if arg2 then
      if arg2.session then
         arg2.session:Cancel()
      end
   end
end

function var14.removeAllQueuedFiles(arg1)
   if arg1._store:getState().Dialogs.uploading then
   end
   local var117 = var11()
   arg1._store:dispatch()
   local var120 = arg1:_getSessionQueue()
   arg1:destroyItem(var121)
   local var1 = var6({})
   arg1._store:dispatch()
end

function var14.removeErroredQueuedFiles(arg1)
   local var0 = var11()
   arg1._store:dispatch()
end

function var14.removeUploadedQueuedFiles(arg1)
   local var0 = var11()
   arg1._store:dispatch()
end

function var14.isImportEnabled(arg1, arg2)
   return arg2.validSession
end

function var14.beginImportQueue(arg1)
   local var145 = arg1._store:getState().Dialogs
   if var145.uploading then
   end
   local var150 = var4(false)
   arg1._store:dispatch()
   local var155 = var5(true)
   arg1._store:dispatch()
   var145 = arg1:_getSessionQueue()
   local var2 = nil
   local var160 = nil
   arg1:uploadItem(var161)
   local var4 = var5(false)
   arg1._store:dispatch()
end

function var14.uploadItem(arg1, arg2)
   if arg2.enabled then
      if arg1:isImportEnabled(arg2) then
         arg1:_createUploadPromise(arg2):andThen(arg1.resolveUploadPromise, arg1.rejectUploadPromise):await()
      end
   end
end

function var14._createUploadPromise(arg1, arg2)
   return var2.new(function(arg1, arg2)
      local var0 = arg2.session
      local var1 = var0:GetImportTree()
      local var194 = var8
      var194 = arg2
      local var196 = {}
      var196.uploaded = true
      local var199 = var7(var194.update(var194, var196))
      var0._store:dispatch()
      local var3 = var0
      local var4 = var10(arg1, var1)
      var3._store:dispatch()
      if var13() then
         var3 = arg1
         var4 = var1
         var12(var3, var4, var0)
      end
   end)
end

return var14

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.DisplayRichText
local var1 = script.Parent.DisplaySuggestions
local var2 = script.Parent.DisplayError
local var3 = script.Parent.QueueRichText
local var4 = script.Parent.BuilderCommands.Instantiate
local var5 = script.Parent.BuilderCommands.InsertAsset
local var6 = script.Parent.BuilderCommands.SetProperty
local var7 = script.Parent.BuilderCommands.CreateMaterial
local var8 = script.Parent.BuilderCommands.SetMaterial
local var9 = script.Parent.BuilderCommands.RemoveInstance
local var10 = script.Parent.BuilderCommands.CloneInstance
local var11 = script.Parent.BuilderCommands.DisplayRegionAdornments
local var12 = script.Parent.BuilderCommands.DebugBulkPublishToInventory
local var13 = script.Parent.BuilderCommands.SetDraftMode
local var14 = script.Parent.BuilderCommands.RunDraftCommand
local var15 = script.Parent.BuilderCommands.DebugSleep
local var16 = {}
local var343 = {}
var0.Name = require(var0)
var2.Name = require(var2)
local var355 = require(var11)
var11.Name = var355
var355 = var5
var343.InsertAssetInstant = require(var355)
var343.SetPropertyInstant = require(var6)
var16.parallel = var343
var4.Name = require(var4)
var5.Name = require(var5)
var6.Name = require(var6)
var3.Name = require(var3)
var7.Name = require(var7)
var8.Name = require(var8)
var12.Name = require(var12)
local var19 = require(var1)
var1.Name = var19
var16.sequential = {}
if game:GetFastFlag("ConvAIAddDraftModeForSceneCreate") then
   var19 = var4
   var16.parallel.InstantiateInstant = require(var19)
   local var397 = var16.sequential
   var13.Name = require(var13)
   local var402 = var16.sequential
   var14.Name = require(var14)
   local var2 = var16.sequential
   var15.Name = require(var15)
end
if game:GetFastFlag("BuildCommandExpansionPT1") then
   local var412 = var16.sequential
   var9.Name = require(var9)
   local var1 = var16.sequential
   var10.Name = require(var10)
end
return var16

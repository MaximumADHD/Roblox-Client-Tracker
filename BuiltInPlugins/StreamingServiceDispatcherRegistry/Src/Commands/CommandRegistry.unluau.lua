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
local var16 = script.Parent.BuilderCommands.RunCode
local var17 = {}
local var360 = {}
var0.Name = require(var0)
var2.Name = require(var2)
local var372 = require(var11)
var11.Name = var372
var372 = var5
var360.InsertAssetInstant = require(var372)
var360.SetPropertyInstant = require(var6)
var17.parallel = var360
var4.Name = require(var4)
var5.Name = require(var5)
var6.Name = require(var6)
var3.Name = require(var3)
var7.Name = require(var7)
var8.Name = require(var8)
var12.Name = require(var12)
local var20 = require(var1)
var1.Name = var20
var17.sequential = {}
if game:GetFastFlag("ConvAIAddDraftModeForSceneCreate2") then
   var20 = var4
   var17.parallel.InstantiateInstant = require(var20)
   local var414 = var17.sequential
   var13.Name = require(var13)
   local var419 = var17.sequential
   var14.Name = require(var14)
   local var2 = var17.sequential
   var15.Name = require(var15)
end
if game:GetFastFlag("BuildCommandExpansionPT1") then
   local var429 = var17.sequential
   var9.Name = require(var9)
   local var1 = var17.sequential
   var10.Name = require(var10)
end
if game:GetFastFlag("ConvAICodeRunner") then
   local var0 = var17.sequential
   var16.Name = require(var16)
end
return var17

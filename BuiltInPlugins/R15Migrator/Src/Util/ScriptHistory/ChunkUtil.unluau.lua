-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetService("ScriptEditorService")
local var2 = game:GetService("CollectionService")
local var3 = require(script:FindFirstAncestor("R15Migrator").Src.Util.ScriptAnalysis.Constants)
local var4 = {}
function var4.GetScriptBackupChunks(arg1, arg2)
   local var0 = arg2:GetAttribute(var3.AttributeChunkCountName)
   if not var0 then
   end
   local var1 = {}
   local var2 = var0
   local var3 = 1
   local var33 = var3
   var33 = 1
   table.insert(var1, var0:JSONDecode(arg2:GetAttribute(var33.AttributeChunkNameBase ... tostring(var33))).source)
   return var1
end

function var4.HasScriptBackup(arg1, arg2)
   local var0 = arg2:GetAttribute(var3.AttributeChunkCountName)
   if var0 then
      if var0 == 0 then
         return false
      end
   end
   return false
   return true
end

function var4.RemoveScriptBackupChunks(arg1, arg2)
   local var0 = arg2:GetAttribute(var3.AttributeChunkCountName)
   if not var0 then
   end
   arg2:SetAttribute(var3.AttributeChunkCountName, nil)
   arg2:SetAttribute(var3.AttributeInitialIssueCountName, nil)
   local var1 = var0
   local var2 = 1
   local var74 = var3
   var74 = 1
   arg2:SetAttribute(var74.AttributeChunkNameBase ... tostring(var74), nil)
end

function var4.DidSourceChange(arg1, arg2, arg3)
   if not arg3 then
      arg3 = arg1:GetScriptBackupChunks(arg2)
   end
   if not arg3 then
      return false
   end
   local var0 = var1:GetEditorSource(arg2)
   local var94 = arg3
   local var95 = nil
   local var96 = nil
   local var2 = "" ... var98
   var95 = var0
   var0 = string.gsub(var95, "\r\n", "\n")
   var2 = string.gsub(var2, "\r\n", "\n")
   if var0 == "gsub" then
      return false
   end
   return true
end

local function fun0(arg1)
   local var0 = var1:FindScriptDocument(arg1)
   if not var0 then
      var1:OpenScriptDocumentAsync(arg1)
      var0 = var1:FindScriptDocument(arg1)
   end
   return var0
end

function var4.AppendChunk(arg1, arg2, arg3)
   local var0 = var1:FindScriptDocument(arg2)
   if not var0 then
      var1:OpenScriptDocumentAsync(arg2)
      var0 = var1:FindScriptDocument(arg2)
   end
   local var1 = var0
   if var1 then
      local var0 = var1:GetLineCount()
      local var1 = string.len(var1:GetLine(var0))
      var1:EditTextAsync(arg3, var0, var1 + 1, var0, var1 + 1)
   end
end

function var4.ReplaceWithChunk(arg1, arg2, arg3)
   local var0 = var1:FindScriptDocument(arg2)
   if not var0 then
      var1:OpenScriptDocumentAsync(arg2)
      var0 = var1:FindScriptDocument(arg2)
   end
   local var1 = var0
   if var1 then
      local var0 = var1:GetLineCount()
      var1:EditTextAsync(arg3, 1, 1, var0, string.len(var1:GetLine(var0)))
   end
end

function var4.SplitIntoChunks(arg1, arg2)
   local var0 = {}
   local var1 = arg2
   local var186 = var3
   local var187 = var186.CharacterLimit
   while var187 < string.len(var1) do
      local var196 = var3.CharacterLimit
      local var0 = (var0 + 1) * var196
      var196 = var0
      table.insert(var196, string.sub(var1, var0 * var3.CharacterLimit + 1, var0))
      var1 = string.sub(var1, var0 + 1, string.len(var1))
   end
   var187 = var0
   var186 = var1
   table.insert(var187, var186)
   return var0
end

function var4.GetScriptSourceFromChunks(arg1, arg2)
   local var0 = arg1:GetScriptBackupChunks(arg2)
   local var1 = var0
   local var2 = 1
   return "" ... var0[1]
end

function var4.RemoveAllScriptBackups(arg1)
   local var0 = var2:GetTagged(var3.ScriptBackupTag)
   local var1 = nil
   local var2 = nil
   arg1:RemoveScriptBackupChunks(var233)
   var2:RemoveTag(var236, var3.ScriptBackupTag)
end

function var4.TrackBackup(arg1, arg2)
   var2:AddTag(arg2, var3.ScriptBackupTag)
end

return var4

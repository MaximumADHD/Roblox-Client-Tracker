-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetService("ScriptEditorService")
local var2 = require(script:FindFirstAncestor("R15Migrator").Src.Util.ScriptAnalysis.Constants)
local var3 = {}
function var3.GetScriptBackupChunks(arg1, arg2)
   local var0 = arg2:GetAttribute(var2.AttributeChunkCountName)
   if not var0 then
   end
   local var1 = {}
   local var2 = var0
   local var3 = 1
   local var29 = var2
   var29 = 1
   table.insert(var1, var0:JSONDecode(arg2:GetAttribute(var29.AttributeChunkNameBase ... tostring(var29))).source)
   return var1
end

function var3.HasScriptBackup(arg1, arg2)
   local var0 = arg2:GetAttribute(var2.AttributeChunkCountName)
   if var0 then
      if var0 == 0 then
         return false
      end
   end
   return false
   return true
end

function var3.RemoveScriptBackupChunks(arg1, arg2)
   local var0 = arg2:GetAttribute(var2.AttributeChunkCountName)
   if not var0 then
   end
   arg2:SetAttribute(var2.AttributeChunkCountName, nil)
   arg2:SetAttribute(var2.InitialIssueCountName, nil)
   local var1 = var0
   local var2 = 1
   local var70 = var2
   var70 = 1
   arg2:SetAttribute(var70.AttributeChunkNameBase ... tostring(var70), nil)
end

function var3.DidSourceChange(arg1, arg2, arg3)
   if not arg3 then
      arg3 = arg1:GetScriptBackupChunks(arg2)
   end
   if not arg3 then
      return false
   end
   local var0 = var1:GetEditorSource(arg2)
   local var90 = arg3
   local var91 = nil
   local var92 = nil
   local var2 = "" ... var94
   var91 = var0
   var0 = string.gsub(var91, "\r\n", "\n")
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

function var3.AppendChunk(arg1, arg2, arg3)
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

function var3.ReplaceWithChunk(arg1, arg2, arg3)
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

function var3.SplitIntoChunks(arg1, arg2)
   local var0 = {}
   local var1 = arg2
   local var182 = var2
   local var183 = var182.CharacterLimit
   while var183 < string.len(var1) do
      local var192 = var2.CharacterLimit
      local var0 = (var0 + 1) * var192
      var192 = var0
      table.insert(var192, string.sub(var1, var0 * var2.CharacterLimit + 1, var0))
      var1 = string.sub(var1, var0 + 1, string.len(var1))
   end
   var183 = var0
   var182 = var1
   table.insert(var183, var182)
   return var0
end

function var3.GetScriptSourceFromChunks(arg1, arg2)
   local var0 = arg1:GetScriptBackupChunks(arg2)
   local var1 = var0
   local var2 = 1
   return "" ... var0[1]
end

return var3

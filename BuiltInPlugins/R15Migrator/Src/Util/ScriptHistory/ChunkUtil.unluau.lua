-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = game:GetService("ScriptEditorService")
local var2 = require(script.Parent.Parent.Parent.Parent.Src.Util.ScriptAnalysis.Constants)
local var3 = {}
function var3.GetScriptBackupChunks(arg1, arg2)
   local var0 = arg2:GetAttribute(var2.AttributeChunkCountName)
   if not var0 then
   end
   local var1 = {}
   local var2 = var0
   local var3 = 1
   local var30 = var2
   var30 = 1
   table.insert(var1, var0:JSONDecode(arg2:GetAttribute(var30.AttributeChunkNameBase ... tostring(var30))).source)
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
   local var71 = var2
   var71 = 1
   arg2:SetAttribute(var71.AttributeChunkNameBase ... tostring(var71), nil)
end

function var3.DidSourceChange(arg1, arg2, arg3)
   if not arg3 then
      arg3 = arg1:GetScriptBackupChunks(arg2)
   end
   if not arg3 then
      return false
   end
   local var0 = var1:GetEditorSource(arg2)
   local var91 = arg3
   local var92 = nil
   local var93 = nil
   local var2 = "" ... var95
   var92 = var0
   var0 = string.gsub(var92, "\r\n", "\n")
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
   local var183 = var2
   local var184 = var183.CharacterLimit
   while var184 < string.len(var1) do
      local var193 = var2.CharacterLimit
      local var0 = (var0 + 1) * var193
      var193 = var0
      table.insert(var193, string.sub(var1, var0 * var2.CharacterLimit + 1, var0))
      var1 = string.sub(var1, var0 + 1, string.len(var1))
   end
   var184 = var0
   var183 = var1
   table.insert(var184, var183)
   return var0
end

function var3.GetScriptSourceFromChunks(arg1, arg2)
   local var0 = arg1:GetScriptBackupChunks(arg2)
   local var1 = var0
   local var2 = 1
   return "" ... var0[1]
end

return var3

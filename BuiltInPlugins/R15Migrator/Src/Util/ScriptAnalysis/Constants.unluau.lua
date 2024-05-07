-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Resources.Constants)
local var1 = {}
var1.StartKey = "start"
var1.EndKey = "end"
var1.CharacterLimit = 199987
var1.AttributeChunkNameBase = var0.AttributePrefix ... "ScriptBackupChunk"
var1.AttributeChunkCountName = var0.AttributePrefix ... "ScriptBackupCount"
var1.AttributeInitialIssueCountName = var0.AttributePrefix ... "InitialIssueCount"
var1.AttributeUnificationScriptName = var0.AttributePrefix ... "UnificationScript"
local var25 = {}
var25.AutoConverted = "AutoConverted"
var25.Complete = "Complete"
var25.Reverted = "Reverted"
var25.Warning = "Warning"
var25.Error = "Error"
var25.VariableError = "VariableError"
var25.None = "None"
var1.ScriptStatus = var25
var1.ReferenceKey = "Reference"
var1.ScriptBackupTag = "R15MigratorScriptHasBackup"
return var1

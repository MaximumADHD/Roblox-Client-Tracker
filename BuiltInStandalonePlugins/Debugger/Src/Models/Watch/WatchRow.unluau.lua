-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Mocks.DebuggerVariable)
local var2 = require(var0.Util.Constants)
local var3 = require(script.Parent.WatchWindowTableRow)
local function var4(arg1, arg2)
   local var0 = var2
   local var1 = {}
   var1.expressionColumn = arg1.Name
   var0 = arg2 ... var0.SeparationToken
   var1.pathColumn = var0 ... arg1.Name
   var1.idColumn = arg1.VariableId
   var1.scopeColumn = ""
   var1.valueColumn = arg1.Value
   var1.dataTypeColumn = arg1.Type
   var1.childPaths = {}
   var1.expanded = false
   var1.textFilteredOut = false
   var1.scopeFilteredOut = false
   return var1
end

local var5 = {}
function var5.fromData(arg1)
   local var0 = {}
   var0.expressionColumn = arg1.expression
   var0.pathColumn = arg1.path
   var0.scopeColumn = arg1.scope
   var0.valueColumn = arg1.value
   var0.dataTypeColumn = arg1.dataType
   var0.childPaths = arg1.childPaths or {}
   var0.expanded = false
   var0.textFilteredOut = false
   var0.scopeFilteredOut = false
   return var0
end

function var5.fromExpression(arg1)
   local var0 = {}
   var0.expressionColumn = arg1
   var0.pathColumn = arg1
   var0.scopeColumn = ""
   var0.valueColumn = ""
   var0.dataTypeColumn = ""
   var0.childPaths = {}
   var0.expanded = false
   var0.textFilteredOut = false
   var0.scopeFilteredOut = false
   return var0
end

function var5.fromInstance(arg1, arg2)
   local var0 = {}
   var0.expressionColumn = arg2
   var0.pathColumn = arg2
   var0.idColumn = arg1.VariableId
   var0.scopeColumn = ""
   var0.valueColumn = arg1.Value
   var0.dataTypeColumn = arg1.Type
   var0.childPaths = {}
   var0.expanded = false
   var0.textFilteredOut = false
   var0.scopeFilteredOut = false
   return var0
end

function var5.fromChildInstance(arg1, arg2)
   local var0 = var2
   local var1 = {}
   var1.expressionColumn = arg1.Name
   var0 = arg2 ... var0.SeparationToken
   var1.pathColumn = var0 ... arg1.Name
   var1.idColumn = arg1.VariableId
   var1.scopeColumn = ""
   var1.valueColumn = arg1.Value
   var1.dataTypeColumn = arg1.Type
   var1.childPaths = {}
   var1.expanded = false
   var1.textFilteredOut = false
   var1.scopeFilteredOut = false
   return var1
end

function var5.dummyRow(arg1)
   return var4(var1.newDummyRow(), arg1.pathColumn)
end

return var5

-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = var0.Models
local var2 = require(var1.Watch.WatchRow)
local var3 = require(var1.Watch.VariableRow)
local var4 = require(var1.Watch.ScopeEnum)
local var5 = require(var1.StepStateBundle)
local var6 = require(var1.MetaBreakpoint)
local var7 = var0.Mocks
local var8 = require(var7.ThreadState)
local var9 = require(var7.StackFrame)
local var10 = require(var7.ScriptRef)
local var11 = require(var7.PausedState)
local var12 = require(var7.DebuggerVariable)
local var13 = require(var7.MockDebuggerConnection)
local var14 = require(var7.MockDebuggerConnectionManager)
local var15 = require(var7.MockDebuggerUIService)
local var16 = require(var7.MockCrossDMScriptChangeListenerService)
local var17 = var0.Actions
local var18 = require(var17.Watch.AddExpression)
local var19 = require(var17.Watch.ExpressionEvaluated)
local var20 = require(var17.BreakpointsWindow.AddBreakpoint)
local var21 = require(var17.Watch.AddChildVariables)
local var22 = require(var0.Util.DebugConnectionListener.DebugConnectionListener)
local var23 = require(var0.Util.Constants)
return function(arg1)
   local var0 = {}
   var0.expression = "Expression 1"
   var0.path = "3"
   var0.scope = var4.Local
   var0.value = "somePreview"
   var0.dataType = "string"
   var0.childPaths = {}
   local var85 = var2
   var85 = var0
   local var2 = var12.new(1, "Alex", "somePreview", "map")
   local var3 = {}
   var3.name = "Heesoo"
   var3.path = "Alex_Heesoo"
   var3.scope = var4.Local
   var3.value = "somePreview"
   var3.dataType = "map"
   local var4 = {}
   var4.name = "Austin"
   var4.path = "Alex_Austin"
   var4.scope = var4.Local
   var4.value = "somePreview"
   var4.dataType = "string"
   local var5 = {}
   var5.name = "Raul"
   var5.path = "Alex_Heesoo_Raul"
   var5.scope = var4.Local
   var5.value = "somePreview"
   var5.dataType = "string"
   local var6 = {}
   var6.name = "Karan"
   var6.path = "Alex_Austin_Karan"
   var6.scope = var4.Local
   var6.value = "somePreview"
   var6.dataType = "string"
   local var7 = var12.new(2, "UnitedStates", "somePreview2", "map")
   local var8 = {}
   var8.name = "Wisconsin"
   var8.path = "UnitedStates_Wisconsin"
   var8.scope = var4.Local
   var8.value = "somePreview2"
   var8.dataType = "map"
   local var9 = {}
   var9.name = "GreenBay"
   var9.path = "UnitedStates_Wisconsin_GreenBay"
   var9.scope = var4.Local
   var9.value = "somePreview2"
   var9.dataType = "string"
   local var144 = var3
   var144 = var3
   local var147 = var3
   var147 = var4
   local var150 = var3
   var150 = var5
   local var153 = var3
   var153 = var6
   local var156 = var3
   var156 = var8
   local var159 = var3
   var159 = var9
   local var16 = var10.new()
   local var17 = var10.new()
   local var18 = var9.new(10, var16, "TestFrame1", "C")
   local var19 = var9.new(20, var17, "TestFrame2", "C")
   {}[0] = var18
   {}[0] = var19
   local var20 = nil
   var20 = var11.new(var23.DebuggerPauseReason.Requested, 1, true)
   local var21 = var13.new(1)
   local var22 = var14.new()
   local var214 = var22
   var214 = arg1
   local var220 = var16
   local var25 = var214.new(var214, var22, var15.new(), var220.new())
   var21.MockSetThreadStateById(1, var8.new(1, var16, true))
   var21.MockSetThreadStateById(2, var8.new(2, var17, true))
   var21.MockSetCallstackByThreadId(1, {})
   var21.MockSetCallstackByThreadId(2, {})
   local var26 = var12.GetDefaultFrameVariables()
   var220 = var2
   var26.Locals:MockSetChildren({})
   var21.MockSetDebuggerVariablesByCallstackFrame(var18, var26)
   local var27 = var12.GetDefaultFrameVariables()
   var7 = var7
   local var251 = var2
   var27.Locals:MockSetChildren({})
   var21.MockSetDebuggerVariablesByCallstackFrame(var19, var27)
   var22.ConnectionStarted:Fire(var21)
   var21.Paused:Fire(var20, var20.Reason)
   local var29 = arg1:getState().Common
   local var269 = var5
   var269 = var29.debuggerConnectionIdToDST[var29.currentDebuggerConnectionId]
   local var31 = var269.ctor(var269, 1, 1)
   local var276 = var18("Expression 1")
   arg1:dispatch()
   local var281 = var19(var31, var85.fromData(var85))
   arg1:dispatch()
   local var283 = 0
   local var286 = 1
   local var288 = 3
   local var33 = 4
   local var290 = 5
   local var291 = 6
   local var292 = 7
   local var293 = 8
   local var294 = 9
   local var295 = 10
   local var36 = 11
   local var37 = 12
   local var38 = 14
   local var299 = ipairs({})
   local var304 = {}
   if var283 >= 6 then
      local var0 = false
   end
   local var307 = true
   var304.isEnabled = var307
   var307 = 2
   arg1:dispatch()
   local var39 = var283 + 1
   var286 = var31
   var33 = var144.fromData(var144)
   var20(123, var6.mockMetaBreakpoint(var304, var307)) = var147.fromData(var147)
   local var315 = var21(var286, "Alex", {})
   arg1:dispatch()
   var33 = var150.fromData(var150)
   local var321 = var21(var31, "Alex_Heesoo", {})
   arg1:dispatch()
   var33 = var153.fromData(var153)
   local var327 = var21(var31, "Alex_Austin", {})
   arg1:dispatch()
   var33 = var156.fromData(var156)
   local var333 = var21(var31, "UnitedStates", {})
   arg1:dispatch()
   var33 = var159.fromData(var159)
   local var44 = var21(var31, "UnitedStates_Wisconsin", {})
   arg1:dispatch()
   return arg1
end

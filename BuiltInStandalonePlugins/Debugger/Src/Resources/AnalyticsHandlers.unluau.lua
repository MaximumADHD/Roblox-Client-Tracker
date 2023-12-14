-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Resources.AnalyticsEventNames)
local var13 = settings():GetFVariable("DebuggerEventsThrottleHundredthPercent")
local var2 = tonumber()
return function(arg1)
   local function fun0(arg1)
      arg1.studioSid = arg1:GetSessionId()
      arg1.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", arg1, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", arg1)
   end
   
   local function fun1(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.RemoveMetaBreakpoint(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.RemoveAllMetaBreakpoints(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.EnableMetaBreakpoint(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.DisableMetaBreakpoint(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.EnableBreakpoint(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.DisableBreakpoint(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.EnableAllMetaBreakpoints(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.DisableAllMetaBreakpoints(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.MetaBreakpointConditionChanged(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.MetaBreakpointLogMessageChanged(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.MetaBreakpointContinueExecutionChanged(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.MetaBreakpointRemoveOnHitChanged(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.CallstackStepInto(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.CallstackStepOver(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.CallstackStepOut(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.CallstackChangeFrame(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.WatchAdded(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.actionSource = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.WatchScopeEdited(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.enabledScopes = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.BreakpointsColumnsEdited(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.enabledColumns = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.CallstackColumnsEdited(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.enabledColumns = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.VariablesColumnsEdited(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.enabledColumns = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   function var0.MyWatchesColumnsEdited(arg1, arg2)
      local var0 = {}
      var0.eventName = arg1
      var0.enabledColumns = arg2
      var0.studioSid = arg1:GetSessionId()
      var0.placeid = game.PlaceId
      arg1:ReportInfluxSeries("DebuggerUserEvent", var0, var2)
      arg1:SendEventDeferred("studio", "Debugger", "DebuggerUserEvent", var0)
   end
   
   return {}
end

PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetSessionId"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K1 ["studioSid"]
        6 GETIMPORT                        R2 K3 [game]
        8 GETTABLEKS                       R1 R2 K4 ["PlaceId"]
       10 SETTABLEKS                       R1 R0 K5 ["placeid"]
       12 GETUPVAL                         R1 0
       13 LOADK                            R3 K6 ["DebuggerUserEvent"]
       14 MOVE                             R4 R0
       15 GETUPVAL                         R5 1
       16 NAMECALL                         R1 R1 K7 ["ReportInfluxSeries"]
       18 CALL                             R1 4 0
       19 GETUPVAL                         R1 0
       20 LOADK                            R3 K8 ["studio"]
       21 LOADK                            R4 K9 ["Debugger"]
       22 LOADK                            R5 K6 ["DebuggerUserEvent"]
       23 MOVE                             R6 R0
       24 NAMECALL                         R1 R1 K10 ["SendEventDeferred"]
       26 CALL                             R1 5 0
       27 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"eventName", "actionSource"}]
        1 SETTABLEKS                       R0 R2 K0 ["eventName"]
        3 SETTABLEKS                       R1 R2 K1 ["actionSource"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K3 ["GetSessionId"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K4 ["studioSid"]
       11 GETIMPORT                        R4 K6 [game]
       13 GETTABLEKS                       R3 R4 K7 ["PlaceId"]
       15 SETTABLEKS                       R3 R2 K8 ["placeid"]
       17 GETUPVAL                         R3 0
       18 LOADK                            R5 K9 ["DebuggerUserEvent"]
       19 MOVE                             R6 R2
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R3 R3 K10 ["ReportInfluxSeries"]
       23 CALL                             R3 4 0
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K11 ["studio"]
       26 LOADK                            R6 K12 ["Debugger"]
       27 LOADK                            R7 K9 ["DebuggerUserEvent"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       31 CALL                             R3 5 0
       32 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"eventName", "enabledScopes"}]
        1 SETTABLEKS                       R0 R2 K0 ["eventName"]
        3 SETTABLEKS                       R1 R2 K1 ["enabledScopes"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K3 ["GetSessionId"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K4 ["studioSid"]
       11 GETIMPORT                        R4 K6 [game]
       13 GETTABLEKS                       R3 R4 K7 ["PlaceId"]
       15 SETTABLEKS                       R3 R2 K8 ["placeid"]
       17 GETUPVAL                         R3 0
       18 LOADK                            R5 K9 ["DebuggerUserEvent"]
       19 MOVE                             R6 R2
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R3 R3 K10 ["ReportInfluxSeries"]
       23 CALL                             R3 4 0
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K11 ["studio"]
       26 LOADK                            R6 K12 ["Debugger"]
       27 LOADK                            R7 K9 ["DebuggerUserEvent"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       31 CALL                             R3 5 0
       32 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K2 [{"eventName", "enabledColumns"}]
        1 SETTABLEKS                       R0 R2 K0 ["eventName"]
        3 SETTABLEKS                       R1 R2 K1 ["enabledColumns"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K3 ["GetSessionId"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K4 ["studioSid"]
       11 GETIMPORT                        R4 K6 [game]
       13 GETTABLEKS                       R3 R4 K7 ["PlaceId"]
       15 SETTABLEKS                       R3 R2 K8 ["placeid"]
       17 GETUPVAL                         R3 0
       18 LOADK                            R5 K9 ["DebuggerUserEvent"]
       19 MOVE                             R6 R2
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R3 R3 K10 ["ReportInfluxSeries"]
       23 CALL                             R3 4 0
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K11 ["studio"]
       26 LOADK                            R6 K12 ["Debugger"]
       27 LOADK                            R7 K9 ["DebuggerUserEvent"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       31 CALL                             R3 5 0
       32 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"eventName", "enabledColumns"}]
        1 SETTABLEKS                       R0 R2 K0 ["eventName"]
        3 SETTABLEKS                       R1 R2 K1 ["enabledColumns"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K3 ["GetSessionId"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K4 ["studioSid"]
       11 GETIMPORT                        R4 K6 [game]
       13 GETTABLEKS                       R3 R4 K7 ["PlaceId"]
       15 SETTABLEKS                       R3 R2 K8 ["placeid"]
       17 GETUPVAL                         R3 0
       18 LOADK                            R5 K9 ["DebuggerUserEvent"]
       19 MOVE                             R6 R2
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R3 R3 K10 ["ReportInfluxSeries"]
       23 CALL                             R3 4 0
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K11 ["studio"]
       26 LOADK                            R6 K12 ["Debugger"]
       27 LOADK                            R7 K9 ["DebuggerUserEvent"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       31 CALL                             R3 5 0
       32 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"eventName", "enabledColumns"}]
        1 SETTABLEKS                       R0 R2 K0 ["eventName"]
        3 SETTABLEKS                       R1 R2 K1 ["enabledColumns"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K3 ["GetSessionId"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K4 ["studioSid"]
       11 GETIMPORT                        R4 K6 [game]
       13 GETTABLEKS                       R3 R4 K7 ["PlaceId"]
       15 SETTABLEKS                       R3 R2 K8 ["placeid"]
       17 GETUPVAL                         R3 0
       18 LOADK                            R5 K9 ["DebuggerUserEvent"]
       19 MOVE                             R6 R2
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R3 R3 K10 ["ReportInfluxSeries"]
       23 CALL                             R3 4 0
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K11 ["studio"]
       26 LOADK                            R6 K12 ["Debugger"]
       27 LOADK                            R7 K9 ["DebuggerUserEvent"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       31 CALL                             R3 5 0
       32 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K2 [{"eventName", "enabledColumns"}]
        1 SETTABLEKS                       R0 R2 K0 ["eventName"]
        3 SETTABLEKS                       R1 R2 K1 ["enabledColumns"]
        5 GETUPVAL                         R3 0
        6 NAMECALL                         R3 R3 K3 ["GetSessionId"]
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R3 R2 K4 ["studioSid"]
       11 GETIMPORT                        R4 K6 [game]
       13 GETTABLEKS                       R3 R4 K7 ["PlaceId"]
       15 SETTABLEKS                       R3 R2 K8 ["placeid"]
       17 GETUPVAL                         R3 0
       18 LOADK                            R5 K9 ["DebuggerUserEvent"]
       19 MOVE                             R6 R2
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R3 R3 K10 ["ReportInfluxSeries"]
       23 CALL                             R3 4 0
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K11 ["studio"]
       26 LOADK                            R6 K12 ["Debugger"]
       27 LOADK                            R7 K9 ["DebuggerUserEvent"]
       28 MOVE                             R8 R2
       29 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       31 CALL                             R3 5 0
       32 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NEWTABLE                         R3 32 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K0 ["RemoveMetaBreakpoint"]
       11 SETTABLE                         R2 R3 R4
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K1 ["RemoveAllMetaBreakpoints"]
       15 SETTABLE                         R2 R3 R4
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K2 ["EnableMetaBreakpoint"]
       19 SETTABLE                         R2 R3 R4
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K3 ["DisableMetaBreakpoint"]
       23 SETTABLE                         R2 R3 R4
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K4 ["EnableBreakpoint"]
       27 SETTABLE                         R2 R3 R4
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K5 ["DisableBreakpoint"]
       31 SETTABLE                         R2 R3 R4
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R4 R5 K6 ["EnableAllMetaBreakpoints"]
       35 SETTABLE                         R2 R3 R4
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R4 R5 K7 ["DisableAllMetaBreakpoints"]
       39 SETTABLE                         R2 R3 R4
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K8 ["MetaBreakpointConditionChanged"]
       43 SETTABLE                         R2 R3 R4
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K9 ["MetaBreakpointLogMessageChanged"]
       47 SETTABLE                         R2 R3 R4
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R4 R5 K10 ["MetaBreakpointContinueExecutionChanged"]
       51 SETTABLE                         R2 R3 R4
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R4 R5 K11 ["MetaBreakpointRemoveOnHitChanged"]
       55 SETTABLE                         R2 R3 R4
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R4 R5 K12 ["CallstackStepInto"]
       59 SETTABLE                         R2 R3 R4
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R4 R5 K13 ["CallstackStepOver"]
       63 SETTABLE                         R2 R3 R4
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R4 R5 K14 ["CallstackStepOut"]
       67 SETTABLE                         R2 R3 R4
       68 GETUPVAL                         R5 1
       69 GETTABLEKS                       R4 R5 K15 ["CallstackChangeFrame"]
       71 SETTABLE                         R2 R3 R4
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R4 R5 K16 ["WatchAdded"]
       75 SETTABLE                         R2 R3 R4
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R4 R5 K17 ["WatchScopeEdited"]
       79 NEWCLOSURE                       R5 P2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U0
       82 SETTABLE                         R5 R3 R4
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R4 R5 K18 ["BreakpointsColumnsEdited"]
       86 NEWCLOSURE                       R5 P3
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U0
       89 SETTABLE                         R5 R3 R4
       90 GETUPVAL                         R5 1
       91 GETTABLEKS                       R4 R5 K19 ["CallstackColumnsEdited"]
       93 NEWCLOSURE                       R5 P4
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U0
       96 SETTABLE                         R5 R3 R4
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R4 R5 K20 ["VariablesColumnsEdited"]
      100 NEWCLOSURE                       R5 P5
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U0
      103 SETTABLE                         R5 R3 R4
      104 GETUPVAL                         R5 1
      105 GETTABLEKS                       R4 R5 K21 ["MyWatchesColumnsEdited"]
      107 NEWCLOSURE                       R5 P6
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U0
      110 SETTABLE                         R5 R3 R4
      111 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Resources"]
       15 GETTABLEKS                       R2 R3 K7 ["AnalyticsEventNames"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R3 K9 [settings]
       20 CALL                             R3 0 1
       21 LOADK                            R5 K10 ["DebuggerEventsThrottleHundredthPercent"]
       22 NAMECALL                         R3 R3 K11 ["GetFVariable"]
       24 CALL                             R3 2 -1
       25 FASTCALL                         TONUMBER ; [+2]
       26 GETIMPORT                        R2 K13 [tonumber]
       28 CALL                             R2 -1 1
       29 DUPCLOSURE                       R3 K14 [PROTO_7]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 RETURN                           R3 1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["mock"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETIMPORT                        R0 K2 [print]
        9 LOADK                            R1 K3 ["countContextCreated"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["logCounter"]
       15 GETUPVAL                         R1 3
       16 NEWTABLE                         R2 0 0
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["mock"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R1 K2 [print]
        9 LOADK                            R3 K3 ["countActionCreated: %*"]
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["logCounter"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K7 [{"input_action_type"}]
       22 GETTABLEKS                       R4 R0 K8 ["Name"]
       24 SETTABLEKS                       R4 R3 K6 ["input_action_type"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["mock"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R1 K2 [print]
        9 LOADK                            R3 K3 ["countInputActionTypeSelected: %*"]
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["logCounter"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K7 [{"input_action_type"}]
       22 GETTABLEKS                       R4 R0 K8 ["Name"]
       24 SETTABLEKS                       R4 R3 K6 ["input_action_type"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["mock"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R1 K2 [print]
        9 LOADK                            R3 K3 ["countBindingSet: %*"]
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["logCounter"]
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K7 [{"schema"}]
       22 SETTABLEKS                       R0 R3 K6 ["schema"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["mock"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETIMPORT                        R0 K2 [print]
        9 LOADK                            R1 K3 ["countPluginOpened"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["logCounter"]
       15 GETUPVAL                         R1 3
       16 NEWTABLE                         R2 0 0
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 CALL                             R6 0 1
        6 JUMPIF                           R6 ; [+4]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K0 ["mock"]
       10 JUMPIFNOT                        R6 ; [+15]
       11 GETIMPORT                        R6 K2 [print]
       13 LOADK                            R8 K3 ["statSchemaSupportChanged: %* %*"]
       14 MOVE                             R10 R4
       15 FASTCALL1                        TOSTRING R5 ; [+3]
       16 MOVE                             R12 R5
       17 GETIMPORT                        R11 K5 [tostring]
       19 CALL                             R11 1 1
       20 NAMECALL                         R8 R8 K6 ["format"]
       22 CALL                             R8 3 1
       23 MOVE                             R7 R8
       24 CALL                             R6 1 0
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K7 ["logStat"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K9 [{"schema"}]
       31 SETTABLEKS                       R4 R8 K8 ["schema"]
       33 MOVE                             R9 R5
       34 CALL                             R6 3 0
       35 FORGLOOP                         R1 2 ; [-32]
       37 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 CALL                             R6 0 1
        6 JUMPIF                           R6 ; [+4]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K0 ["mock"]
       10 JUMPIFNOT                        R6 ; [+15]
       11 GETIMPORT                        R6 K2 [print]
       13 LOADK                            R8 K3 ["statSchemaSupport: %* %*"]
       14 MOVE                             R10 R4
       15 FASTCALL1                        TOSTRING R5 ; [+3]
       16 MOVE                             R12 R5
       17 GETIMPORT                        R11 K5 [tostring]
       19 CALL                             R11 1 1
       20 NAMECALL                         R8 R8 K6 ["format"]
       22 CALL                             R8 3 1
       23 MOVE                             R7 R8
       24 CALL                             R6 1 0
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K7 ["logStat"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K9 [{"schema"}]
       31 SETTABLEKS                       R4 R8 K8 ["schema"]
       33 MOVE                             R9 R5
       34 CALL                             R6 3 0
       35 FORGLOOP                         R1 2 ; [-32]
       37 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K7 [{"countContextCreated", "countActionCreated", "countInputActionTypeSelected", "countBindingSet", "countPluginOpened", "statSchemaSupportChanged", "statSchemaSupport"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["countContextCreated"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["countActionCreated"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["countInputActionTypeSelected"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["countBindingSet"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["countPluginOpened"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["statSchemaSupportChanged"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["statSchemaSupport"]
       22 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AnalyticsContext"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 2
       17 GETTABLEKS                       R5 R1 K3 ["logCounter"]
       19 GETTABLEKS                       R6 R0 K4 ["mock"]
       21 SETLIST                          R4 R5 2 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U4
       32 NEWTABLE                         R5 0 2
       34 GETTABLEKS                       R6 R1 K3 ["logCounter"]
       36 GETTABLEKS                       R7 R0 K4 ["mock"]
       38 SETLIST                          R5 R6 2 [1]
       40 CALL                             R3 2 1
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       44 NEWCLOSURE                       R5 P2
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U5
       49 NEWTABLE                         R6 0 2
       51 GETTABLEKS                       R7 R1 K3 ["logCounter"]
       53 GETTABLEKS                       R8 R0 K4 ["mock"]
       55 SETLIST                          R6 R7 2 [1]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       61 NEWCLOSURE                       R6 P3
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U6
       66 NEWTABLE                         R7 0 2
       68 GETTABLEKS                       R8 R1 K3 ["logCounter"]
       70 GETTABLEKS                       R9 R0 K4 ["mock"]
       72 SETLIST                          R7 R8 2 [1]
       74 CALL                             R5 2 1
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       78 NEWCLOSURE                       R7 P4
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U7
       83 NEWTABLE                         R8 0 2
       85 GETTABLEKS                       R9 R1 K3 ["logCounter"]
       87 GETTABLEKS                       R10 R0 K4 ["mock"]
       89 SETLIST                          R8 R9 2 [1]
       91 CALL                             R6 2 1
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       95 NEWCLOSURE                       R8 P5
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R1
       99 CAPTURE                          UPVAL U8
      100 NEWTABLE                         R9 0 2
      102 GETTABLEKS                       R10 R1 K5 ["logStat"]
      104 GETTABLEKS                       R11 R0 K4 ["mock"]
      106 SETLIST                          R9 R10 2 [1]
      108 CALL                             R7 2 1
      109 GETUPVAL                         R8 0
      110 GETTABLEKS                       R8 R8 K2 ["useCallback"]
      112 NEWCLOSURE                       R9 P6
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 CAPTURE                          UPVAL U9
      117 NEWTABLE                         R10 0 2
      119 GETTABLEKS                       R11 R1 K5 ["logStat"]
      121 GETTABLEKS                       R12 R0 K4 ["mock"]
      123 SETLIST                          R10 R11 2 [1]
      125 CALL                             R8 2 1
      126 GETUPVAL                         R9 0
      127 GETTABLEKS                       R9 R9 K6 ["useMemo"]
      129 NEWCLOSURE                       R10 P7
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R8
      137 NEWTABLE                         R11 0 7
      139 MOVE                             R12 R3
      140 MOVE                             R13 R5
      141 MOVE                             R14 R2
      142 MOVE                             R15 R4
      143 MOVE                             R16 R6
      144 MOVE                             R17 R8
      145 MOVE                             R18 R7
      146 SETLIST                          R11 R12 7 [1]
      148 CALL                             R9 2 1
      149 GETUPVAL                         R10 0
      150 GETTABLEKS                       R10 R10 K7 ["createElement"]
      152 GETUPVAL                         R11 10
      153 GETTABLEKS                       R11 R11 K8 ["Provider"]
      155 DUPTABLE                         R12 K10 [{"value"}]
      156 SETTABLEKS                       R9 R12 K9 ["value"]
      158 GETTABLEKS                       R13 R0 K11 ["children"]
      160 CALL                             R10 3 -1
      161 RETURN                           R10 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["mock"] = True}]
        5 GETTABLEKS                       R4 R0 K4 ["children"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Flags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFFlagIAMTelemetryDebug"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K14 ["createContext"]
       46 DUPTABLE                         R7 K22 [{"countContextCreated", "countActionCreated", "countInputActionTypeSelected", "countBindingSet", "countPluginOpened", "statSchemaSupport", "statSchemaSupportChanged"}]
       47 GETTABLEKS                       R8 R3 K23 ["createUnimplemented"]
       49 LOADK                            R9 K15 ["countContextCreated"]
       50 CALL                             R8 1 1
       51 SETTABLEKS                       R8 R7 K15 ["countContextCreated"]
       53 GETTABLEKS                       R8 R3 K23 ["createUnimplemented"]
       55 LOADK                            R9 K16 ["countActionCreated"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K16 ["countActionCreated"]
       59 GETTABLEKS                       R8 R3 K23 ["createUnimplemented"]
       61 LOADK                            R9 K17 ["countInputActionTypeSelected"]
       62 CALL                             R8 1 1
       63 SETTABLEKS                       R8 R7 K17 ["countInputActionTypeSelected"]
       65 GETTABLEKS                       R8 R3 K23 ["createUnimplemented"]
       67 LOADK                            R9 K18 ["countBindingSet"]
       68 CALL                             R8 1 1
       69 SETTABLEKS                       R8 R7 K18 ["countBindingSet"]
       71 GETTABLEKS                       R8 R3 K23 ["createUnimplemented"]
       73 LOADK                            R9 K19 ["countPluginOpened"]
       74 CALL                             R8 1 1
       75 SETTABLEKS                       R8 R7 K19 ["countPluginOpened"]
       77 GETTABLEKS                       R8 R3 K23 ["createUnimplemented"]
       79 LOADK                            R9 K20 ["statSchemaSupport"]
       80 CALL                             R8 1 1
       81 SETTABLEKS                       R8 R7 K20 ["statSchemaSupport"]
       83 GETTABLEKS                       R8 R3 K23 ["createUnimplemented"]
       85 LOADK                            R9 K21 ["statSchemaSupportChanged"]
       86 CALL                             R8 1 1
       87 SETTABLEKS                       R8 R7 K21 ["statSchemaSupportChanged"]
       89 CALL                             R6 1 1
       90 DUPTABLE                         R7 K35 [{["eventName"] = "IAM_ContextCreated", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-06-24", ["links"] = "https://grafana.rbx.com/d/sk6tzmf/input-action-manager", ["description"] = "Counts when a context has been created."}]
       91 NEWTABLE                         R8 0 1
       93 LOADK                            R9 K36 ["RobloxTelemetryCounter"]
       94 SETLIST                          R8 R9 1 [1]
       96 SETTABLEKS                       R8 R7 K26 ["backends"]
       98 DUPTABLE                         R8 K39 [{["eventName"] = "IAM_ActionCreated", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-06-24", ["links"] = "https://grafana.rbx.com/d/sk6tzmf/input-action-manager", ["description"] = "Counts when an action has been created."}]
       99 NEWTABLE                         R9 0 1
      101 LOADK                            R10 K36 ["RobloxTelemetryCounter"]
      102 SETLIST                          R9 R10 1 [1]
      104 SETTABLEKS                       R9 R8 K26 ["backends"]
      106 DUPTABLE                         R9 K42 [{["eventName"] = "IAM_InputActionTypeSelected", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-06-24", ["links"] = "https://grafana.rbx.com/d/sk6tzmf/input-action-manager", ["description"] = "Counts when an input action type has been selected."}]
      107 NEWTABLE                         R10 0 1
      109 LOADK                            R11 K36 ["RobloxTelemetryCounter"]
      110 SETLIST                          R10 R11 1 [1]
      112 SETTABLEKS                       R10 R9 K26 ["backends"]
      114 DUPTABLE                         R10 K45 [{["eventName"] = "IAM_BindingSet", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-06-24", ["links"] = "https://grafana.rbx.com/d/sk6tzmf/input-action-manager", ["description"] = "Counts when a binding has been set for a schema."}]
      115 NEWTABLE                         R11 0 1
      117 LOADK                            R12 K36 ["RobloxTelemetryCounter"]
      118 SETLIST                          R11 R12 1 [1]
      120 SETTABLEKS                       R11 R10 K26 ["backends"]
      122 DUPTABLE                         R11 K48 [{["eventName"] = "IAM_PluginOpened", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-06-24", ["links"] = "https://grafana.rbx.com/d/sk6tzmf/input-action-manager", ["description"] = "Counts when the plugin has been opened."}]
      123 NEWTABLE                         R12 0 1
      125 LOADK                            R13 K36 ["RobloxTelemetryCounter"]
      126 SETLIST                          R12 R13 1 [1]
      128 SETTABLEKS                       R12 R11 K26 ["backends"]
      130 DUPTABLE                         R12 K51 [{["eventName"] = "IAM_SchemaSupportChanged", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-06-24", ["links"] = "https://grafana.rbx.com/d/sk6tzmf/input-action-manager", ["description"] = "Counts when the support for a schema has been changed."}]
      131 NEWTABLE                         R13 0 1
      133 LOADK                            R14 K52 ["RobloxTelemetryStat"]
      134 SETLIST                          R13 R14 1 [1]
      136 SETTABLEKS                       R13 R12 K26 ["backends"]
      138 DUPTABLE                         R13 K54 [{["eventName"] = "IAM_SchemaSupport", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-06-24", ["links"] = "https://grafana.rbx.com/d/sk6tzmf/input-action-manager", ["description"] = "Counts when the support for a schema has been changed."}]
      139 NEWTABLE                         R14 0 1
      141 LOADK                            R15 K52 ["RobloxTelemetryStat"]
      142 SETLIST                          R14 R15 1 [1]
      144 SETTABLEKS                       R14 R13 K26 ["backends"]
      146 DUPCLOSURE                       R14 K55 [PROTO_8]
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R6
      158 DUPCLOSURE                       R15 K56 [PROTO_9]
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R14
      161 DUPTABLE                         R16 K60 [{"Context", "MockProvider", "Provider"}]
      162 SETTABLEKS                       R6 R16 K57 ["Context"]
      164 SETTABLEKS                       R15 R16 K58 ["MockProvider"]
      166 SETTABLEKS                       R14 R16 K59 ["Provider"]
      168 RETURN                           R16 1

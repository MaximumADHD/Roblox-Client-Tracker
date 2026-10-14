PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantStandaloneDataModel"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["EngineFeatureAssistantBridgeStandalone"]
        7 JUMPIFEQKB                       R0 TRUE ; [+3]
        9 LOADB                            R0 0
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["get"]
       14 CALL                             R0 0 1
       15 GETTABLEKS                       R0 R0 K3 ["hasInternalPermission"]
       17 CALL                             R0 0 -1
       18 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFocusedDataModelType"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantAdvertiseStandaloneDataModel"]
        7 JUMPIF                           R1 ; [+17]
        8 LOADK                            R1 K2 [""]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["getStudioPlayState"]
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADK                            R1 K4 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       15 JUMP                             ; [+1]
       16 LOADK                            R1 K5 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       17 LOADK                            R2 K6 ["%*- Focused DataModel in the viewport: %*"]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R0
       20 NAMECALL                         R2 R2 K7 ["format"]
       22 CALL                             R2 3 1
       23 MOVE                             R1 R2
       24 RETURN                           R1 1
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K3 ["getStudioPlayState"]
       28 CALL                             R1 0 1
       29 JUMPIFNOT                        R1 ; [+15]
       30 NEWTABLE                         R2 0 2
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K8 ["Types"]
       35 GETTABLEKS                       R3 R3 K9 ["Client"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K8 ["Types"]
       40 GETTABLEKS                       R4 R4 K10 ["Server"]
       42 SETLIST                          R2 R3 2 [1]
       44 JUMP                             ; [+9]
       45 NEWTABLE                         R2 0 1
       47 GETUPVAL                         R3 2
       48 GETTABLEKS                       R3 R3 K8 ["Types"]
       50 GETTABLEKS                       R3 R3 K11 ["Edit"]
       52 SETLIST                          R2 R3 1 [1]
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K12 ["FFlagAssistantStandaloneDataModel"]
       57 JUMPIFNOT                        R4 ; [+5]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R4 R4 K13 ["EngineFeatureAssistantBridgeStandalone"]
       61 JUMPIFEQKB                       R4 TRUE ; [+3]
       63 LOADB                            R3 0
       64 JUMP                             ; [+7]
       65 GETUPVAL                         R3 3
       66 GETTABLEKS                       R3 R3 K14 ["get"]
       68 CALL                             R3 0 1
       69 GETTABLEKS                       R3 R3 K15 ["hasInternalPermission"]
       71 CALL                             R3 0 1
       72 JUMPIFNOT                        R3 ; [+11]
       73 GETUPVAL                         R5 2
       74 GETTABLEKS                       R5 R5 K8 ["Types"]
       76 GETTABLEKS                       R5 R5 K16 ["Standalone"]
       78 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       80 MOVE                             R4 R2
       81 GETIMPORT                        R3 K19 [table.insert]
       83 CALL                             R3 2 0
       84 LOADK                            R7 K20 ["- Current Studio Mode: %*\n"]
       85 JUMPIFNOT                        R1 ; [+2]
       86 LOADK                            R9 K21 ["Play"]
       87 JUMP                             ; [+1]
       88 LOADK                            R9 K11 ["Edit"]
       89 NAMECALL                         R7 R7 K7 ["format"]
       91 CALL                             R7 2 1
       92 MOVE                             R4 R7
       93 LOADK                            R7 K22 ["- Available DataModels: %*\n"]
       94 GETIMPORT                        R9 K24 [table.concat]
       96 MOVE                             R10 R2
       97 LOADK                            R11 K25 [", "]
       98 CALL                             R9 2 1
       99 NAMECALL                         R7 R7 K7 ["format"]
      101 CALL                             R7 2 1
      102 MOVE                             R5 R7
      103 LOADK                            R6 K26 ["- Focused DataModel in the viewport: %*"]
      104 MOVE                             R8 R0
      105 NAMECALL                         R6 R6 K7 ["format"]
      107 CALL                             R6 2 1
      108 CONCAT                           R3 R4 R6
      109 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["tools"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+7]
        7 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R3
       11 GETIMPORT                        R4 K3 [table.insert]
       13 CALL                             R4 2 0
       14 GETUPVAL                         R4 1
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R4
       21 GETIMPORT                        R5 K3 [table.insert]
       23 CALL                             R5 2 0
       24 GETUPVAL                         R7 2
       25 CALL                             R7 0 1
       26 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       28 MOVE                             R6 R1
       29 GETIMPORT                        R5 K3 [table.insert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 3
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+7]
       35 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       37 MOVE                             R7 R1
       38 MOVE                             R8 R5
       39 GETIMPORT                        R6 K3 [table.insert]
       41 CALL                             R6 2 0
       42 GETUPVAL                         R6 4
       43 MOVE                             R7 R2
       44 CALL                             R6 1 3
       45 FORGPREP                         R6
       46 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
       48 MOVE                             R12 R1
       49 MOVE                             R13 R10
       50 GETIMPORT                        R11 K3 [table.insert]
       52 CALL                             R11 2 0
       53 FORGLOOP                         R6 2 ; [-8]
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R6 R6 K4 ["FFlagDebugLogAssistantUI"]
       58 JUMPIFNOT                        R6 ; [+5]
       59 GETIMPORT                        R6 K6 [print]
       61 LOADK                            R7 K7 ["[StudioLLMSystemReminder] Collected system reminders"]
       62 MOVE                             R8 R1
       63 CALL                             R6 2 0
       64 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 5
       11 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U7
       20 NEWTABLE                         R7 0 5
       22 MOVE                             R8 R0
       23 MOVE                             R9 R1
       24 MOVE                             R10 R3
       25 MOVE                             R11 R2
       26 MOVE                             R12 R4
       27 SETLIST                          R7 R8 5 [1]
       29 CALL                             R5 2 -1
       30 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["StudioState"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Flags"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Utils"]
       39 GETTABLEKS                       R5 R5 K14 ["DataModelType"]
       41 GETTABLEKS                       R6 R1 K15 ["Guest"]
       43 GETTABLEKS                       R6 R6 K16 ["Environment"]
       45 GETTABLEKS                       R7 R1 K17 ["Components"]
       47 GETTABLEKS                       R7 R7 K18 ["Hooks"]
       49 GETTABLEKS                       R7 R7 K19 ["useAssistantMode"]
       51 GETTABLEKS                       R8 R1 K17 ["Components"]
       53 GETTABLEKS                       R8 R8 K18 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K20 ["SystemReminders"]
       57 GETTABLEKS                       R8 R8 K21 ["usePersistentPlanSystemReminder"]
       59 GETTABLEKS                       R9 R1 K17 ["Components"]
       61 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       63 GETTABLEKS                       R9 R9 K20 ["SystemReminders"]
       65 GETTABLEKS                       R9 R9 K22 ["usePlanModeSystemReminder"]
       67 GETTABLEKS                       R10 R1 K17 ["Components"]
       69 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       71 GETTABLEKS                       R10 R10 K20 ["SystemReminders"]
       73 GETTABLEKS                       R10 R10 K23 ["useSystemSkillsStateSystemReminder"]
       75 GETTABLEKS                       R11 R1 K17 ["Components"]
       77 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       79 GETTABLEKS                       R11 R11 K20 ["SystemReminders"]
       81 GETTABLEKS                       R11 R11 K24 ["useToolsChangedSystemReminders"]
       83 DUPCLOSURE                       R12 K25 [PROTO_0]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 DUPCLOSURE                       R13 K26 [PROTO_1]
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R6
       91 DUPCLOSURE                       R14 K27 [PROTO_3]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R4
      100 DUPTABLE                         R15 K30 [{"useGetSystemReminders", "getStudioStateString"}]
      101 SETTABLEKS                       R14 R15 K28 ["useGetSystemReminders"]
      103 SETTABLEKS                       R13 R15 K29 ["getStudioStateString"]
      105 RETURN                           R15 1

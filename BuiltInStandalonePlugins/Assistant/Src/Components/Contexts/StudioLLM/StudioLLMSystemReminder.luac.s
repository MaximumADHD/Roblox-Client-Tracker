PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFocusedDataModelType"]
        3 CALL                             R0 0 1
        4 LOADK                            R1 K1 [""]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["getStudioPlayState"]
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADK                            R1 K3 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       11 JUMP                             ; [+1]
       12 LOADK                            R1 K4 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       13 LOADK                            R2 K5 ["%*- Focused DataModel in the viewport: %*"]
       14 MOVE                             R4 R1
       15 MOVE                             R5 R0
       16 NAMECALL                         R2 R2 K6 ["format"]
       18 CALL                             R2 3 1
       19 MOVE                             R1 R2
       20 RETURN                           R1 1

PROTO_1:
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
       16 JUMPIFNOT                        R4 ; [+61]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["getExperimentFeatureEnabled"]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K5 ["FeatureNames"]
       23 GETTABLEKS                       R5 R5 K6 ["StudioStateSystemReminder"]
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+51]
       27 GETUPVAL                         R4 3
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+28]
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K7 ["getFocusedDataModelType"]
       33 CALL                             R7 0 1
       34 LOADK                            R8 K8 [""]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R9 R9 K9 ["getStudioPlayState"]
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+2]
       40 LOADK                            R8 K10 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       41 JUMP                             ; [+1]
       42 LOADK                            R8 K11 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       43 LOADK                            R9 K12 ["%*- Focused DataModel in the viewport: %*"]
       44 MOVE                             R11 R8
       45 MOVE                             R12 R7
       46 NAMECALL                         R9 R9 K13 ["format"]
       48 CALL                             R9 3 1
       49 MOVE                             R8 R9
       50 MOVE                             R6 R8
       51 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       53 MOVE                             R5 R1
       54 GETIMPORT                        R4 K3 [table.insert]
       56 CALL                             R4 2 0
       57 JUMP                             ; [+20]
       58 GETUPVAL                         R4 4
       59 GETTABLEKS                       R4 R4 K9 ["getStudioPlayState"]
       61 CALL                             R4 0 1
       62 JUMPIFNOT                        R4 ; [+8]
       63 FASTCALL2K                       TABLE_INSERT R1 K10 ; [+5]
       65 MOVE                             R5 R1
       66 LOADK                            R6 K10 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       67 GETIMPORT                        R4 K3 [table.insert]
       69 CALL                             R4 2 0
       70 JUMP                             ; [+7]
       71 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       73 MOVE                             R5 R1
       74 LOADK                            R6 K11 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       75 GETIMPORT                        R4 K3 [table.insert]
       77 CALL                             R4 2 0
       78 GETUPVAL                         R4 5
       79 CALL                             R4 0 1
       80 JUMPIFNOT                        R4 ; [+7]
       81 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       83 MOVE                             R6 R1
       84 MOVE                             R7 R4
       85 GETIMPORT                        R5 K3 [table.insert]
       87 CALL                             R5 2 0
       88 GETUPVAL                         R5 6
       89 MOVE                             R6 R2
       90 CALL                             R5 1 3
       91 FORGPREP                         R5
       92 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       94 MOVE                             R11 R1
       95 MOVE                             R12 R9
       96 GETIMPORT                        R10 K3 [table.insert]
       98 CALL                             R10 2 0
       99 FORGLOOP                         R5 2 ; [-8]
      101 GETUPVAL                         R5 7
      102 CALL                             R5 0 1
      103 JUMPIFNOT                        R5 ; [+5]
      104 GETIMPORT                        R5 K15 [print]
      106 LOADK                            R6 K16 ["[StudioLLMSystemReminder] Collected system reminders"]
      107 MOVE                             R7 R1
      108 CALL                             R5 2 0
      109 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U9
       20 NEWTABLE                         R6 0 4
       22 MOVE                             R7 R0
       23 MOVE                             R8 R1
       24 MOVE                             R9 R3
       25 MOVE                             R10 R2
       26 SETLIST                          R6 R7 4 [1]
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["ExperimentFeature"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["StudioState"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K13 ["Flags"]
       41 GETTABLEKS                       R5 R5 K14 ["Shared"]
       43 GETTABLEKS                       R5 R5 K15 ["FFlagDebugLogAssistantUI"]
       45 GETTABLEKS                       R6 R1 K13 ["Flags"]
       47 GETTABLEKS                       R6 R6 K14 ["Shared"]
       49 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantStudioStateSystemReminder"]
       51 GETTABLEKS                       R7 R1 K17 ["Components"]
       53 GETTABLEKS                       R7 R7 K18 ["Hooks"]
       55 GETTABLEKS                       R7 R7 K19 ["useAssistantMode"]
       57 GETTABLEKS                       R8 R1 K17 ["Components"]
       59 GETTABLEKS                       R8 R8 K18 ["Hooks"]
       61 GETTABLEKS                       R8 R8 K20 ["SystemReminders"]
       63 GETTABLEKS                       R8 R8 K21 ["usePersistentPlanSystemReminder"]
       65 GETTABLEKS                       R9 R1 K17 ["Components"]
       67 GETTABLEKS                       R9 R9 K18 ["Hooks"]
       69 GETTABLEKS                       R9 R9 K20 ["SystemReminders"]
       71 GETTABLEKS                       R9 R9 K22 ["usePlanModeSystemReminder"]
       73 GETTABLEKS                       R10 R1 K17 ["Components"]
       75 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       77 GETTABLEKS                       R10 R10 K20 ["SystemReminders"]
       79 GETTABLEKS                       R10 R10 K23 ["useToolsChangedSystemReminders"]
       81 GETTABLEKS                       R11 R1 K13 ["Flags"]
       83 GETTABLEKS                       R11 R11 K14 ["Shared"]
       85 GETTABLEKS                       R11 R11 K24 ["FFlagAssistantGetStudioState"]
       87 DUPCLOSURE                       R12 K25 [PROTO_0]
       88 CAPTURE                          VAL R4
       89 DUPCLOSURE                       R13 K26 [PROTO_2]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 DUPTABLE                         R14 K29 [{"useGetSystemReminders", "getStudioStateString"}]
      101 SETTABLEKS                       R13 R14 K27 ["useGetSystemReminders"]
      103 SETTABLEKS                       R12 R14 K28 ["getStudioStateString"]
      105 RETURN                           R14 1

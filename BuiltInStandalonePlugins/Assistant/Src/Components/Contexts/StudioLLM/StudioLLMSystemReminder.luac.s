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
       15 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantStudioStateSystemReminder"]
       17 JUMPIFNOT                        R4 ; [+62]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["getExperimentFeatureEnabled"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K6 ["FeatureNames"]
       24 GETTABLEKS                       R5 R5 K7 ["StudioStateSystemReminder"]
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R4 ; [+52]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantGetStudioState"]
       31 JUMPIFNOT                        R4 ; [+28]
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K9 ["getFocusedDataModelType"]
       35 CALL                             R7 0 1
       36 LOADK                            R8 K10 [""]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K11 ["getStudioPlayState"]
       40 CALL                             R9 0 1
       41 JUMPIFNOT                        R9 ; [+2]
       42 LOADK                            R8 K12 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       43 JUMP                             ; [+1]
       44 LOADK                            R8 K13 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       45 LOADK                            R9 K14 ["%*- Focused DataModel in the viewport: %*"]
       46 MOVE                             R11 R8
       47 MOVE                             R12 R7
       48 NAMECALL                         R9 R9 K15 ["format"]
       50 CALL                             R9 3 1
       51 MOVE                             R8 R9
       52 MOVE                             R6 R8
       53 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       55 MOVE                             R5 R1
       56 GETIMPORT                        R4 K3 [table.insert]
       58 CALL                             R4 2 0
       59 JUMP                             ; [+20]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K11 ["getStudioPlayState"]
       63 CALL                             R4 0 1
       64 JUMPIFNOT                        R4 ; [+8]
       65 FASTCALL2K                       TABLE_INSERT R1 K12 ; [+5]
       67 MOVE                             R5 R1
       68 LOADK                            R6 K12 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       69 GETIMPORT                        R4 K3 [table.insert]
       71 CALL                             R4 2 0
       72 JUMP                             ; [+7]
       73 FASTCALL2K                       TABLE_INSERT R1 K13 ; [+5]
       75 MOVE                             R5 R1
       76 LOADK                            R6 K13 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       77 GETIMPORT                        R4 K3 [table.insert]
       79 CALL                             R4 2 0
       80 GETUPVAL                         R4 4
       81 CALL                             R4 0 1
       82 JUMPIFNOT                        R4 ; [+7]
       83 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       85 MOVE                             R6 R1
       86 MOVE                             R7 R4
       87 GETIMPORT                        R5 K3 [table.insert]
       89 CALL                             R5 2 0
       90 GETUPVAL                         R5 5
       91 MOVE                             R6 R2
       92 CALL                             R5 1 3
       93 FORGPREP                         R5
       94 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       96 MOVE                             R11 R1
       97 MOVE                             R12 R9
       98 GETIMPORT                        R10 K3 [table.insert]
      100 CALL                             R10 2 0
      101 FORGLOOP                         R5 2 ; [-8]
      103 GETUPVAL                         R5 1
      104 GETTABLEKS                       R5 R5 K16 ["FFlagDebugLogAssistantUI"]
      106 JUMPIFNOT                        R5 ; [+5]
      107 GETIMPORT                        R5 K18 [print]
      109 LOADK                            R6 K19 ["[StudioLLMSystemReminder] Collected system reminders"]
      110 MOVE                             R7 R1
      111 CALL                             R5 2 0
      112 RETURN                           R1 1

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
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R6 0 4
       20 MOVE                             R7 R0
       21 MOVE                             R8 R1
       22 MOVE                             R9 R3
       23 MOVE                             R10 R2
       24 SETLIST                          R6 R7 4 [1]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1

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
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Flags"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K14 ["Components"]
       48 GETTABLEKS                       R6 R6 K15 ["Hooks"]
       50 GETTABLEKS                       R6 R6 K16 ["useAssistantMode"]
       52 GETTABLEKS                       R7 R1 K14 ["Components"]
       54 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       56 GETTABLEKS                       R7 R7 K17 ["SystemReminders"]
       58 GETTABLEKS                       R7 R7 K18 ["usePersistentPlanSystemReminder"]
       60 GETTABLEKS                       R8 R1 K14 ["Components"]
       62 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       64 GETTABLEKS                       R8 R8 K17 ["SystemReminders"]
       66 GETTABLEKS                       R8 R8 K19 ["usePlanModeSystemReminder"]
       68 GETTABLEKS                       R9 R1 K14 ["Components"]
       70 GETTABLEKS                       R9 R9 K15 ["Hooks"]
       72 GETTABLEKS                       R9 R9 K17 ["SystemReminders"]
       74 GETTABLEKS                       R9 R9 K20 ["useToolsChangedSystemReminders"]
       76 DUPCLOSURE                       R10 K21 [PROTO_0]
       77 CAPTURE                          VAL R4
       78 DUPCLOSURE                       R11 K22 [PROTO_2]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R4
       87 DUPTABLE                         R12 K25 [{"useGetSystemReminders", "getStudioStateString"}]
       88 SETTABLEKS                       R11 R12 K23 ["useGetSystemReminders"]
       90 SETTABLEKS                       R10 R12 K24 ["getStudioStateString"]
       92 RETURN                           R12 1

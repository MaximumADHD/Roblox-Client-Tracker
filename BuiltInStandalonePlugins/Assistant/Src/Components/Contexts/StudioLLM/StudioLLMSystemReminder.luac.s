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
        6 JUMPIFNOT                        R3 ; [+17]
        7 GETUPVAL                         R4 1
        8 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       10 LOADK                            R5 K1 ["getPersistentPlanSystemReminder is not defined"]
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 1
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       19 MOVE                             R5 R1
       20 MOVE                             R6 R3
       21 GETIMPORT                        R4 K6 [table.insert]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+61]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["getExperimentFeatureEnabled"]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K8 ["FeatureNames"]
       33 GETTABLEKS                       R4 R4 K9 ["StudioStateSystemReminder"]
       35 CALL                             R3 1 1
       36 JUMPIFNOT                        R3 ; [+51]
       37 GETUPVAL                         R3 4
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+28]
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K10 ["getFocusedDataModelType"]
       43 CALL                             R6 0 1
       44 LOADK                            R7 K11 [""]
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R8 R8 K12 ["getStudioPlayState"]
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+2]
       50 LOADK                            R7 K13 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       51 JUMP                             ; [+1]
       52 LOADK                            R7 K14 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       53 LOADK                            R8 K15 ["%*- Focused DataModel in the viewport: %*"]
       54 MOVE                             R10 R7
       55 MOVE                             R11 R6
       56 NAMECALL                         R8 R8 K16 ["format"]
       58 CALL                             R8 3 1
       59 MOVE                             R7 R8
       60 MOVE                             R5 R7
       61 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       63 MOVE                             R4 R1
       64 GETIMPORT                        R3 K6 [table.insert]
       66 CALL                             R3 2 0
       67 JUMP                             ; [+20]
       68 GETUPVAL                         R3 5
       69 GETTABLEKS                       R3 R3 K12 ["getStudioPlayState"]
       71 CALL                             R3 0 1
       72 JUMPIFNOT                        R3 ; [+8]
       73 FASTCALL2K                       TABLE_INSERT R1 K13 ; [+5]
       75 MOVE                             R4 R1
       76 LOADK                            R5 K13 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       77 GETIMPORT                        R3 K6 [table.insert]
       79 CALL                             R3 2 0
       80 JUMP                             ; [+7]
       81 FASTCALL2K                       TABLE_INSERT R1 K14 ; [+5]
       83 MOVE                             R4 R1
       84 LOADK                            R5 K14 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       85 GETIMPORT                        R3 K6 [table.insert]
       87 CALL                             R3 2 0
       88 GETUPVAL                         R3 0
       89 CALL                             R3 0 1
       90 JUMPIFNOT                        R3 ; [+17]
       91 GETUPVAL                         R4 6
       92 FASTCALL2K                       ASSERT R4 K17 ; [+4]
       94 LOADK                            R5 K17 ["getPlanModeSystemReminder is not defined"]
       95 GETIMPORT                        R3 K3 [assert]
       97 CALL                             R3 2 0
       98 GETUPVAL                         R3 6
       99 CALL                             R3 0 1
      100 JUMPIFNOT                        R3 ; [+7]
      101 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
      103 MOVE                             R5 R1
      104 MOVE                             R6 R3
      105 GETIMPORT                        R4 K6 [table.insert]
      107 CALL                             R4 2 0
      108 GETUPVAL                         R3 7
      109 MOVE                             R4 R2
      110 CALL                             R3 1 3
      111 FORGPREP                         R3
      112 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
      114 MOVE                             R9 R1
      115 MOVE                             R10 R7
      116 GETIMPORT                        R8 K6 [table.insert]
      118 CALL                             R8 2 0
      119 FORGLOOP                         R3 2 ; [-8]
      121 GETUPVAL                         R3 8
      122 CALL                             R3 0 1
      123 JUMPIFNOT                        R3 ; [+5]
      124 GETIMPORT                        R3 K19 [print]
      126 LOADK                            R4 K20 ["[StudioLLMSystemReminder] Collected system reminders"]
      127 MOVE                             R5 R1
      128 CALL                             R3 2 0
      129 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETUPVAL                         R2 3
        8 CALL                             R2 0 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETUPVAL                         R3 4
       15 CALL                             R3 0 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U10
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R0
       34 MOVE                             R8 R1
       35 SETLIST                          R6 R7 2 [1]
       37 CALL                             R4 2 -1
       38 RETURN                           R4 -1

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
       43 GETTABLEKS                       R5 R5 K15 ["FFlagAssistantPlanMode"]
       45 GETTABLEKS                       R6 R1 K13 ["Flags"]
       47 GETTABLEKS                       R6 R6 K14 ["Shared"]
       49 GETTABLEKS                       R6 R6 K16 ["FFlagDebugLogAssistantUI"]
       51 GETTABLEKS                       R7 R1 K13 ["Flags"]
       53 GETTABLEKS                       R7 R7 K14 ["Shared"]
       55 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantStudioStateSystemReminder"]
       57 GETTABLEKS                       R8 R1 K18 ["Components"]
       59 GETTABLEKS                       R8 R8 K19 ["Hooks"]
       61 GETTABLEKS                       R8 R8 K20 ["useAssistantMode"]
       63 GETTABLEKS                       R9 R1 K18 ["Components"]
       65 GETTABLEKS                       R9 R9 K19 ["Hooks"]
       67 GETTABLEKS                       R9 R9 K21 ["SystemReminders"]
       69 GETTABLEKS                       R9 R9 K22 ["usePersistentPlanSystemReminder"]
       71 GETTABLEKS                       R10 R1 K18 ["Components"]
       73 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       75 GETTABLEKS                       R10 R10 K21 ["SystemReminders"]
       77 GETTABLEKS                       R10 R10 K23 ["usePlanModeSystemReminder"]
       79 GETTABLEKS                       R11 R1 K18 ["Components"]
       81 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       83 GETTABLEKS                       R11 R11 K21 ["SystemReminders"]
       85 GETTABLEKS                       R11 R11 K24 ["useToolsChangedSystemReminders"]
       87 GETTABLEKS                       R12 R1 K13 ["Flags"]
       89 GETTABLEKS                       R12 R12 K14 ["Shared"]
       91 GETTABLEKS                       R12 R12 K25 ["FFlagAssistantGetStudioState"]
       93 DUPCLOSURE                       R13 K26 [PROTO_0]
       94 CAPTURE                          VAL R4
       95 DUPCLOSURE                       R14 K27 [PROTO_2]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R6
      107 DUPTABLE                         R15 K30 [{"useGetSystemReminders", "getStudioStateString"}]
      108 SETTABLEKS                       R14 R15 K28 ["useGetSystemReminders"]
      110 SETTABLEKS                       R13 R15 K29 ["getStudioStateString"]
      112 RETURN                           R15 1

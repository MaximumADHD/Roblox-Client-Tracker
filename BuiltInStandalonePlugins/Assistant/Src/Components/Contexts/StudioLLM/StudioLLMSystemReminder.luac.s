PROTO_0:
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
       26 JUMPIFNOT                        R3 ; [+30]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K7 ["getExperimentFeatureEnabled"]
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K8 ["FeatureNames"]
       33 GETTABLEKS                       R4 R4 K9 ["StudioStateSystemReminder"]
       35 CALL                             R3 1 1
       36 JUMPIFNOT                        R3 ; [+20]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R3 R3 K10 ["getStudioPlayState"]
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+8]
       42 FASTCALL2K                       TABLE_INSERT R1 K11 ; [+5]
       44 MOVE                             R4 R1
       45 LOADK                            R5 K11 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       46 GETIMPORT                        R3 K6 [table.insert]
       48 CALL                             R3 2 0
       49 JUMP                             ; [+7]
       50 FASTCALL2K                       TABLE_INSERT R1 K12 ; [+5]
       52 MOVE                             R4 R1
       53 LOADK                            R5 K12 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       54 GETIMPORT                        R3 K6 [table.insert]
       56 CALL                             R3 2 0
       57 GETUPVAL                         R3 0
       58 CALL                             R3 0 1
       59 JUMPIFNOT                        R3 ; [+17]
       60 GETUPVAL                         R4 5
       61 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       63 LOADK                            R5 K13 ["getPlanModeSystemReminder is not defined"]
       64 GETIMPORT                        R3 K3 [assert]
       66 CALL                             R3 2 0
       67 GETUPVAL                         R3 5
       68 CALL                             R3 0 1
       69 JUMPIFNOT                        R3 ; [+7]
       70 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       72 MOVE                             R5 R1
       73 MOVE                             R6 R3
       74 GETIMPORT                        R4 K6 [table.insert]
       76 CALL                             R4 2 0
       77 GETUPVAL                         R3 6
       78 MOVE                             R4 R2
       79 CALL                             R3 1 3
       80 FORGPREP                         R3
       81 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       83 MOVE                             R9 R1
       84 MOVE                             R10 R7
       85 GETIMPORT                        R8 K6 [table.insert]
       87 CALL                             R8 2 0
       88 FORGLOOP                         R3 2 ; [-8]
       90 GETUPVAL                         R3 7
       91 CALL                             R3 0 1
       92 JUMPIFNOT                        R3 ; [+5]
       93 GETIMPORT                        R3 K15 [print]
       95 LOADK                            R4 K16 ["[StudioLLMSystemReminder] Collected system reminders"]
       96 MOVE                             R5 R1
       97 CALL                             R3 2 0
       98 RETURN                           R1 1

PROTO_1:
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
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U9
       30 NEWTABLE                         R6 0 2
       32 MOVE                             R7 R0
       33 MOVE                             R8 R1
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 -1
       37 RETURN                           R4 -1

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
       87 DUPCLOSURE                       R12 K25 [PROTO_1]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R6
       98 DUPTABLE                         R13 K27 [{"useGetSystemReminders"}]
       99 SETTABLEKS                       R12 R13 K26 ["useGetSystemReminders"]
      101 RETURN                           R13 1

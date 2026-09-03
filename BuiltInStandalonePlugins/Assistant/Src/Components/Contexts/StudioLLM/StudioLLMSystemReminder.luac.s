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
       15 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantSystemSkillsStateReminder"]
       17 JUMPIFNOT                        R4 ; [+10]
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+7]
       21 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       23 MOVE                             R6 R1
       24 MOVE                             R7 R4
       25 GETIMPORT                        R5 K3 [table.insert]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R7 R7 K5 ["getFocusedDataModelType"]
       31 CALL                             R7 0 1
       32 LOADK                            R8 K6 [""]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K7 ["getStudioPlayState"]
       36 CALL                             R9 0 1
       37 JUMPIFNOT                        R9 ; [+2]
       38 LOADK                            R8 K8 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       39 JUMP                             ; [+1]
       40 LOADK                            R8 K9 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       41 LOADK                            R9 K10 ["%*- Focused DataModel in the viewport: %*"]
       42 MOVE                             R11 R8
       43 MOVE                             R12 R7
       44 NAMECALL                         R9 R9 K11 ["format"]
       46 CALL                             R9 3 1
       47 MOVE                             R8 R9
       48 MOVE                             R6 R8
       49 FASTCALL2                        TABLE_INSERT R1 R6 ; [+4]
       51 MOVE                             R5 R1
       52 GETIMPORT                        R4 K3 [table.insert]
       54 CALL                             R4 2 0
       55 GETUPVAL                         R4 4
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+7]
       58 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       60 MOVE                             R6 R1
       61 MOVE                             R7 R4
       62 GETIMPORT                        R5 K3 [table.insert]
       64 CALL                             R5 2 0
       65 GETUPVAL                         R5 5
       66 MOVE                             R6 R2
       67 CALL                             R5 1 3
       68 FORGPREP                         R5
       69 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
       71 MOVE                             R11 R1
       72 MOVE                             R12 R9
       73 GETIMPORT                        R10 K3 [table.insert]
       75 CALL                             R10 2 0
       76 FORGLOOP                         R5 2 ; [-8]
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K12 ["FFlagDebugLogAssistantUI"]
       81 JUMPIFNOT                        R5 ; [+5]
       82 GETIMPORT                        R5 K14 [print]
       84 LOADK                            R6 K15 ["[StudioLLMSystemReminder] Collected system reminders"]
       85 MOVE                             R7 R1
       86 CALL                             R5 2 0
       87 RETURN                           R1 1

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
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 5
       11 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
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
       37 GETTABLEKS                       R5 R1 K13 ["Components"]
       39 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       41 GETTABLEKS                       R5 R5 K15 ["useAssistantMode"]
       43 GETTABLEKS                       R6 R1 K13 ["Components"]
       45 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       47 GETTABLEKS                       R6 R6 K16 ["SystemReminders"]
       49 GETTABLEKS                       R6 R6 K17 ["usePersistentPlanSystemReminder"]
       51 GETTABLEKS                       R7 R1 K13 ["Components"]
       53 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       55 GETTABLEKS                       R7 R7 K16 ["SystemReminders"]
       57 GETTABLEKS                       R7 R7 K18 ["usePlanModeSystemReminder"]
       59 GETTABLEKS                       R8 R1 K13 ["Components"]
       61 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K16 ["SystemReminders"]
       65 GETTABLEKS                       R8 R8 K19 ["useSystemSkillsStateSystemReminder"]
       67 GETTABLEKS                       R9 R1 K13 ["Components"]
       69 GETTABLEKS                       R9 R9 K14 ["Hooks"]
       71 GETTABLEKS                       R9 R9 K16 ["SystemReminders"]
       73 GETTABLEKS                       R9 R9 K20 ["useToolsChangedSystemReminders"]
       75 DUPCLOSURE                       R10 K21 [PROTO_0]
       76 CAPTURE                          VAL R3
       77 DUPCLOSURE                       R11 K22 [PROTO_2]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R3
       86 DUPTABLE                         R12 K25 [{"useGetSystemReminders", "getStudioStateString"}]
       87 SETTABLEKS                       R11 R12 K23 ["useGetSystemReminders"]
       89 SETTABLEKS                       R10 R12 K24 ["getStudioStateString"]
       91 RETURN                           R12 1

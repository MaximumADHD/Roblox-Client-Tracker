PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K0 ["assistantMode"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["Types"]
       10 GETTABLEKS                       R4 R5 K2 ["AssistantMode"]
       12 GETTABLEKS                       R3 R4 K3 ["Test"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+17]
       16 LOADK                            R2 K4 [""]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K5 ["getStudioPlayState"]
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+2]
       22 LOADK                            R2 K6 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       23 JUMP                             ; [+1]
       24 LOADK                            R2 K7 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       25 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       27 MOVE                             R4 R1
       28 MOVE                             R5 R2
       29 GETIMPORT                        R3 K10 [table.insert]
       31 CALL                             R3 2 0
       32 RETURN                           R1 1

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
       26 JUMPIFNOT                        R3 ; [+26]
       27 GETUPVAL                         R3 3
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R4 R5 K7 ["Test"]
       31 JUMPIFNOTEQ                      R3 R4 ; [+21]
       33 GETUPVAL                         R4 5
       34 GETTABLEKS                       R3 R4 K8 ["getStudioPlayState"]
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+8]
       38 FASTCALL2K                       TABLE_INSERT R1 K9 ; [+5]
       40 MOVE                             R4 R1
       41 LOADK                            R5 K9 ["- Current Studio Mode: Play\n- Available DataModels: Client, Server\n"]
       42 GETIMPORT                        R3 K6 [table.insert]
       44 CALL                             R3 2 0
       45 JUMP                             ; [+7]
       46 FASTCALL2K                       TABLE_INSERT R1 K10 ; [+5]
       48 MOVE                             R4 R1
       49 LOADK                            R5 K10 ["- Current Studio Mode: Edit\n- Available DataModels: Edit\n"]
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETUPVAL                         R3 0
       54 CALL                             R3 0 1
       55 JUMPIFNOT                        R3 ; [+17]
       56 GETUPVAL                         R4 6
       57 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       59 LOADK                            R5 K11 ["getPlanModeSystemReminder is not defined"]
       60 GETIMPORT                        R3 K3 [assert]
       62 CALL                             R3 2 0
       63 GETUPVAL                         R3 6
       64 CALL                             R3 0 1
       65 JUMPIFNOT                        R3 ; [+7]
       66 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       68 MOVE                             R5 R1
       69 MOVE                             R6 R3
       70 GETIMPORT                        R4 K6 [table.insert]
       72 CALL                             R4 2 0
       73 GETUPVAL                         R3 7
       74 MOVE                             R4 R2
       75 JUMPIF                           R4 ; [+2]
       76 NEWTABLE                         R4 0 0
       78 CALL                             R3 1 3
       79 FORGPREP                         R3
       80 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       82 MOVE                             R9 R1
       83 MOVE                             R10 R7
       84 GETIMPORT                        R8 K6 [table.insert]
       86 CALL                             R8 2 0
       87 FORGLOOP                         R3 2 ; [-8]
       89 GETUPVAL                         R3 8
       90 CALL                             R3 0 1
       91 JUMPIFNOT                        R3 ; [+5]
       92 GETIMPORT                        R3 K13 [print]
       94 LOADK                            R4 K14 ["[StudioLLMSystemReminder] Collected system reminders"]
       95 MOVE                             R5 R1
       96 CALL                             R3 2 0
       97 RETURN                           R1 1

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
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R4 R5 K0 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U9
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["StudioState"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K12 ["Types"]
       32 GETTABLEKS                       R4 R5 K13 ["AssistantMode"]
       34 GETTABLEKS                       R7 R1 K14 ["Flags"]
       36 GETTABLEKS                       R6 R7 K15 ["Shared"]
       38 GETTABLEKS                       R5 R6 K16 ["FFlagAssistantAgentModeSystemReminder"]
       40 GETTABLEKS                       R8 R1 K14 ["Flags"]
       42 GETTABLEKS                       R7 R8 K15 ["Shared"]
       44 GETTABLEKS                       R6 R7 K17 ["FFlagAssistantPlanMode"]
       46 GETTABLEKS                       R9 R1 K14 ["Flags"]
       48 GETTABLEKS                       R8 R9 K15 ["Shared"]
       50 GETTABLEKS                       R7 R8 K18 ["FFlagDebugLogAssistantUI"]
       52 GETTABLEKS                       R10 R1 K14 ["Flags"]
       54 GETTABLEKS                       R9 R10 K15 ["Shared"]
       56 GETTABLEKS                       R8 R9 K19 ["getIsTestModeSystemRemindersEnabled"]
       58 GETTABLEKS                       R11 R1 K20 ["Components"]
       60 GETTABLEKS                       R10 R11 K21 ["Hooks"]
       62 GETTABLEKS                       R9 R10 K22 ["useAssistantMode"]
       64 GETTABLEKS                       R13 R1 K20 ["Components"]
       66 GETTABLEKS                       R12 R13 K21 ["Hooks"]
       68 GETTABLEKS                       R11 R12 K23 ["SystemReminders"]
       70 GETTABLEKS                       R10 R11 K24 ["usePersistentPlanSystemReminder"]
       72 GETTABLEKS                       R14 R1 K20 ["Components"]
       74 GETTABLEKS                       R13 R14 K21 ["Hooks"]
       76 GETTABLEKS                       R12 R13 K23 ["SystemReminders"]
       78 GETTABLEKS                       R11 R12 K25 ["usePlanModeSystemReminder"]
       80 GETTABLEKS                       R15 R1 K20 ["Components"]
       82 GETTABLEKS                       R14 R15 K21 ["Hooks"]
       84 GETTABLEKS                       R13 R14 K23 ["SystemReminders"]
       86 GETTABLEKS                       R12 R13 K26 ["useToolsChangedSystemReminders"]
       88 DUPCLOSURE                       R13 K27 [PROTO_0]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R3
       92 DUPCLOSURE                       R14 K28 [PROTO_2]
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R7
      103 DUPTABLE                         R15 K31 [{"getSystemReminders", "useGetSystemReminders"}]
      104 SETTABLEKS                       R13 R15 K29 ["getSystemReminders"]
      106 SETTABLEKS                       R14 R15 K30 ["useGetSystemReminders"]
      108 RETURN                           R15 1

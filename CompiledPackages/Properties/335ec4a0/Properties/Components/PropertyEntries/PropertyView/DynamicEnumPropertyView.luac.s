PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADB                            R2 1
        4 SETUPVAL                         R2 1
        5 DUPTABLE                         R2 K2 [{"id", "text"}]
        6 SETTABLEKS                       R0 R2 K0 ["id"]
        8 SETTABLEKS                       R0 R2 K1 ["text"]
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["extra"]
        6 GETTABLEKS                       R1 R1 K2 ["extraGuestDataKey"]
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["finishEditing"]
       12 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       14 CALL                             R1 1 0
       15 LOADB                            R1 0
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K8 ["Dictionary"]
       19 GETTABLEKS                       R2 R2 K9 ["map"]
       21 MOVE                             R3 R0
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          REF R1
       25 CALL                             R2 2 1
       26 JUMPIF                           R1 ; [+13]
       27 DUPTABLE                         R5 K12 [{"id", "text"}]
       28 GETUPVAL                         R6 3
       29 SETTABLEKS                       R6 R5 K10 ["id"]
       31 GETUPVAL                         R6 3
       32 SETTABLEKS                       R6 R5 K11 ["text"]
       34 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K15 [table.insert]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R3 4
       41 MOVE                             R4 R2
       42 CALL                             R3 1 0
       43 CLOSEUPVALS                      R1
       44 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["finishEditing"]
       13 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["parts"]
        8 GETTABLEKS                       R2 R2 K3 ["value"]
       10 LOADB                            R4 0
       11 GETTABLEKS                       R5 R1 K4 ["extra"]
       13 JUMPIFEQKNIL                     R5 ; [+9]
       15 GETTABLEKS                       R5 R1 K4 ["extra"]
       17 GETTABLEKS                       R5 R5 K5 ["type"]
       19 JUMPIFEQKS                       R5 K6 ["dynamicEnum"] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["Did not contain DynamicEnumPropertyInfoExtra"]
       26 GETIMPORT                        R3 K9 [assert]
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R4 R2 K10 ["multiple"]
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADNIL                          R3
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R3 R2 K3 ["value"]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K11 ["useState"]
       39 JUMPIFNOTEQKNIL                  R3 ; [+4]
       41 NEWTABLE                         R5 0 0
       43 JUMP                             ; [+9]
       44 NEWTABLE                         R5 0 1
       46 DUPTABLE                         R6 K14 [{"id", "text"}]
       47 SETTABLEKS                       R3 R6 K12 ["id"]
       49 SETTABLEKS                       R3 R6 K13 ["text"]
       51 SETLIST                          R5 R6 1 [1]
       53 CALL                             R4 1 2
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K15 ["useEffect"]
       57 NEWCLOSURE                       R7 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R8 0 0
       65 CALL                             R6 2 0
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K16 ["useCallback"]
       69 NEWCLOSURE                       R7 P1
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R8 0 3
       73 GETTABLEKS                       R9 R0 K17 ["beginEditingAsync"]
       75 GETTABLEKS                       R10 R0 K18 ["setPart"]
       77 GETTABLEKS                       R11 R0 K19 ["finishEditing"]
       79 SETLIST                          R8 R9 3 [1]
       81 CALL                             R6 2 1
       82 GETUPVAL                         R7 3
       83 GETUPVAL                         R8 4
       84 DUPTABLE                         R9 K23 [{"items", "value", "onItemChanged", "testId"}]
       85 SETTABLEKS                       R4 R9 K20 ["items"]
       87 SETTABLEKS                       R3 R9 K3 ["value"]
       89 SETTABLEKS                       R6 R9 K21 ["onItemChanged"]
       91 GETTABLEKS                       R10 R1 K4 ["extra"]
       93 GETTABLEKS                       R10 R10 K24 ["extraGuestDataKey"]
       95 SETTABLEKS                       R10 R9 K22 ["testId"]
       97 CALL                             R7 2 -1
       98 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["Dropdown"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyEditorTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K12 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K13 ["SignalsReact"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R5 K14 ["createElement"]
       42 DUPCLOSURE                       R8 K15 [PROTO_4]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R3
       48 RETURN                           R8 1

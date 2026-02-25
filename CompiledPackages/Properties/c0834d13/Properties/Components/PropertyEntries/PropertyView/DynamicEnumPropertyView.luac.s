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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["beginEditingAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["extraGuestDataKey"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["finishEditing"]
       10 GETIMPORT                        R2 K6 [Enum.FinishRecordingOperation.Commit]
       12 CALL                             R1 1 0
       13 LOADB                            R1 0
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K7 ["Dictionary"]
       17 GETTABLEKS                       R2 R3 K8 ["map"]
       19 MOVE                             R3 R0
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          REF R1
       23 CALL                             R2 2 1
       24 JUMPIF                           R1 ; [+13]
       25 DUPTABLE                         R5 K11 [{"id", "text"}]
       26 GETUPVAL                         R6 3
       27 SETTABLEKS                       R6 R5 K9 ["id"]
       29 GETUPVAL                         R6 3
       30 SETTABLEKS                       R6 R5 K10 ["text"]
       32 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K14 [table.insert]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 4
       39 MOVE                             R4 R2
       40 CALL                             R3 1 0
       41 CLOSEUPVALS                      R1
       42 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["finishEditing"]
       13 GETIMPORT                        R2 K7 [Enum.FinishRecordingOperation.Commit]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["info"]
        2 GETTABLEKS                       R2 R3 K1 ["parts"]
        4 GETTABLEKS                       R1 R2 K2 ["value"]
        6 GETTABLEKS                       R3 R0 K0 ["info"]
        8 GETTABLEKS                       R2 R3 K3 ["extra"]
       10 GETTABLEKS                       R4 R1 K4 ["multiple"]
       12 JUMPIFNOT                        R4 ; [+2]
       13 LOADNIL                          R3
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R3 R1 K2 ["value"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K5 ["useState"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+4]
       22 NEWTABLE                         R5 0 0
       24 JUMP                             ; [+9]
       25 NEWTABLE                         R5 0 1
       27 DUPTABLE                         R6 K8 [{"id", "text"}]
       28 SETTABLEKS                       R3 R6 K6 ["id"]
       30 SETTABLEKS                       R3 R6 K7 ["text"]
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R4 1 2
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K9 ["useEffect"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 NEWTABLE                         R8 0 4
       46 GETTABLEKS                       R9 R0 K10 ["beginEditingAsync"]
       48 GETTABLEKS                       R10 R0 K11 ["finishEditing"]
       50 MOVE                             R11 R2
       51 MOVE                             R12 R3
       52 SETLIST                          R8 R9 4 [1]
       54 CALL                             R6 2 0
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R6 R7 K12 ["useCallback"]
       58 NEWCLOSURE                       R7 P1
       59 CAPTURE                          VAL R0
       60 NEWTABLE                         R8 0 3
       62 GETTABLEKS                       R9 R0 K10 ["beginEditingAsync"]
       64 GETTABLEKS                       R10 R0 K13 ["setPart"]
       66 GETTABLEKS                       R11 R0 K11 ["finishEditing"]
       68 SETLIST                          R8 R9 3 [1]
       70 CALL                             R6 2 1
       71 GETUPVAL                         R7 2
       72 GETUPVAL                         R8 3
       73 DUPTABLE                         R9 K17 [{"items", "value", "onItemChanged", "testId"}]
       74 SETTABLEKS                       R4 R9 K14 ["items"]
       76 SETTABLEKS                       R3 R9 K2 ["value"]
       78 SETTABLEKS                       R6 R9 K15 ["onItemChanged"]
       80 GETTABLEKS                       R10 R2 K18 ["extraGuestDataKey"]
       82 SETTABLEKS                       R10 R9 K16 ["testId"]
       84 CALL                             R7 2 -1
       85 RETURN                           R7 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["Util"]
       20 GETTABLEKS                       R4 R5 K10 ["Dropdown"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyEditorTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["PropertyTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K4 ["Parent"]
       37 GETTABLEKS                       R7 R8 K13 ["React"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K14 ["createElement"]
       42 DUPCLOSURE                       R8 K15 [PROTO_4]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R3
       47 RETURN                           R8 1

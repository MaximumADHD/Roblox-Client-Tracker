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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R3 R1 K2 ["parts"]
        8 GETTABLEKS                       R2 R3 K3 ["value"]
       10 GETTABLEKS                       R3 R1 K4 ["extra"]
       12 GETTABLEKS                       R5 R2 K5 ["multiple"]
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADNIL                          R4
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R4 R2 K3 ["value"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K6 ["useState"]
       22 JUMPIFNOTEQKNIL                  R4 ; [+4]
       24 NEWTABLE                         R6 0 0
       26 JUMP                             ; [+9]
       27 NEWTABLE                         R6 0 1
       29 DUPTABLE                         R7 K9 [{"id", "text"}]
       30 SETTABLEKS                       R4 R7 K7 ["id"]
       32 SETTABLEKS                       R4 R7 K8 ["text"]
       34 SETLIST                          R6 R7 1 [1]
       36 CALL                             R5 1 2
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R7 R8 K10 ["useEffect"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R9 0 0
       48 CALL                             R7 2 0
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R7 R8 K11 ["useCallback"]
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R9 0 3
       56 GETTABLEKS                       R10 R0 K12 ["beginEditingAsync"]
       58 GETTABLEKS                       R11 R0 K13 ["setPart"]
       60 GETTABLEKS                       R12 R0 K14 ["finishEditing"]
       62 SETLIST                          R9 R10 3 [1]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 3
       66 GETUPVAL                         R9 4
       67 DUPTABLE                         R10 K18 [{"items", "value", "onItemChanged", "testId"}]
       68 SETTABLEKS                       R5 R10 K15 ["items"]
       70 SETTABLEKS                       R4 R10 K3 ["value"]
       72 SETTABLEKS                       R7 R10 K16 ["onItemChanged"]
       74 GETTABLEKS                       R11 R3 K19 ["extraGuestDataKey"]
       76 SETTABLEKS                       R11 R10 K17 ["testId"]
       78 CALL                             R8 2 -1
       79 RETURN                           R8 -1

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
       25 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K12 ["PropertyViewTypes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K13 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K14 ["SignalsReact"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R6 K15 ["createElement"]
       51 DUPCLOSURE                       R9 K16 [PROTO_4]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R3
       57 RETURN                           R9 1

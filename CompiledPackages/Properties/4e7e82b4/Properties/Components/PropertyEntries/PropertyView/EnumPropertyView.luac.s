PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["GetEnumItems"]
        5 CALL                             R1 1 3
        6 FORGPREP                         R1
        7 DUPTABLE                         R8 K3 [{"id", "text"}]
        8 GETTABLEKS                       R9 R5 K4 ["Name"]
       10 SETTABLEKS                       R9 R8 K1 ["id"]
       12 GETTABLEKS                       R9 R5 K4 ["Name"]
       14 SETTABLEKS                       R9 R8 K2 ["text"]
       16 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       18 MOVE                             R7 R0
       19 GETIMPORT                        R6 K7 [table.insert]
       21 CALL                             R6 2 0
       22 FORGLOOP                         R1 2 ; [-16]
       24 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R5 R0
       10 NAMECALL                         R3 R3 K3 ["FromName"]
       12 CALL                             R3 2 -1
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K4 ["finishEditing"]
       17 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Commit]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["extra"]
        8 GETTABLEKS                       R3 R1 K3 ["parts"]
       10 GETTABLEKS                       R3 R3 K4 ["value"]
       12 GETIMPORT                        R5 K6 [Enum]
       14 GETTABLEKS                       R6 R2 K7 ["enumName"]
       16 GETTABLE                         R4 R5 R6
       17 GETTABLEKS                       R6 R3 K8 ["multiple"]
       19 JUMPIFNOT                        R6 ; [+2]
       20 LOADNIL                          R5
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R5 R3 K4 ["value"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R4
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R9 0 4
       43 MOVE                             R10 R4
       44 GETTABLEKS                       R11 R0 K11 ["beginEditingAsync"]
       46 GETTABLEKS                       R12 R0 K12 ["setPart"]
       48 GETTABLEKS                       R13 R0 K13 ["finishEditing"]
       50 SETLIST                          R9 R10 4 [1]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R8 2
       54 GETUPVAL                         R9 3
       55 DUPTABLE                         R10 K17 [{"items", "value", "onItemChanged", "testId"}]
       56 SETTABLEKS                       R6 R10 K14 ["items"]
       58 JUMPIFNOT                        R5 ; [+3]
       59 GETTABLEKS                       R11 R5 K18 ["Name"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R11
       63 SETTABLEKS                       R11 R10 K4 ["value"]
       65 SETTABLEKS                       R7 R10 K15 ["onItemChanged"]
       67 FASTCALL1                        TOSTRING R4 ; [+3]
       68 MOVE                             R12 R4
       69 GETIMPORT                        R11 K20 [tostring]
       71 CALL                             R11 1 1
       72 SETTABLEKS                       R11 R10 K16 ["testId"]
       74 CALL                             R8 2 -1
       75 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["Dropdown"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["PropertyViewTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K13 ["SignalsReact"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R5 K14 ["createElement"]
       44 DUPCLOSURE                       R8 K15 [PROTO_2]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R2
       49 RETURN                           R8 1

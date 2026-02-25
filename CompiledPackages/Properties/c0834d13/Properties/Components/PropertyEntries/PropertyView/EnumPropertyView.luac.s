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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["setPart"]
        7 LOADK                            R2 K2 ["value"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R5 R0
       10 NAMECALL                         R3 R3 K3 ["FromName"]
       12 CALL                             R3 2 -1
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["finishEditing"]
       17 GETIMPORT                        R2 K8 [Enum.FinishRecordingOperation.Commit]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["info"]
        2 GETTABLEKS                       R1 R2 K1 ["extra"]
        4 GETTABLEKS                       R4 R0 K0 ["info"]
        6 GETTABLEKS                       R3 R4 K2 ["parts"]
        8 GETTABLEKS                       R2 R3 K3 ["value"]
       10 GETIMPORT                        R4 K5 [Enum]
       12 GETTABLEKS                       R5 R1 K6 ["enumName"]
       14 GETTABLE                         R3 R4 R5
       15 GETTABLEKS                       R5 R2 K7 ["multiple"]
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADNIL                          R4
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R2 K3 ["value"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K8 ["useMemo"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R7 0 1
       29 MOVE                             R8 R3
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K9 ["useCallback"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 NEWTABLE                         R8 0 4
       41 MOVE                             R9 R3
       42 GETTABLEKS                       R10 R0 K10 ["beginEditingAsync"]
       44 GETTABLEKS                       R11 R0 K11 ["setPart"]
       46 GETTABLEKS                       R12 R0 K12 ["finishEditing"]
       48 SETLIST                          R8 R9 4 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 1
       52 GETUPVAL                         R8 2
       53 DUPTABLE                         R9 K16 [{"items", "value", "onItemChanged", "testId"}]
       54 SETTABLEKS                       R5 R9 K13 ["items"]
       56 JUMPIFNOT                        R4 ; [+3]
       57 GETTABLEKS                       R10 R4 K17 ["Name"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R10
       61 SETTABLEKS                       R10 R9 K3 ["value"]
       63 SETTABLEKS                       R6 R9 K14 ["onItemChanged"]
       65 FASTCALL1                        TOSTRING R3 ; [+3]
       66 MOVE                             R11 R3
       67 GETIMPORT                        R10 K19 [tostring]
       69 CALL                             R10 1 1
       70 SETTABLEKS                       R10 R9 K15 ["testId"]
       72 CALL                             R7 2 -1
       73 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Dropdown"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["PropertyEditorTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["PropertyTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R6 K12 ["React"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K13 ["createElement"]
       35 DUPCLOSURE                       R6 K14 [PROTO_2]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 RETURN                           R6 1

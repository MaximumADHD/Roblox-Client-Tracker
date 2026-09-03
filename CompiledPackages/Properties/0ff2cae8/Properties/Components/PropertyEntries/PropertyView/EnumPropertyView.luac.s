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
        6 LOADB                            R3 0
        7 GETTABLEKS                       R4 R1 K2 ["extra"]
        9 JUMPIFEQKNIL                     R4 ; [+9]
       11 GETTABLEKS                       R4 R1 K2 ["extra"]
       13 GETTABLEKS                       R4 R4 K3 ["type"]
       15 JUMPIFEQKS                       R4 K4 ["enum"] ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       21 LOADK                            R4 K5 ["Did not contain EnumPropertyInfoExtra"]
       22 GETIMPORT                        R2 K7 [assert]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R1 K8 ["parts"]
       27 GETTABLEKS                       R2 R2 K9 ["value"]
       29 GETIMPORT                        R4 K11 [Enum]
       31 GETTABLEKS                       R5 R1 K2 ["extra"]
       33 GETTABLEKS                       R5 R5 K12 ["enumName"]
       35 GETTABLE                         R3 R4 R5
       36 GETTABLEKS                       R5 R2 K13 ["multiple"]
       38 JUMPIFNOT                        R5 ; [+2]
       39 LOADNIL                          R4
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R4 R2 K9 ["value"]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K14 ["useMemo"]
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          VAL R3
       48 NEWTABLE                         R7 0 1
       50 MOVE                             R8 R3
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K15 ["useCallback"]
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R8 0 4
       62 MOVE                             R9 R3
       63 GETTABLEKS                       R10 R0 K16 ["beginEditingAsync"]
       65 GETTABLEKS                       R11 R0 K17 ["setPart"]
       67 GETTABLEKS                       R12 R0 K18 ["finishEditing"]
       69 SETLIST                          R8 R9 4 [1]
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 2
       73 GETUPVAL                         R8 3
       74 DUPTABLE                         R9 K22 [{"items", "value", "onItemChanged", "testId"}]
       75 SETTABLEKS                       R5 R9 K19 ["items"]
       77 JUMPIFNOT                        R4 ; [+3]
       78 GETTABLEKS                       R10 R4 K23 ["Name"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R10
       82 SETTABLEKS                       R10 R9 K9 ["value"]
       84 SETTABLEKS                       R6 R9 K20 ["onItemChanged"]
       86 FASTCALL1                        TOSTRING R3 ; [+3]
       87 MOVE                             R11 R3
       88 GETIMPORT                        R10 K25 [tostring]
       90 CALL                             R10 1 1
       91 SETTABLEKS                       R10 R9 K21 ["testId"]
       93 CALL                             R7 2 -1
       94 RETURN                           R7 -1

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
       20 GETTABLEKS                       R4 R0 K10 ["PropertyEditorTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["SignalsReact"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R4 K13 ["createElement"]
       35 DUPCLOSURE                       R7 K14 [PROTO_2]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R2
       40 RETURN                           R7 1

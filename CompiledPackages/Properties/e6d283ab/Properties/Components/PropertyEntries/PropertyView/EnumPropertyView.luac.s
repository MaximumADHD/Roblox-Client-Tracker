PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 SETTABLEKS                       R0 R1 K1 ["text"]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["List"]
        3 GETTABLEKS                       R0 R0 K1 ["map"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["List"]
        9 GETTABLEKS                       R2 R2 K1 ["map"]
       11 GETUPVAL                         R3 2
       12 NAMECALL                         R3 R3 K2 ["GetEnumItems"]
       14 CALL                             R3 1 1
       15 DUPCLOSURE                       R4 K3 [PROTO_0]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 1
       18 DUPCLOSURE                       R2 K4 [PROTO_1]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_3:
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

PROTO_4:
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
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R7 0 1
       52 MOVE                             R8 R3
       53 SETLIST                          R7 R8 1 [1]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K15 ["useCallback"]
       59 NEWCLOSURE                       R7 P1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R8 0 4
       64 MOVE                             R9 R3
       65 GETTABLEKS                       R10 R0 K16 ["beginEditingAsync"]
       67 GETTABLEKS                       R11 R0 K17 ["setPart"]
       69 GETTABLEKS                       R12 R0 K18 ["finishEditing"]
       71 SETLIST                          R8 R9 4 [1]
       73 CALL                             R6 2 1
       74 GETUPVAL                         R7 4
       75 GETUPVAL                         R8 5
       76 DUPTABLE                         R9 K23 [{"readonly", "items", "value", "onItemChanged", "testId"}]
       77 GETTABLEKS                       R10 R1 K19 ["readonly"]
       79 SETTABLEKS                       R10 R9 K19 ["readonly"]
       81 SETTABLEKS                       R5 R9 K20 ["items"]
       83 JUMPIFNOT                        R4 ; [+3]
       84 GETTABLEKS                       R10 R4 K24 ["Name"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K9 ["value"]
       90 SETTABLEKS                       R6 R9 K21 ["onItemChanged"]
       92 FASTCALL1                        TOSTRING R3 ; [+3]
       93 MOVE                             R11 R3
       94 GETIMPORT                        R10 K26 [tostring]
       96 CALL                             R10 1 1
       97 SETTABLEKS                       R10 R9 K22 ["testId"]
       99 CALL                             R7 2 -1
      100 RETURN                           R7 -1

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
       25 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["PropertyEditorTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["React"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K14 ["SignalsReact"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K9 ["Util"]
       47 GETTABLEKS                       R9 R9 K15 ["sortCaseInsensitive"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R6 K16 ["createElement"]
       52 DUPCLOSURE                       R10 K17 [PROTO_4]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R3
       59 RETURN                           R10 1

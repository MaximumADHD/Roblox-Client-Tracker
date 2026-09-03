PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPart"]
        3 LOADK                            R2 K1 ["value"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["finishEditing"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETTABLEKS                       R1 R1 K1 ["value"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
        9 GETTABLEKS                       R3 R0 K1 ["getInfo"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K3 ["readonly"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       17 GETTABLEKS                       R4 R0 K1 ["getInfo"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R3 R3 K4 ["extra"]
       22 LOADNIL                          R4
       23 JUMPIFEQKNIL                     R3 ; [+15]
       25 GETTABLEKS                       R7 R3 K5 ["type"]
       27 JUMPIFEQKS                       R7 K6 ["number"] ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       33 LOADK                            R7 K7 ["Extra is not NumberPropertyInfoExtra"]
       34 GETIMPORT                        R5 K9 [assert]
       36 CALL                             R5 2 0
       37 GETTABLEKS                       R4 R3 K10 ["unit"]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K11 ["useCallback"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R7 0 1
       46 GETTABLEKS                       R8 R0 K12 ["setPart"]
       48 SETLIST                          R7 R8 1 [1]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K11 ["useCallback"]
       54 NEWCLOSURE                       R7 P1
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R8 0 1
       58 GETTABLEKS                       R9 R0 K13 ["beginEditingAsync"]
       60 SETLIST                          R8 R9 1 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K11 ["useCallback"]
       66 NEWCLOSURE                       R8 P2
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R9 0 1
       70 GETTABLEKS                       R10 R0 K14 ["finishEditing"]
       72 SETLIST                          R9 R10 1 [1]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K15 ["createElement"]
       78 GETUPVAL                         R9 2
       79 DUPTABLE                         R10 K20 [{"propertyPart", "readonly", "unit", "onEditStart", "onChange", "onEditFinish"}]
       80 DUPCLOSURE                       R13 K21 [PROTO_3]
       81 NAMECALL                         R11 R1 K22 ["map"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K16 ["propertyPart"]
       86 SETTABLEKS                       R2 R10 K3 ["readonly"]
       88 SETTABLEKS                       R4 R10 K10 ["unit"]
       90 SETTABLEKS                       R6 R10 K17 ["onEditStart"]
       92 SETTABLEKS                       R5 R10 K18 ["onChange"]
       94 SETTABLEKS                       R7 R10 K19 ["onEditFinish"]
       96 CALL                             R8 2 -1
       97 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyEditorTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["SignalsReact"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["Util"]
       35 GETTABLEKS                       R7 R7 K13 ["Number"]
       37 GETTABLEKS                       R7 R7 K14 ["SingleNumberInput"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K15 [PROTO_4]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 GETTABLEKS                       R8 R4 K16 ["memo"]
       46 MOVE                             R9 R7
       47 CALL                             R8 1 -1
       48 RETURN                           R8 -1

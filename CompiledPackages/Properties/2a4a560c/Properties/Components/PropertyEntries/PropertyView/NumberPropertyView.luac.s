PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["parts"]
        2 GETTABLEKS                       R1 R1 K1 ["value"]
        4 RETURN                           R1 1

PROTO_1:
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
       22 LOADB                            R5 0
       23 JUMPIFEQKNIL                     R3 ; [+7]
       25 GETTABLEKS                       R6 R3 K5 ["type"]
       27 JUMPIFEQKS                       R6 K6 ["number"] ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 LOADK                            R6 K7 ["Extra is not NumberPropertyInfoExtra %*"]
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETTABLEKS                       R8 R3 K5 ["type"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R5 R6 ; [+3]
       42 GETIMPORT                        R4 K10 [assert]
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R5 R0 K11 ["editProperty"]
       48 CALL                             R4 1 1
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K12 ["createElement"]
       52 GETUPVAL                         R6 3
       53 DUPTABLE                         R7 K17 [{"propertyPart", "readonly", "slider", "unit", "onEdit"}]
       54 DUPCLOSURE                       R10 K18 [PROTO_0]
       55 NAMECALL                         R8 R1 K19 ["map"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K13 ["propertyPart"]
       60 SETTABLEKS                       R2 R7 K3 ["readonly"]
       62 DUPTABLE                         R8 K21 [{"bounds"}]
       63 GETTABLEKS                       R10 R3 K22 ["min"]
       65 JUMPIFNOT                        R10 ; [+13]
       66 GETTABLEKS                       R10 R3 K23 ["max"]
       68 JUMPIFNOT                        R10 ; [+10]
       69 DUPTABLE                         R9 K24 [{"min", "max"}]
       70 GETTABLEKS                       R10 R3 K22 ["min"]
       72 SETTABLEKS                       R10 R9 K22 ["min"]
       74 GETTABLEKS                       R10 R3 K23 ["max"]
       76 SETTABLEKS                       R10 R9 K23 ["max"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETTABLEKS                       R9 R8 K20 ["bounds"]
       82 SETTABLEKS                       R8 R7 K14 ["slider"]
       84 MOVE                             R8 R3
       85 JUMPIFNOT                        R8 ; [+2]
       86 GETTABLEKS                       R8 R3 K15 ["unit"]
       88 SETTABLEKS                       R8 R7 K15 ["unit"]
       90 SETTABLEKS                       R4 R7 K16 ["onEdit"]
       92 CALL                             R5 2 -1
       93 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["SignalsReact"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["Number"]
       32 GETTABLEKS                       R6 R6 K13 ["SingleNumberInput"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R7 R7 K15 ["useEditValue"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K16 [PROTO_1]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 GETTABLEKS                       R8 R3 K17 ["memo"]
       49 MOVE                             R9 R7
       50 CALL                             R8 1 -1
       51 RETURN                           R8 -1

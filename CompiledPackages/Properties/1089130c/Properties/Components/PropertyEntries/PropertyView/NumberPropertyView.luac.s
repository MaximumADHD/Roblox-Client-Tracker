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
       40 GETTABLEKS                       R6 R0 K11 ["editProperty"]
       42 CALL                             R5 1 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K12 ["createElement"]
       46 GETUPVAL                         R7 3
       47 DUPTABLE                         R8 K15 [{"propertyPart", "readonly", "unit", "onEdit"}]
       48 DUPCLOSURE                       R11 K16 [PROTO_0]
       49 NAMECALL                         R9 R1 K17 ["map"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K13 ["propertyPart"]
       54 SETTABLEKS                       R2 R8 K3 ["readonly"]
       56 SETTABLEKS                       R4 R8 K10 ["unit"]
       58 SETTABLEKS                       R5 R8 K14 ["onEdit"]
       60 CALL                             R6 2 -1
       61 RETURN                           R6 -1

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
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       44 GETTABLEKS                       R8 R8 K16 ["useEditValue"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K17 [PROTO_1]
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 GETTABLEKS                       R9 R4 K18 ["memo"]
       54 MOVE                             R10 R8
       55 CALL                             R9 1 -1
       56 RETURN                           R9 -1

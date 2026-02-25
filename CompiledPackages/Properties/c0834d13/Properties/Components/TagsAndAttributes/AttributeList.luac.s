PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{"LayoutOrder", "session", "attributeRecord", "labelWidthBinding"}]
        3 GETUPVAL                         R4 2
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K0 ["LayoutOrder"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["session"]
       10 SETTABLEKS                       R4 R3 K1 ["session"]
       12 SETTABLEKS                       R0 R3 K2 ["attributeRecord"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K3 ["labelWidthBinding"]
       17 SETTABLEKS                       R4 R3 K3 ["labelWidthBinding"]
       19 CALL                             R1 2 1
       20 GETTABLEKS                       R3 R0 K5 ["id"]
       22 GETTABLEKS                       R2 R3 K6 ["name"]
       24 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Fragment"]
        8 NEWTABLE                         R4 0 0
       10 GETUPVAL                         R7 3
       11 GETTABLEKS                       R6 R7 K2 ["Dictionary"]
       13 GETTABLEKS                       R5 R6 K3 ["map"]
       15 GETTABLEKS                       R6 R0 K4 ["attributes"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CALL                             R5 2 -1
       23 CALL                             R2 -1 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["TagsAndAttributes"]
       15 GETTABLEKS                       R3 R4 K9 ["AttributeRow"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Cryo"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["RpcTypes"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R5 K15 ["createElement"]
       45 DUPCLOSURE                       R9 K16 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 RETURN                           R9 1

PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"LayoutOrder", "tag"}]
        3 GETUPVAL                         R4 2
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K0 ["LayoutOrder"]
        7 SETTABLEKS                       R0 R3 K1 ["tag"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R3 R0 K3 ["id"]
       12 GETTABLEKS                       R2 R3 K4 ["name"]
       14 RETURN                           R1 2

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
       15 GETTABLEKS                       R6 R0 K4 ["tags"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 CALL                             R5 2 -1
       22 CALL                             R2 -1 -1
       23 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R9 R0 K11 ["Components"]
       33 GETTABLEKS                       R8 R9 K12 ["TagsAndAttributes"]
       35 GETTABLEKS                       R7 R8 K13 ["TagRow"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R4 K14 ["createElement"]
       40 DUPCLOSURE                       R8 K15 [PROTO_1]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 RETURN                           R8 1

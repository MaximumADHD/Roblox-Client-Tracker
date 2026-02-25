PROTO_0:
        0 GETUPVAL                         R4 0
        1 LOADB                            R5 1
        2 CALL                             R4 1 -1
        3 NAMECALL                         R2 R0 K0 ["dispatch"]
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R1
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R0 K0 ["dispatch"]
       11 CALL                             R2 -1 0
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K1 ["Screens"]
       16 GETTABLEKS                       R5 R6 K2 ["Error"]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R0 K0 ["dispatch"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Actions"]
       20 GETTABLEKS                       R3 R4 K9 ["SetEnabled"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K8 ["Actions"]
       29 GETTABLEKS                       R4 R5 K10 ["SetErrorText"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K8 ["Actions"]
       38 GETTABLEKS                       R5 R6 K11 ["SetScreen"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K12 [PROTO_0]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 RETURN                           R5 1

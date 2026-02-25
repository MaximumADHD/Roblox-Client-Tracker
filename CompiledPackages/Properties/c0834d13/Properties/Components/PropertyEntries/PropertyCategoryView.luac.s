PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"categoryName", "layoutOrder"}]
        5 GETTABLEKS                       R5 R0 K4 ["category"]
        7 GETTABLEKS                       R4 R5 K1 ["categoryName"]
        9 SETTABLEKS                       R4 R3 K1 ["categoryName"]
       11 GETTABLEKS                       R4 R0 K2 ["layoutOrder"]
       13 SETTABLEKS                       R4 R3 K2 ["layoutOrder"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["createElement"]
       18 GETUPVAL                         R5 2
       19 DUPTABLE                         R6 K8 [{"labelWidthBinding", "session", "propertiesInOrder"}]
       20 GETTABLEKS                       R7 R0 K5 ["labelWidthBinding"]
       22 SETTABLEKS                       R7 R6 K5 ["labelWidthBinding"]
       24 GETTABLEKS                       R7 R0 K6 ["session"]
       26 SETTABLEKS                       R7 R6 K6 ["session"]
       28 GETTABLEKS                       R8 R0 K4 ["category"]
       30 GETTABLEKS                       R7 R8 K7 ["propertiesInOrder"]
       32 SETTABLEKS                       R7 R6 K7 ["propertiesInOrder"]
       34 CALL                             R4 2 -1
       35 CALL                             R1 -1 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["CategoryView"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K9 ["PropertyEntries"]
       22 GETTABLEKS                       R3 R4 K10 ["PropertyList"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["RpcTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K7 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["categorizeProperties"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 RETURN                           R6 1

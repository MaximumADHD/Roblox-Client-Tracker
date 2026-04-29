PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["No Cursor Provider found"]
        2 NAMECALL                         R1 R1 K1 ["warning"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["No Cursor Provider found"]
        2 NAMECALL                         R1 R1 K1 ["warning"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Logger"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["CursorType"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K12 ["Components"]
       32 GETTABLEKS                       R6 R7 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R3 K14 ["createContext"]
       37 DUPTABLE                         R7 K18 [{"refCache", "setMountedCursors", "getCursor"}]
       38 NEWTABLE                         R8 0 0
       40 SETTABLEKS                       R8 R7 K15 ["refCache"]
       42 DUPCLOSURE                       R8 K19 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R8 R7 K16 ["setMountedCursors"]
       46 DUPCLOSURE                       R8 K20 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R8 R7 K17 ["getCursor"]
       50 CALL                             R6 1 1
       51 RETURN                           R6 1

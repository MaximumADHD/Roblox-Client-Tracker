PROTO_0:
        0 DUPTABLE                         R1 K1 [{"assetAnalytics"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["new"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K0 ["assetAnalytics"]
        9 GETUPVAL                         R4 1
       10 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K4 [setmetatable]
       15 CALL                             R2 2 0
       16 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["assetAnalytics"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextItem"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R5 K10 ["Util"]
       28 GETTABLEKS                       R5 R5 K11 ["Analytics"]
       30 GETTABLEKS                       R5 R5 K12 ["AssetAnalytics"]
       32 CALL                             R4 1 1
       33 LOADK                            R7 K12 ["AssetAnalytics"]
       34 NAMECALL                         R5 R3 K13 ["extend"]
       36 CALL                             R5 2 1
       37 DUPCLOSURE                       R6 K14 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R6 R5 K15 ["new"]
       42 DUPCLOSURE                       R6 K16 [PROTO_1]
       43 SETTABLEKS                       R6 R5 K17 ["get"]
       45 RETURN                           R5 1

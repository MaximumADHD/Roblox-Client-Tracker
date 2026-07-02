PROTO_0:
        0 DUPTABLE                         R1 K1 [{"pluginId"}]
        1 SETTABLEKS                       R0 R1 K0 ["pluginId"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Types"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["makeActionCreator"]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K11 ["Name"]
       31 DUPCLOSURE                       R5 K12 [PROTO_0]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

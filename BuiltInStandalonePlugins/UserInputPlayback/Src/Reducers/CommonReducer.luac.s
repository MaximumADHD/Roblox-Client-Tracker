PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"pluginState"}]
        3 GETTABLEKS                       R5 R1 K2 ["state"]
        5 SETTABLEKS                       R5 R4 K0 ["pluginState"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K8 ["Dictionary"]
       25 GETTABLEKS                       R3 R4 K9 ["join"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R6 K11 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R8 R0 K10 ["Src"]
       38 GETTABLEKS                       R7 R8 K12 ["Util"]
       40 GETTABLEKS                       R6 R7 K13 ["Enums"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R10 R0 K10 ["Src"]
       47 GETTABLEKS                       R9 R10 K14 ["Actions"]
       49 GETTABLEKS                       R8 R9 K15 ["Common"]
       51 GETTABLEKS                       R7 R8 K16 ["SetPluginState"]
       53 CALL                             R6 1 1
       54 DUPTABLE                         R7 K18 [{"pluginState"}]
       55 GETTABLEKS                       R9 R5 K19 ["PluginState"]
       57 GETTABLEKS                       R8 R9 K20 ["Default"]
       59 SETTABLEKS                       R8 R7 K17 ["pluginState"]
       61 GETTABLEKS                       R8 R1 K21 ["createReducer"]
       63 MOVE                             R9 R7
       64 DUPTABLE                         R10 K22 [{"SetPluginState"}]
       65 DUPCLOSURE                       R11 K23 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R11 R10 K16 ["SetPluginState"]
       69 CALL                             R8 2 -1
       70 RETURN                           R8 -1

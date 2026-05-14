PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 ["Recent"]
        4 CALL                             R1 1 2
        5 DUPTABLE                         R3 K4 [{"sort", "setSort"}]
        6 SETTABLEKS                       R1 R3 K2 ["sort"]
        8 SETTABLEKS                       R2 R3 K3 ["setSort"]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K5 ["Provider"]
       14 DUPTABLE                         R6 K7 [{"value"}]
       15 SETTABLEKS                       R3 R6 K6 ["value"]
       17 GETTABLEKS                       R7 R0 K8 ["children"]
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R6 R6 K11 ["createUnimplemented"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R3 K12 ["createElement"]
       34 DUPTABLE                         R7 K15 [{"sort", "setSort"}]
       35 LOADK                            R8 K16 ["Recent"]
       36 SETTABLEKS                       R8 R7 K13 ["sort"]
       38 MOVE                             R8 R5
       39 LOADK                            R9 K14 ["setSort"]
       40 CALL                             R8 1 1
       41 SETTABLEKS                       R8 R7 K14 ["setSort"]
       43 GETTABLEKS                       R8 R3 K17 ["createContext"]
       45 MOVE                             R9 R7
       46 CALL                             R8 1 1
       47 DUPCLOSURE                       R9 K18 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R8
       51 DUPTABLE                         R10 K21 [{"Context", "Provider"}]
       52 SETTABLEKS                       R8 R10 K19 ["Context"]
       54 SETTABLEKS                       R9 R10 K20 ["Provider"]
       56 RETURN                           R10 1

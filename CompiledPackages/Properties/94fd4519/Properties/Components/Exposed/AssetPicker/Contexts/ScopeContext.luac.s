PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 2
       11 DUPTABLE                         R5 K5 [{"currentScopeId", "scopeMap", "setCurrentScopeId", "setScopeMap"}]
       12 SETTABLEKS                       R1 R5 K1 ["currentScopeId"]
       14 SETTABLEKS                       R3 R5 K2 ["scopeMap"]
       16 SETTABLEKS                       R2 R5 K3 ["setCurrentScopeId"]
       18 SETTABLEKS                       R4 R5 K4 ["setScopeMap"]
       20 GETUPVAL                         R6 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K6 ["Provider"]
       24 DUPTABLE                         R8 K8 [{"value"}]
       25 SETTABLEKS                       R5 R8 K7 ["value"]
       27 GETTABLEKS                       R9 R0 K9 ["children"]
       29 CALL                             R6 3 -1
       30 RETURN                           R6 -1

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
       25 GETTABLEKS                       R5 R3 K10 ["createElement"]
       27 DUPTABLE                         R6 K15 [{"currentScopeId", "scopeMap", "setCurrentScopeId", "setScopeMap"}]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K11 ["currentScopeId"]
       31 NEWTABLE                         R7 0 0
       33 SETTABLEKS                       R7 R6 K12 ["scopeMap"]
       35 DUPCLOSURE                       R7 K16 [PROTO_0]
       36 SETTABLEKS                       R7 R6 K13 ["setCurrentScopeId"]
       38 DUPCLOSURE                       R7 K17 [PROTO_1]
       39 SETTABLEKS                       R7 R6 K14 ["setScopeMap"]
       41 GETTABLEKS                       R7 R3 K18 ["createContext"]
       43 MOVE                             R8 R6
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K19 [PROTO_2]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R7
       49 DUPTABLE                         R9 K22 [{"Context", "Provider"}]
       50 SETTABLEKS                       R7 R9 K20 ["Context"]
       52 SETTABLEKS                       R8 R9 K21 ["Provider"]
       54 RETURN                           R9 1

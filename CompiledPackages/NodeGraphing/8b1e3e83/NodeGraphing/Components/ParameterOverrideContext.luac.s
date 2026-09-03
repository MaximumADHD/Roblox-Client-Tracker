MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K16 [{["parameterOverrides"], ["numOverrides"] = 0, ["removeParameterOverride"], ["setParameterOverrideValue"], ["incrementParameterOverrideCount"], ["decrementParameterOverrideCount"]}]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K9 ["parameterOverrides"]
       26 GETTABLEKS                       R4 R2 K17 ["createUnimplemented"]
       28 LOADK                            R5 K12 ["removeParameterOverride"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K12 ["removeParameterOverride"]
       32 GETTABLEKS                       R4 R2 K17 ["createUnimplemented"]
       34 LOADK                            R5 K13 ["setParameterOverrideValue"]
       35 CALL                             R4 1 1
       36 SETTABLEKS                       R4 R3 K13 ["setParameterOverrideValue"]
       38 GETTABLEKS                       R4 R2 K17 ["createUnimplemented"]
       40 LOADK                            R5 K14 ["incrementParameterOverrideCount"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K14 ["incrementParameterOverrideCount"]
       44 GETTABLEKS                       R4 R2 K17 ["createUnimplemented"]
       46 LOADK                            R5 K15 ["decrementParameterOverrideCount"]
       47 CALL                             R4 1 1
       48 SETTABLEKS                       R4 R3 K15 ["decrementParameterOverrideCount"]
       50 GETTABLEKS                       R4 R1 K18 ["createContext"]
       52 MOVE                             R5 R3
       53 CALL                             R4 1 1
       54 DUPTABLE                         R5 K20 [{"Context"}]
       55 SETTABLEKS                       R4 R5 K19 ["Context"]
       57 RETURN                           R5 1

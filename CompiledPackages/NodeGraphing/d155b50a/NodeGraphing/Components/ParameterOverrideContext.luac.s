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
       21 DUPTABLE                         R3 K15 [{"parameterOverrides", "numOverrides", "removeParameterOverride", "setParameterOverrideValue", "incrementParameterOverrideCount", "decrementParameterOverrideCount"}]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K9 ["parameterOverrides"]
       26 LOADN                            R4 0
       27 SETTABLEKS                       R4 R3 K10 ["numOverrides"]
       29 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       31 LOADK                            R5 K11 ["removeParameterOverride"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K11 ["removeParameterOverride"]
       35 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       37 LOADK                            R5 K12 ["setParameterOverrideValue"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R3 K12 ["setParameterOverrideValue"]
       41 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       43 LOADK                            R5 K13 ["incrementParameterOverrideCount"]
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R4 R3 K13 ["incrementParameterOverrideCount"]
       47 GETTABLEKS                       R4 R2 K16 ["createUnimplemented"]
       49 LOADK                            R5 K14 ["decrementParameterOverrideCount"]
       50 CALL                             R4 1 1
       51 SETTABLEKS                       R4 R3 K14 ["decrementParameterOverrideCount"]
       53 GETTABLEKS                       R4 R1 K17 ["createContext"]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 1
       57 DUPTABLE                         R5 K19 [{"Context"}]
       58 SETTABLEKS                       R4 R5 K18 ["Context"]
       60 RETURN                           R5 1

PROTO_0:
        0 DUPTABLE                         R2 K3 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
        1 GETTABLEKS                       R3 R1 K0 ["assetIds"]
        3 SETTABLEKS                       R3 R2 K0 ["assetIds"]
        5 GETTABLEKS                       R3 R1 K1 ["positionOverride"]
        7 SETTABLEKS                       R3 R2 K1 ["positionOverride"]
        9 GETTABLEKS                       R3 R1 K2 ["scriptWarningOverride"]
       11 SETTABLEKS                       R3 R2 K2 ["scriptWarningOverride"]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Cryo"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Rodux"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R4 K10 ["Actions"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["SetTutorialLimits"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R6 R3 K12 ["createReducer"]
       30 DUPTABLE                         R7 K18 [{["assetIds"] = , ["positionOverride"] = , ["scriptWarningOverride"] = False}]
       31 NEWTABLE                         R8 1 0
       33 GETTABLEKS                       R9 R5 K19 ["name"]
       35 DUPCLOSURE                       R10 K20 [PROTO_0]
       36 SETTABLE                         R10 R8 R9
       37 CALL                             R6 2 -1
       38 RETURN                           R6 -1

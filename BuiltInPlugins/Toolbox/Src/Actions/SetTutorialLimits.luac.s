PROTO_0:
        0 DUPTABLE                         R3 K3 [{"assetIds", "positionOverride", "scriptWarningOverride"}]
        1 SETTABLEKS                       R0 R3 K0 ["assetIds"]
        3 SETTABLEKS                       R1 R3 K1 ["positionOverride"]
        5 SETTABLEKS                       R2 R3 K2 ["scriptWarningOverride"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R3 K6 [require]
       11 GETTABLEKS                       R4 R1 K7 ["Framework"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K8 ["Util"]
       16 GETTABLEKS                       R3 R2 K9 ["Action"]
       18 MOVE                             R4 R3
       19 GETIMPORT                        R6 K1 [script]
       21 GETTABLEKS                       R5 R6 K10 ["Name"]
       23 DUPCLOSURE                       R6 K11 [PROTO_0]
       24 CALL                             R4 2 -1
       25 RETURN                           R4 -1

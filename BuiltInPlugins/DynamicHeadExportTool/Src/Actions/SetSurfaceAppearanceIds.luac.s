PROTO_0:
        0 DUPTABLE                         R4 K4 [{"colorMap", "metalnessMap", "normalMap", "roughnessMap"}]
        1 SETTABLEKS                       R0 R4 K0 ["colorMap"]
        3 SETTABLEKS                       R1 R4 K1 ["metalnessMap"]
        5 SETTABLEKS                       R2 R4 K2 ["normalMap"]
        7 SETTABLEKS                       R3 R4 K3 ["roughnessMap"]
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Packages"]
       11 GETTABLEKS                       R4 R5 K7 ["Framework"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K8 ["Util"]
       16 GETTABLEKS                       R1 R2 K9 ["Action"]
       18 MOVE                             R2 R1
       19 GETIMPORT                        R4 K1 [script]
       21 GETTABLEKS                       R3 R4 K10 ["Name"]
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

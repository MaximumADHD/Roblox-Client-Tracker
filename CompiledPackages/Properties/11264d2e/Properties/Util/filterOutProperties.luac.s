PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["owner"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R3 R0 K1 ["name"]
        7 GETTABLE                         R2 R1 R3
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K12 [{"BaseScript", "Instance", "Script", "GuiObject", "MeshPart"}]
       13 DUPTABLE                         R3 K14 [{"Disabled"}]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K13 ["Disabled"]
       17 SETTABLEKS                       R3 R2 K7 ["BaseScript"]
       19 DUPTABLE                         R3 K19 [{"RobloxLocked", "Sandboxed", "SecurityCapabilities", "SourceAssetId"}]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K15 ["RobloxLocked"]
       23 LOADB                            R4 1
       24 SETTABLEKS                       R4 R3 K16 ["Sandboxed"]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K17 ["SecurityCapabilities"]
       29 LOADB                            R4 1
       30 SETTABLEKS                       R4 R3 K18 ["SourceAssetId"]
       32 SETTABLEKS                       R3 R2 K8 ["Instance"]
       34 DUPTABLE                         R3 K21 [{"Source"}]
       35 LOADB                            R4 1
       36 SETTABLEKS                       R4 R3 K20 ["Source"]
       38 SETTABLEKS                       R3 R2 K9 ["Script"]
       40 DUPTABLE                         R3 K24 [{"BackgroundColor", "BorderColor"}]
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K22 ["BackgroundColor"]
       44 LOADB                            R4 1
       45 SETTABLEKS                       R4 R3 K23 ["BorderColor"]
       47 SETTABLEKS                       R3 R2 K10 ["GuiObject"]
       49 DUPTABLE                         R3 K26 [{"MeshId"}]
       50 LOADB                            R4 1
       51 SETTABLEKS                       R4 R3 K25 ["MeshId"]
       53 SETTABLEKS                       R3 R2 K11 ["MeshPart"]
       55 DUPCLOSURE                       R3 K27 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 RETURN                           R3 1

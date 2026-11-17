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
       13 DUPTABLE                         R3 K15 [{["Disabled"] = True}]
       14 SETTABLEKS                       R3 R2 K7 ["BaseScript"]
       16 DUPTABLE                         R3 K20 [{["RobloxLocked"] = True, ["Sandboxed"] = True, ["SecurityCapabilities"] = True, ["SourceAssetId"] = True}]
       17 SETTABLEKS                       R3 R2 K8 ["Instance"]
       19 DUPTABLE                         R3 K22 [{["Source"] = True}]
       20 SETTABLEKS                       R3 R2 K9 ["Script"]
       22 DUPTABLE                         R3 K25 [{["BackgroundColor"] = True, ["BorderColor"] = True}]
       23 SETTABLEKS                       R3 R2 K10 ["GuiObject"]
       25 DUPTABLE                         R3 K27 [{["MeshId"] = True}]
       26 SETTABLEKS                       R3 R2 K11 ["MeshPart"]
       28 DUPCLOSURE                       R3 K28 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1

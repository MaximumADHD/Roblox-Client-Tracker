PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ToolboxPassThroughAssetType"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+13]
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["ToolboxEnableCreatorInventory"]
       10 NAMECALL                         R0 R0 K5 ["GetFastFlag"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K6 ["Flags"]
       17 GETTABLEKS                       R0 R0 K7 ["getFFlagCreatorInventorySearchSupportsSourcesFilter"]
       19 CALL                             R0 0 1
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["ToolboxEnableCreatorInventory"]
       17 LOADB                            R5 0
       18 NAMECALL                         R2 R2 K11 ["DefineFastFlag"]
       20 CALL                             R2 3 0
       21 DUPCLOSURE                       R2 K12 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 RETURN                           R2 1

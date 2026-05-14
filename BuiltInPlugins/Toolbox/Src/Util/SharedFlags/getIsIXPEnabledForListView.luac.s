PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["ToolboxListViewEnabledForAll"]
        3 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 -1
        9 RETURN                           R1 -1
       10 MOVE                             R1 R0
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETUPVAL                         R1 1
       16 MOVE                             R2 R0
       17 LOADK                            R3 K4 ["MarketplaceModelsListView"]
       18 LOADK                            R4 K5 ["MarketplaceModelsListViewEnabled"]
       19 CALL                             R1 3 1
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["getIsIXPVariableEnabled"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SharedFlags"]
       20 GETTABLEKS                       R4 R4 K10 ["getFFlagToolboxEnableAssetRows"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K12 [game]
       25 LOADK                            R6 K13 ["ToolboxListViewEnabledForAll"]
       26 LOADB                            R7 0
       27 NAMECALL                         R4 R4 K14 ["DefineFastFlag"]
       29 CALL                             R4 3 0
       30 DUPCLOSURE                       R4 K15 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1

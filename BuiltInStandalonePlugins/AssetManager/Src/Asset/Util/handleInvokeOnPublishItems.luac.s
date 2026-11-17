PROTO_0:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 LOADK                            R6 K1 ["AssetAccessController"]
        6 NAMECALL                         R4 R0 K2 ["GetPluginComponent"]
        8 CALL                             R4 2 1
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R3 3 1
       12 GETIMPORT                        R5 K4 [next]
       14 MOVE                             R6 R3
       15 CALL                             R5 1 1
       16 JUMPIFEQKNIL                     R5 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 LOADK                            R7 K5 ["ShowToast"]
       21 DUPTABLE                         R8 K9 [{["Key"] = "Toast", ["SubKey"]}]
       22 JUMPIFNOT                        R4 ; [+2]
       23 LOADK                            R9 K10 ["PublishSuccess"]
       24 JUMP                             ; [+1]
       25 LOADK                            R9 K11 ["PublishFailed"]
       26 SETTABLEKS                       R9 R8 K8 ["SubKey"]
       28 NAMECALL                         R5 R0 K12 ["Invoke"]
       30 CALL                             R5 3 0
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Asset"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["publishDraftAssets"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1

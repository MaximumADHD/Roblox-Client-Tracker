PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagLoadInAssetDM"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADK                            R0 K1 ["Asset"]
        6 RETURN                           R0 1
        7 LOADK                            R0 K2 ["Standalone"]
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K12 [{"Asset", "Standalone", "get"}]
       17 LOADK                            R3 K9 ["Asset"]
       18 SETTABLEKS                       R3 R2 K9 ["Asset"]
       20 LOADK                            R3 K10 ["Standalone"]
       21 SETTABLEKS                       R3 R2 K10 ["Standalone"]
       23 DUPCLOSURE                       R3 K13 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K11 ["get"]
       27 RETURN                           R2 1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADK                            R0 K0 ["Asset"]
        3 RETURN                           R0 1
        4 LOADK                            R0 K1 ["Standalone"]
        5 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagDebugLoadAudioPlayerEditorInAssetDM"]
       18 CALL                             R2 0 1
       19 DUPTABLE                         R3 K13 [{"Asset", "Standalone", "get"}]
       20 LOADK                            R4 K10 ["Asset"]
       21 SETTABLEKS                       R4 R3 K10 ["Asset"]
       23 LOADK                            R4 K11 ["Standalone"]
       24 SETTABLEKS                       R4 R3 K11 ["Standalone"]
       26 DUPCLOSURE                       R4 K14 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R3 K12 ["get"]
       30 RETURN                           R3 1

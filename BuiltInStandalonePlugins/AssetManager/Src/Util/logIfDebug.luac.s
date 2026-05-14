PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R1 ; [+12]
        5 JUMPIFNOTEQKS                    R1 K0 ["WARN"] ; [+11]
        7 GETIMPORT                        R2 K2 [warn]
        9 LOADK                            R4 K3 ["AssetManager: %*"]
       10 MOVE                             R6 R0
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R2 K6 [print]
       19 LOADK                            R4 K3 ["AssetManager: %*"]
       20 MOVE                             R6 R0
       21 NAMECALL                         R4 R4 K4 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagDebugAmrOutput"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1

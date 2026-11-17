PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 JUMPIFNOT                        R1 ; [+11]
        5 JUMPIFNOTEQKS                    R1 K0 ["WARN"] ; [+10]
        7 GETIMPORT                        R2 K2 [warn]
        9 LOADK                            R3 K3 ["AssetManager: %*"]
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 2 1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R2 K6 [print]
       18 LOADK                            R3 K3 ["AssetManager: %*"]
       19 MOVE                             R5 R0
       20 NAMECALL                         R3 R3 K4 ["format"]
       22 CALL                             R3 2 1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

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

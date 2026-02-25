PROTO_0:
        0 MOVE                             R7 R1
        1 JUMPIFNOTEQKN                    R3 K0 [1] ; [+8]
        3 LOADK                            R9 K1 ["%*_Singular"]
        4 MOVE                             R11 R2
        5 NAMECALL                         R9 R9 K2 ["format"]
        7 CALL                             R9 2 1
        8 MOVE                             R8 R9
        9 JUMP                             ; [+6]
       10 LOADK                            R9 K3 ["%*_Plural"]
       11 MOVE                             R11 R2
       12 NAMECALL                         R9 R9 K2 ["format"]
       14 CALL                             R9 2 1
       15 MOVE                             R8 R9
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K4 ["join"]
       19 DUPTABLE                         R10 K6 [{"amount"}]
       20 JUMPIFNOTEQKN                    R3 K0 [1] ; [+3]
       22 LOADNIL                          R11
       23 JUMP                             ; [+1]
       24 MOVE                             R11 R3
       25 SETTABLEKS                       R11 R10 K5 ["amount"]
       27 MOVE                             R11 R4
       28 CALL                             R9 2 -1
       29 NAMECALL                         R5 R0 K7 ["getText"]
       31 CALL                             R5 -1 -1
       32 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1

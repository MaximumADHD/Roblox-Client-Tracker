PROTO_0:
        0 MOVE                             R7 R1
        1 JUMPIFNOTEQKN                    R3 K0 [1] ; [+7]
        3 LOADK                            R8 K1 ["%*_Singular"]
        4 MOVE                             R10 R2
        5 NAMECALL                         R8 R8 K2 ["format"]
        7 CALL                             R8 2 1
        8 JUMP                             ; [+5]
        9 LOADK                            R8 K3 ["%*_Plural"]
       10 MOVE                             R10 R2
       11 NAMECALL                         R8 R8 K2 ["format"]
       13 CALL                             R8 2 1
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K4 ["join"]
       17 DUPTABLE                         R10 K6 [{"amount"}]
       18 JUMPIFNOTEQKN                    R3 K0 [1] ; [+3]
       20 LOADNIL                          R11
       21 JUMP                             ; [+1]
       22 MOVE                             R11 R3
       23 SETTABLEKS                       R11 R10 K5 ["amount"]
       25 MOVE                             R11 R4
       26 CALL                             R9 2 -1
       27 NAMECALL                         R5 R0 K7 ["getText"]
       29 CALL                             R5 -1 -1
       30 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1

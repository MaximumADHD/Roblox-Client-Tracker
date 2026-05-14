PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["refreshPluginState"]
        4 NAMECALL                         R0 R0 K1 ["Invoke"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RefreshPluginState"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["InvokeKeys"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K2 ["AvatarSettings"]
       19 NAMECALL                         R2 R2 K11 ["GetService"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K12 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1

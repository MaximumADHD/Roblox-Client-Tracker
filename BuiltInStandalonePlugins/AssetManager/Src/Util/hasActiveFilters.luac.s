PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["keys"]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 LENGTH                           R2 R3
        7 LOADN                            R3 1
        8 JUMPIFLT                         R3 R2 ; [+7]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["AssetInfoField"]
       13 GETTABLEKS                       R2 R3 K2 ["Archived"]
       15 GETTABLE                         R1 R0 R2
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1

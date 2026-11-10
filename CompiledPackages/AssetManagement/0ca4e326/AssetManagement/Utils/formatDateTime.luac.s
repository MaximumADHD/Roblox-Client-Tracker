PROTO_0:
        0 JUMPIFNOT                        R0 ; [+6]
        1 LOADK                            R4 K0 ["lll"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R0 K1 ["FormatLocalTime"]
        5 CALL                             R2 3 1
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["PlaceholderText"]
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
